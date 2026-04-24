// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import { Pausable } from "openzeppelin-contracts/contracts/utils/Pausable.sol";
import { ReentrancyGuard } from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

interface IShieldRegistryEscrowLike {
    function activeMember(
        address account
    ) external view returns (bool);
    function isBanned(
        address account
    ) external view returns (bool);
}

interface ICFTRewardMintable {
    function mint(
        address to,
        uint256 amount
    ) external;
}

/// @title RewardEscrow
/// @notice Time-locked reward escrow for NST Lattice referral and future incentive flows.
/// @dev
/// - Grant creators are explicitly role-gated
/// - Beneficiaries must remain active members to claim
/// - Claims mint reward tokens on demand rather than custodying balances in this contract
contract RewardEscrow is AccessControl, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // =============================================================
    // ROLES
    // =============================================================

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant CONFIG_MANAGER_ROLE = keccak256("CONFIG_MANAGER_ROLE");
    bytes32 public constant GRANT_CREATOR_ROLE = keccak256("GRANT_CREATOR_ROLE");

    // =============================================================
    // ERRORS
    // =============================================================

    error ZeroAddress();
    error InvalidRoleHolder();
    error InvalidDependency(address target);
    error InvalidBeneficiary(address beneficiary);
    error InvalidAmount();
    error InvalidUnlockAt(uint64 unlockAt, uint64 currentTimestamp);
    error RewardTokenNotConfigured();
    error GrantNotFound(uint256 grantId);
    error GrantAlreadyClaimed(uint256 grantId);
    error NotBeneficiary(address beneficiary, address caller);
    error GrantNotMature(uint64 unlockAt, uint64 currentTimestamp);
    error BeneficiaryNotActiveMember(address beneficiary);
    error BannedAccount(address account);
    error EmptyArray();

    // =============================================================
    // TYPES
    // =============================================================

    struct Grant {
        address beneficiary;
        uint256 amount;
        uint64 unlockAt;
        bool claimed;
    }

    // =============================================================
    // EVENTS
    // =============================================================

    event RewardTokenSet(address indexed oldToken, address indexed newToken, address indexed actor);

    event GrantCreated(
        uint256 indexed grantId,
        address indexed beneficiary,
        uint256 amount,
        uint64 unlockAt,
        address indexed creator
    );

    event GrantClaimed(
        uint256 indexed grantId,
        address indexed beneficiary,
        uint256 amount,
        address indexed claimer
    );

    event ERC20Rescued(address indexed token, address indexed to, uint256 amount);

    // =============================================================
    // IMMUTABLES
    // =============================================================

    IShieldRegistryEscrowLike public immutable SHIELD_REGISTRY;

    // =============================================================
    // STORAGE
    // =============================================================

    ICFTRewardMintable public rewardToken;
    uint256 public nextGrantId;

    mapping(uint256 => Grant) private _grants;

    // =============================================================
    // CONSTRUCTOR
    // =============================================================

    constructor(
        address defaultAdmin,
        address pauser,
        address configManager,
        address grantCreator,
        address shieldRegistry,
        address rewardToken_
    ) {
        if (defaultAdmin == address(0) || shieldRegistry == address(0)) revert ZeroAddress();

        if (pauser == address(0) || configManager == address(0) || grantCreator == address(0)) {
            revert InvalidRoleHolder();
        }

        if (shieldRegistry.code.length == 0) revert InvalidDependency(shieldRegistry);

        SHIELD_REGISTRY = IShieldRegistryEscrowLike(shieldRegistry);

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(CONFIG_MANAGER_ROLE, configManager);
        _grantRole(GRANT_CREATOR_ROLE, grantCreator);

        if (rewardToken_ != address(0)) {
            if (rewardToken_.code.length == 0) revert InvalidDependency(rewardToken_);
            rewardToken = ICFTRewardMintable(rewardToken_);
            emit RewardTokenSet(address(0), rewardToken_, defaultAdmin);
        }
    }

    // =============================================================
    // ADMIN / CONTROL
    // =============================================================

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function setRewardToken(
        address newToken
    ) external onlyRole(CONFIG_MANAGER_ROLE) {
        if (newToken == address(0) || newToken.code.length == 0) {
            revert InvalidDependency(newToken);
        }

        address oldToken = address(rewardToken);
        rewardToken = ICFTRewardMintable(newToken);

        emit RewardTokenSet(oldToken, newToken, msg.sender);
    }

    /// @notice Rescue accidental ERC20 transfers sent to this contract.
    function rescueERC20(
        address token,
        address to,
        uint256 amount
    ) external onlyRole(CONFIG_MANAGER_ROLE) {
        if (token == address(0) || to == address(0)) revert ZeroAddress();
        if (amount == 0) revert InvalidAmount();

        IERC20(token).safeTransfer(to, amount);
        emit ERC20Rescued(token, to, amount);
    }

    // =============================================================
    // GRANT CREATION
    // =============================================================

    function createGrant(
        address beneficiary,
        uint256 amount,
        uint64 unlockAt
    ) external onlyRole(GRANT_CREATOR_ROLE) whenNotPaused returns (uint256 grantId) {
        if (beneficiary == address(0)) revert InvalidBeneficiary(beneficiary);
        if (amount == 0) revert InvalidAmount();
        if (SHIELD_REGISTRY.isBanned(beneficiary)) revert BannedAccount(beneficiary);
        if (!SHIELD_REGISTRY.activeMember(beneficiary)) {
            revert BeneficiaryNotActiveMember(beneficiary);
        }

        uint64 currentTimestamp = uint64(block.timestamp);
        if (unlockAt <= currentTimestamp) {
            revert InvalidUnlockAt(unlockAt, currentTimestamp);
        }

        grantId = ++nextGrantId;

        _grants[grantId] =
            Grant({ beneficiary: beneficiary, amount: amount, unlockAt: unlockAt, claimed: false });

        emit GrantCreated(grantId, beneficiary, amount, unlockAt, msg.sender);
    }

    // =============================================================
    // CLAIM
    // =============================================================

    function claim(
        uint256 grantId
    ) external nonReentrant whenNotPaused returns (uint256 amount) {
        Grant storage grant = _grants[grantId];

        if (grant.beneficiary == address(0)) revert GrantNotFound(grantId);
        if (grant.claimed) revert GrantAlreadyClaimed(grantId);
        if (grant.beneficiary != msg.sender) {
            revert NotBeneficiary(grant.beneficiary, msg.sender);
        }
        if (SHIELD_REGISTRY.isBanned(msg.sender)) revert BannedAccount(msg.sender);
        if (!SHIELD_REGISTRY.activeMember(msg.sender)) {
            revert BeneficiaryNotActiveMember(msg.sender);
        }

        uint64 currentTimestamp = uint64(block.timestamp);
        if (currentTimestamp < grant.unlockAt) {
            revert GrantNotMature(grant.unlockAt, currentTimestamp);
        }

        ICFTRewardMintable token = rewardToken;
        if (address(token) == address(0)) revert RewardTokenNotConfigured();

        grant.claimed = true;
        amount = grant.amount;

        token.mint(msg.sender, amount);

        emit GrantClaimed(grantId, msg.sender, amount, msg.sender);
    }

    function batchClaim(
        uint256[] calldata grantIds
    ) external nonReentrant whenNotPaused returns (uint256 totalClaimed) {
        uint256 length = grantIds.length;
        if (length == 0) revert EmptyArray();

        if (SHIELD_REGISTRY.isBanned(msg.sender)) revert BannedAccount(msg.sender);
        if (!SHIELD_REGISTRY.activeMember(msg.sender)) {
            revert BeneficiaryNotActiveMember(msg.sender);
        }

        ICFTRewardMintable token = rewardToken;
        if (address(token) == address(0)) revert RewardTokenNotConfigured();

        uint64 currentTimestamp = uint64(block.timestamp);

        for (uint256 i = 0; i < length;) {
            uint256 grantId = grantIds[i];
            Grant storage grant = _grants[grantId];

            if (grant.beneficiary == address(0)) revert GrantNotFound(grantId);
            if (grant.claimed) revert GrantAlreadyClaimed(grantId);
            if (grant.beneficiary != msg.sender) {
                revert NotBeneficiary(grant.beneficiary, msg.sender);
            }
            if (currentTimestamp < grant.unlockAt) {
                revert GrantNotMature(grant.unlockAt, currentTimestamp);
            }

            grant.claimed = true;
            totalClaimed += grant.amount;

            emit GrantClaimed(grantId, msg.sender, grant.amount, msg.sender);

            unchecked {
                ++i;
            }
        }

        token.mint(msg.sender, totalClaimed);
    }

    // =============================================================
    // VIEW
    // =============================================================

    function getGrant(
        uint256 grantId
    ) external view returns (address beneficiary, uint256 amount, uint64 unlockAt, bool claimed) {
        Grant storage grant = _grants[grantId];
        if (grant.beneficiary == address(0)) revert GrantNotFound(grantId);

        beneficiary = grant.beneficiary;
        amount = grant.amount;
        unlockAt = grant.unlockAt;
        claimed = grant.claimed;
    }

    function beneficiaryOf(
        uint256 grantId
    ) external view returns (address) {
        Grant storage grant = _grants[grantId];
        if (grant.beneficiary == address(0)) revert GrantNotFound(grantId);
        return grant.beneficiary;
    }

    function amountOf(
        uint256 grantId
    ) external view returns (uint256) {
        Grant storage grant = _grants[grantId];
        if (grant.beneficiary == address(0)) revert GrantNotFound(grantId);
        return grant.amount;
    }

    function unlockAtOf(
        uint256 grantId
    ) external view returns (uint64) {
        Grant storage grant = _grants[grantId];
        if (grant.beneficiary == address(0)) revert GrantNotFound(grantId);
        return grant.unlockAt;
    }

    function isClaimed(
        uint256 grantId
    ) external view returns (bool) {
        Grant storage grant = _grants[grantId];
        if (grant.beneficiary == address(0)) revert GrantNotFound(grantId);
        return grant.claimed;
    }

    function isClaimable(
        uint256 grantId
    ) external view returns (bool) {
        Grant storage grant = _grants[grantId];
        if (grant.beneficiary == address(0)) revert GrantNotFound(grantId);

        return !grant.claimed && block.timestamp >= grant.unlockAt
            && !SHIELD_REGISTRY.isBanned(grant.beneficiary)
            && SHIELD_REGISTRY.activeMember(grant.beneficiary);
    }
}
