// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import { Pausable } from "openzeppelin-contracts/contracts/utils/Pausable.sol";
import { ReentrancyGuard } from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title YieldPool
/// @notice Funded yield custody and accounting layer for NST Lattice protocol value.
/// @dev Does not create, promise, or calculate yield. Claims are limited to funded reserves.
contract YieldPool is AccessControl, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // =============================================================
    // CONSTANTS
    // =============================================================

    address public constant NATIVE_ETH = address(0);

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant ASSET_MANAGER_ROLE = keccak256("ASSET_MANAGER_ROLE");
    bytes32 public constant GRANT_MANAGER_ROLE = keccak256("GRANT_MANAGER_ROLE");
    bytes32 public constant CLAIM_MANAGER_ROLE = keccak256("CLAIM_MANAGER_ROLE");
    bytes32 public constant RESCUE_MANAGER_ROLE = keccak256("RESCUE_MANAGER_ROLE");

    // =============================================================
    // TYPES
    // =============================================================

    struct Grant {
        uint256 grantId;
        address beneficiary;
        address asset;
        uint256 amount;
        uint64 createdAt;
        uint64 unlockAt;
        uint64 expiresAt;
        bool claimed;
        bool canceled;
        bytes32 purposeHash;
        bytes32 metadataHash;
    }

    struct AccountingSnapshot {
        uint256 custodyBalance;
        uint256 reserved;
        uint256 available;
        uint256 totalDepositedAmount;
        uint256 totalClaimedAmount;
    }

    // =============================================================
    // STORAGE
    // =============================================================

    uint256 public nextGrantId = 1;

    mapping(address asset => bool allowed) private _allowedAssets;

    mapping(address asset => uint256 amount) public totalDeposited;
    mapping(address asset => uint256 amount) public totalReserved;
    mapping(address asset => uint256 amount) public totalClaimed;

    mapping(uint256 grantId => Grant grant) private _grants;
    mapping(address beneficiary => uint256[] grantIds) private _beneficiaryGrantIds;

    // =============================================================
    // EVENTS
    // =============================================================

    event AssetAllowedSet(address indexed asset, bool allowed, address indexed actor);

    event Deposited(
        address indexed asset, address indexed from, uint256 amount, bytes32 indexed metadataHash
    );

    event GrantCreated(
        uint256 indexed grantId,
        address indexed beneficiary,
        address indexed asset,
        uint256 amount,
        uint64 unlockAt,
        uint64 expiresAt,
        bytes32 purposeHash,
        bytes32 metadataHash,
        address actor
    );

    event GrantClaimed(
        uint256 indexed grantId,
        address indexed beneficiary,
        address indexed asset,
        uint256 amount,
        address actor
    );

    event GrantCanceled(
        uint256 indexed grantId,
        address indexed asset,
        address indexed actor,
        uint256 amount,
        bytes32 reasonHash
    );

    event ETHRescued(address indexed to, uint256 amount, address indexed actor);
    event ERC20Rescued(
        address indexed asset, address indexed to, uint256 amount, address indexed actor
    );

    // =============================================================
    // ERRORS
    // =============================================================

    error ZeroAddress();
    error ZeroAmount();
    error InvalidAsset(address asset);
    error AssetNotAllowed(address asset);
    error UnknownGrant(uint256 grantId);
    error UnauthorizedClaimant(address caller, uint256 grantId);
    error GrantAlreadyClaimed(uint256 grantId);
    error GrantCanceledError(uint256 grantId);
    error GrantNotUnlocked(uint256 grantId, uint64 unlockAt);
    error GrantExpired(uint256 grantId, uint64 expiresAt);
    error InvalidTimeWindow();
    error InsufficientAvailableBalance(address asset, uint256 requested, uint256 available);
    error ReservedFundsProtected(address asset, uint256 requested, uint256 available);
    error ETHTransferFailed();
    error DirectCallRejected();

    // =============================================================
    // CONSTRUCTOR
    // =============================================================

    constructor(
        address defaultAdmin,
        address pauser,
        address assetManager,
        address grantManager,
        address claimManager,
        address rescueManager
    ) {
        if (defaultAdmin == address(0)) revert ZeroAddress();

        if (
            pauser == address(0) || assetManager == address(0) || grantManager == address(0)
                || claimManager == address(0) || rescueManager == address(0)
        ) {
            revert ZeroAddress();
        }

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(ASSET_MANAGER_ROLE, assetManager);
        _grantRole(GRANT_MANAGER_ROLE, grantManager);
        _grantRole(CLAIM_MANAGER_ROLE, claimManager);
        _grantRole(RESCUE_MANAGER_ROLE, rescueManager);
    }

    // =============================================================
    // RECEIVE
    // =============================================================

    receive() external payable {
        _depositETH(msg.sender, msg.value, bytes32(0));
    }

    fallback() external payable {
        revert DirectCallRejected();
    }

    // =============================================================
    // ADMIN
    // =============================================================

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function setAssetAllowed(
        address asset,
        bool allowed
    ) external onlyRole(ASSET_MANAGER_ROLE) {
        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
        if (allowed && asset.code.length == 0) revert InvalidAsset(asset);

        _allowedAssets[asset] = allowed;

        emit AssetAllowedSet(asset, allowed, msg.sender);
    }

    // =============================================================
    // DEPOSIT
    // =============================================================

    function depositETH(
        bytes32 metadataHash
    ) external payable whenNotPaused nonReentrant returns (uint256 amount) {
        amount = msg.value;

        _depositETH(msg.sender, amount, metadataHash);
    }

    function depositERC20(
        address asset,
        uint256 amount,
        bytes32 metadataHash
    ) external whenNotPaused nonReentrant returns (uint256 received) {
        _requireAllowedERC20(asset);
        if (amount == 0) revert ZeroAmount();

        IERC20 token = IERC20(asset);
        uint256 beforeBalance = token.balanceOf(address(this));

        token.safeTransferFrom(msg.sender, address(this), amount);

        received = token.balanceOf(address(this)) - beforeBalance;
        if (received == 0) revert ZeroAmount();

        totalDeposited[asset] += received;

        emit Deposited(asset, msg.sender, received, metadataHash);
    }

    // =============================================================
    // GRANTS
    // =============================================================

    function createGrant(
        address beneficiary,
        address asset,
        uint256 amount,
        uint64 unlockAt,
        uint64 expiresAt,
        bytes32 purposeHash,
        bytes32 metadataHash
    ) external onlyRole(GRANT_MANAGER_ROLE) whenNotPaused returns (uint256 grantId) {
        if (beneficiary == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();
        if (!isAssetAllowed(asset)) revert AssetNotAllowed(asset);

        if (expiresAt != 0 && expiresAt <= block.timestamp) revert InvalidTimeWindow();
        if (unlockAt != 0 && expiresAt != 0 && unlockAt >= expiresAt) revert InvalidTimeWindow();

        uint256 available = availableBalance(asset);
        if (amount > available) {
            revert InsufficientAvailableBalance(asset, amount, available);
        }

        grantId = nextGrantId;
        nextGrantId = grantId + 1;

        totalReserved[asset] += amount;

        _grants[grantId] = Grant({
            grantId: grantId,
            beneficiary: beneficiary,
            asset: asset,
            amount: amount,
            createdAt: uint64(block.timestamp),
            unlockAt: unlockAt,
            expiresAt: expiresAt,
            claimed: false,
            canceled: false,
            purposeHash: purposeHash,
            metadataHash: metadataHash
        });

        _beneficiaryGrantIds[beneficiary].push(grantId);

        emit GrantCreated(
            grantId,
            beneficiary,
            asset,
            amount,
            unlockAt,
            expiresAt,
            purposeHash,
            metadataHash,
            msg.sender
        );
    }

    function claim(
        uint256 grantId
    ) external whenNotPaused nonReentrant returns (uint256 amount) {
        Grant storage grant = _grants[grantId];

        _requireExistingGrant(grant, grantId);

        if (msg.sender != grant.beneficiary) {
            revert UnauthorizedClaimant(msg.sender, grantId);
        }

        amount = _claimGrant(grantId, grant);
    }

    function claimFor(
        uint256 grantId
    ) external onlyRole(CLAIM_MANAGER_ROLE) whenNotPaused nonReentrant returns (uint256 amount) {
        Grant storage grant = _grants[grantId];

        _requireExistingGrant(grant, grantId);

        amount = _claimGrant(grantId, grant);
    }

    function cancelGrant(
        uint256 grantId,
        bytes32 reasonHash
    ) external onlyRole(GRANT_MANAGER_ROLE) whenNotPaused returns (uint256 amount) {
        Grant storage grant = _grants[grantId];

        _requireExistingGrant(grant, grantId);
        _requireGrantOpen(grantId, grant);

        amount = grant.amount;

        grant.canceled = true;
        totalReserved[grant.asset] -= amount;

        emit GrantCanceled(grantId, grant.asset, msg.sender, amount, reasonHash);
    }

    // =============================================================
    // RESCUE
    // =============================================================

    function rescueETH(
        address to,
        uint256 amount
    ) external onlyRole(RESCUE_MANAGER_ROLE) whenPaused nonReentrant {
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();

        uint256 available = availableBalance(NATIVE_ETH);
        if (amount > available) {
            revert ReservedFundsProtected(NATIVE_ETH, amount, available);
        }

        _sendETH(to, amount);

        emit ETHRescued(to, amount, msg.sender);
    }

    function rescueERC20(
        address asset,
        address to,
        uint256 amount
    ) external onlyRole(RESCUE_MANAGER_ROLE) whenPaused nonReentrant {
        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
        if (asset.code.length == 0) revert InvalidAsset(asset);
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();

        uint256 available = availableBalance(asset);
        if (amount > available) {
            revert ReservedFundsProtected(asset, amount, available);
        }

        IERC20(asset).safeTransfer(to, amount);

        emit ERC20Rescued(asset, to, amount, msg.sender);
    }

    // =============================================================
    // VIEWS
    // =============================================================

    function isAssetAllowed(
        address asset
    ) public view returns (bool) {
        return asset == NATIVE_ETH || _allowedAssets[asset];
    }

    function getGrant(
        uint256 grantId
    ) external view returns (Grant memory grant) {
        grant = _grants[grantId];

        if (grant.grantId == 0) revert UnknownGrant(grantId);
    }

    function beneficiaryGrantIds(
        address beneficiary
    ) external view returns (uint256[] memory) {
        return _beneficiaryGrantIds[beneficiary];
    }

    function beneficiaryGrantCount(
        address beneficiary
    ) external view returns (uint256) {
        return _beneficiaryGrantIds[beneficiary].length;
    }

    function custodyBalance(
        address asset
    ) public view returns (uint256) {
        if (asset == NATIVE_ETH) {
            return address(this).balance;
        }

        if (asset.code.length == 0) revert InvalidAsset(asset);

        return IERC20(asset).balanceOf(address(this));
    }

    function availableBalance(
        address asset
    ) public view returns (uint256) {
        uint256 balance = custodyBalance(asset);
        uint256 reserved = totalReserved[asset];

        if (reserved >= balance) {
            return 0;
        }

        return balance - reserved;
    }

    function accountingSnapshot(
        address asset
    ) external view returns (AccountingSnapshot memory snapshot) {
        uint256 balance = custodyBalance(asset);
        uint256 reserved = totalReserved[asset];
        uint256 available = reserved >= balance ? 0 : balance - reserved;

        snapshot = AccountingSnapshot({
            custodyBalance: balance,
            reserved: reserved,
            available: available,
            totalDepositedAmount: totalDeposited[asset],
            totalClaimedAmount: totalClaimed[asset]
        });
    }

    function isClaimable(
        uint256 grantId
    ) external view returns (bool) {
        Grant memory grant = _grants[grantId];

        if (grant.grantId == 0) return false;
        if (grant.claimed || grant.canceled) return false;
        if (grant.unlockAt != 0 && block.timestamp < grant.unlockAt) return false;
        if (grant.expiresAt != 0 && block.timestamp >= grant.expiresAt) return false;

        return true;
    }

    // =============================================================
    // INTERNAL
    // =============================================================

    function _depositETH(
        address from,
        uint256 amount,
        bytes32 metadataHash
    ) private {
        _requireNotPaused();

        if (amount == 0) revert ZeroAmount();

        totalDeposited[NATIVE_ETH] += amount;

        emit Deposited(NATIVE_ETH, from, amount, metadataHash);
    }

    function _claimGrant(
        uint256 grantId,
        Grant storage grant
    ) private returns (uint256 amount) {
        _requireGrantOpen(grantId, grant);

        if (grant.unlockAt != 0 && block.timestamp < grant.unlockAt) {
            revert GrantNotUnlocked(grantId, grant.unlockAt);
        }

        if (grant.expiresAt != 0 && block.timestamp >= grant.expiresAt) {
            revert GrantExpired(grantId, grant.expiresAt);
        }

        amount = grant.amount;

        grant.claimed = true;
        totalReserved[grant.asset] -= amount;
        totalClaimed[grant.asset] += amount;

        _transferValue(grant.asset, grant.beneficiary, amount);

        emit GrantClaimed(grantId, grant.beneficiary, grant.asset, amount, msg.sender);
    }

    function _transferValue(
        address asset,
        address to,
        uint256 amount
    ) private {
        if (asset == NATIVE_ETH) {
            _sendETH(to, amount);
            return;
        }

        IERC20(asset).safeTransfer(to, amount);
    }

    function _sendETH(
        address to,
        uint256 amount
    ) private {
        (bool success,) = payable(to).call{ value: amount }("");
        if (!success) revert ETHTransferFailed();
    }

    function _requireAllowedERC20(
        address asset
    ) private view {
        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
        if (asset.code.length == 0) revert InvalidAsset(asset);
        if (!_allowedAssets[asset]) revert AssetNotAllowed(asset);
    }

    function _requireExistingGrant(
        Grant storage grant,
        uint256 grantId
    ) private view {
        if (grant.grantId == 0) revert UnknownGrant(grantId);
    }

    function _requireGrantOpen(
        uint256 grantId,
        Grant storage grant
    ) private view {
        if (grant.claimed) revert GrantAlreadyClaimed(grantId);
        if (grant.canceled) revert GrantCanceledError(grantId);
    }
}
