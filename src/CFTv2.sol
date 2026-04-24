// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { ERC20 } from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import { Pausable } from "openzeppelin-contracts/contracts/utils/Pausable.sol";

interface IShieldRegistryCFTLike {
    function activeMember(
        address account
    ) external view returns (bool);
    function isBanned(
        address account
    ) external view returns (bool);
    function isSystemExempt(
        address account
    ) external view returns (bool);
}

/// @title CFTv2
/// @notice NST Lattice utility and patronage token with permissioned transfer controls.
/// @dev
/// - 100B genesis supply is allocated across treasury destinations at deployment
/// - Additional issuance is role-gated and explicit
/// - Transfers are restricted to active members or system-exempt addresses
/// - Direct mint route is intended for exact user rewards such as referrals and escrow claims
/// - Treasury-split mint route is intended for protocol or treasury issuance flows
contract CFTv2 is ERC20, AccessControl, Pausable {
    // =============================================================
    // ROLES
    // =============================================================

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant CONFIG_MANAGER_ROLE = keccak256("CONFIG_MANAGER_ROLE");
    bytes32 public constant DIRECT_MINTER_ROLE = keccak256("DIRECT_MINTER_ROLE");
    bytes32 public constant TREASURY_MINT_ROLE = keccak256("TREASURY_MINT_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    // =============================================================
    // CONSTANTS
    // =============================================================

    uint256 public constant GENESIS_SUPPLY = 100_000_000_000 ether;

    uint16 public constant FOUNDER_BPS = 2000;
    uint16 public constant FIRST_NATIONS_BPS = 2000;
    uint16 public constant VIRILITY_BPS = 500;
    uint16 public constant YIELD_POOL_BPS = 500;
    uint16 public constant BUILDING_TREASURY_BPS = 5000;
    uint16 public constant BPS_DENOMINATOR = 10_000;

    // =============================================================
    // ERRORS
    // =============================================================

    error ZeroAddress();
    error InvalidRoleHolder();
    error InvalidDependency(address target);
    error InvalidBpsConfig();
    error InvalidAmount();
    error ParticipantNotPermitted(address account);

    // =============================================================
    // EVENTS
    // =============================================================

    event DirectMinterSet(address indexed account, bool allowed, address indexed actor);
    event TreasuryMinterSet(address indexed account, bool allowed, address indexed actor);
    event BurnerSet(address indexed account, bool allowed, address indexed actor);

    event DirectMint(address indexed operator, address indexed to, uint256 amount);

    event TreasurySplitMinted(
        address indexed operator,
        uint256 totalAmount,
        uint256 founderAmount,
        uint256 firstNationsAmount,
        uint256 virilityAmount,
        uint256 yieldPoolAmount,
        uint256 buildingTreasuryAmount
    );

    event GenesisSupplyAllocated(
        uint256 totalAmount,
        uint256 founderAmount,
        uint256 firstNationsAmount,
        uint256 virilityAmount,
        uint256 yieldPoolAmount,
        uint256 buildingTreasuryAmount
    );

    event Burned(address indexed operator, address indexed from, uint256 amount);

    // =============================================================
    // IMMUTABLES
    // =============================================================

    IShieldRegistryCFTLike public immutable SHIELD_REGISTRY;

    address public immutable FOUNDER_TREASURY;
    address public immutable FIRST_NATIONS_TREASURY;
    address public immutable VIRILITY_TREASURY;
    address public immutable YIELD_POOL;
    address public immutable BUILDING_TREASURY;

    // =============================================================
    // STORAGE
    // =============================================================

    bool private _bootstrappingGenesis;

    // =============================================================
    // CONSTRUCTOR
    // =============================================================

    constructor(
        address defaultAdmin,
        address pauser,
        address configManager,
        address shieldRegistry,
        address founderTreasury,
        address firstNationsTreasury,
        address virilityTreasury,
        address yieldPool,
        address buildingTreasury,
        string memory name_,
        string memory symbol_
    ) ERC20(name_, symbol_) {
        if (
            defaultAdmin == address(0) || shieldRegistry == address(0)
                || founderTreasury == address(0) || firstNationsTreasury == address(0)
                || virilityTreasury == address(0) || yieldPool == address(0)
                || buildingTreasury == address(0)
        ) {
            revert ZeroAddress();
        }

        if (pauser == address(0) || configManager == address(0)) {
            revert InvalidRoleHolder();
        }

        if (shieldRegistry.code.length == 0) revert InvalidDependency(shieldRegistry);

        if (
            FOUNDER_BPS + FIRST_NATIONS_BPS + VIRILITY_BPS + YIELD_POOL_BPS + BUILDING_TREASURY_BPS
                != BPS_DENOMINATOR
        ) {
            revert InvalidBpsConfig();
        }

        SHIELD_REGISTRY = IShieldRegistryCFTLike(shieldRegistry);

        FOUNDER_TREASURY = founderTreasury;
        FIRST_NATIONS_TREASURY = firstNationsTreasury;
        VIRILITY_TREASURY = virilityTreasury;
        YIELD_POOL = yieldPool;
        BUILDING_TREASURY = buildingTreasury;

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(CONFIG_MANAGER_ROLE, configManager);

        _setRoleAdmin(DIRECT_MINTER_ROLE, CONFIG_MANAGER_ROLE);
        _setRoleAdmin(TREASURY_MINT_ROLE, CONFIG_MANAGER_ROLE);
        _setRoleAdmin(BURNER_ROLE, CONFIG_MANAGER_ROLE);

        (
            uint256 founderAmount,
            uint256 firstNationsAmount,
            uint256 virilityAmount,
            uint256 yieldPoolAmount,
            uint256 buildingTreasuryAmount
        ) = _splitTreasuryAmount(GENESIS_SUPPLY);

        _bootstrappingGenesis = true;
        _mint(FOUNDER_TREASURY, founderAmount);
        _mint(FIRST_NATIONS_TREASURY, firstNationsAmount);
        _mint(VIRILITY_TREASURY, virilityAmount);
        _mint(YIELD_POOL, yieldPoolAmount);
        _mint(BUILDING_TREASURY, buildingTreasuryAmount);
        _bootstrappingGenesis = false;

        emit GenesisSupplyAllocated(
            GENESIS_SUPPLY,
            founderAmount,
            firstNationsAmount,
            virilityAmount,
            yieldPoolAmount,
            buildingTreasuryAmount
        );
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

    function setDirectMinter(
        address account,
        bool allowed
    ) external onlyRole(CONFIG_MANAGER_ROLE) {
        if (account == address(0)) revert ZeroAddress();

        if (allowed) {
            _grantRole(DIRECT_MINTER_ROLE, account);
        } else {
            _revokeRole(DIRECT_MINTER_ROLE, account);
        }

        emit DirectMinterSet(account, allowed, msg.sender);
    }

    function setTreasuryMinter(
        address account,
        bool allowed
    ) external onlyRole(CONFIG_MANAGER_ROLE) {
        if (account == address(0)) revert ZeroAddress();

        if (allowed) {
            _grantRole(TREASURY_MINT_ROLE, account);
        } else {
            _revokeRole(TREASURY_MINT_ROLE, account);
        }

        emit TreasuryMinterSet(account, allowed, msg.sender);
    }

    function setBurner(
        address account,
        bool allowed
    ) external onlyRole(CONFIG_MANAGER_ROLE) {
        if (account == address(0)) revert ZeroAddress();

        if (allowed) {
            _grantRole(BURNER_ROLE, account);
        } else {
            _revokeRole(BURNER_ROLE, account);
        }

        emit BurnerSet(account, allowed, msg.sender);
    }

    // =============================================================
    // MINT / BURN
    // =============================================================

    /// @notice Direct mint path for exact user-facing rewards or utility issuance.
    function mint(
        address to,
        uint256 amount
    ) external onlyRole(DIRECT_MINTER_ROLE) whenNotPaused {
        if (to == address(0)) revert ZeroAddress();
        if (amount == 0) revert InvalidAmount();

        _mint(to, amount);

        emit DirectMint(msg.sender, to, amount);
    }

    /// @notice Treasury-split mint path for protocol issuance that must follow treasury allocation rules.
    function mintTreasurySplit(
        uint256 totalAmount
    )
        external
        onlyRole(TREASURY_MINT_ROLE)
        whenNotPaused
        returns (
            uint256 founderAmount,
            uint256 firstNationsAmount,
            uint256 virilityAmount,
            uint256 yieldPoolAmount,
            uint256 buildingTreasuryAmount
        )
    {
        if (totalAmount == 0) revert InvalidAmount();

        (
            founderAmount,
            firstNationsAmount,
            virilityAmount,
            yieldPoolAmount,
            buildingTreasuryAmount
        ) = _splitTreasuryAmount(totalAmount);

        _mint(FOUNDER_TREASURY, founderAmount);
        _mint(FIRST_NATIONS_TREASURY, firstNationsAmount);
        _mint(VIRILITY_TREASURY, virilityAmount);
        _mint(YIELD_POOL, yieldPoolAmount);
        _mint(BUILDING_TREASURY, buildingTreasuryAmount);

        emit TreasurySplitMinted(
            msg.sender,
            totalAmount,
            founderAmount,
            firstNationsAmount,
            virilityAmount,
            yieldPoolAmount,
            buildingTreasuryAmount
        );
    }

    /// @notice Self-burn path for holders.
    function burn(
        uint256 amount
    ) external whenNotPaused {
        if (amount == 0) revert InvalidAmount();

        _burn(msg.sender, amount);

        emit Burned(msg.sender, msg.sender, amount);
    }

    /// @notice Authorized burn path for protocol modules.
    function burnFromAccount(
        address from,
        uint256 amount
    ) external onlyRole(BURNER_ROLE) whenNotPaused {
        if (from == address(0)) revert ZeroAddress();
        if (amount == 0) revert InvalidAmount();

        _burn(from, amount);

        emit Burned(msg.sender, from, amount);
    }

    // =============================================================
    // VIEW
    // =============================================================

    function previewTreasurySplit(
        uint256 totalAmount
    )
        external
        pure
        returns (
            uint256 founderAmount,
            uint256 firstNationsAmount,
            uint256 virilityAmount,
            uint256 yieldPoolAmount,
            uint256 buildingTreasuryAmount
        )
    {
        if (totalAmount == 0) revert InvalidAmount();
        return _splitTreasuryAmount(totalAmount);
    }

    function isTransferParticipantAllowed(
        address account
    ) public view returns (bool) {
        if (account == address(0)) return false;

        return !SHIELD_REGISTRY.isBanned(account)
            && (SHIELD_REGISTRY.activeMember(account) || SHIELD_REGISTRY.isSystemExempt(account));
    }

    // =============================================================
    // ERC20 OVERRIDES
    // =============================================================

    function approve(
        address spender,
        uint256 value
    ) public override returns (bool) {
        _requireNotPaused();
        _requireParticipantAllowed(_msgSender());
        _requireParticipantAllowed(spender);

        return super.approve(spender, value);
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) public override returns (bool) {
        _requireNotPaused();
        _requireParticipantAllowed(_msgSender());

        return super.transferFrom(from, to, value);
    }

    function _update(
        address from,
        address to,
        uint256 value
    ) internal override {
        _requireNotPaused();

        if (_bootstrappingGenesis && from == address(0)) {
            super._update(from, to, value);
            return;
        }

        if (from == address(0)) {
            _requireParticipantAllowed(to);
            super._update(from, to, value);
            return;
        }

        if (to == address(0)) {
            _requireParticipantAllowed(from);
            super._update(from, to, value);
            return;
        }

        _requireParticipantAllowed(from);
        _requireParticipantAllowed(to);

        super._update(from, to, value);
    }

    // =============================================================
    // INTERNAL
    // =============================================================

    function _splitTreasuryAmount(
        uint256 totalAmount
    )
        internal
        pure
        returns (
            uint256 founderAmount,
            uint256 firstNationsAmount,
            uint256 virilityAmount,
            uint256 yieldPoolAmount,
            uint256 buildingTreasuryAmount
        )
    {
        founderAmount = (totalAmount * FOUNDER_BPS) / BPS_DENOMINATOR;
        firstNationsAmount = (totalAmount * FIRST_NATIONS_BPS) / BPS_DENOMINATOR;
        virilityAmount = (totalAmount * VIRILITY_BPS) / BPS_DENOMINATOR;
        yieldPoolAmount = (totalAmount * YIELD_POOL_BPS) / BPS_DENOMINATOR;

        buildingTreasuryAmount =
            totalAmount - founderAmount - firstNationsAmount - virilityAmount - yieldPoolAmount;
    }

    function _requireParticipantAllowed(
        address account
    ) internal view {
        if (!isTransferParticipantAllowed(account)) {
            revert ParticipantNotPermitted(account);
        }
    }
}
