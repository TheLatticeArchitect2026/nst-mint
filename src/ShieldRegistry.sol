// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import { IERC721 } from "openzeppelin-contracts/contracts/token/ERC721/IERC721.sol";
import { Pausable } from "openzeppelin-contracts/contracts/utils/Pausable.sol";

interface IBanRegistry {
    function isBanned(
        address account
    ) external view returns (bool);
}

interface IVettingRegistry {
    function isMintEligible(
        address account
    ) external view returns (bool);
}

/// @title ShieldRegistry
/// @notice Canonical perimeter registry for NST Lattice.
/// @dev
/// - Tracks vetted status, permanent bans, system exemptions, entity type, and policy metadata
/// - Exposes compatibility views for legacy ban / vetting hooks
/// - Supports active-member checks once the NST membership token is configured
/// - Bans are irreversible in V1 by design
contract ShieldRegistry is AccessControl, Pausable, IBanRegistry, IVettingRegistry {
    // =============================================================
    // ROLES
    // =============================================================

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant VETTING_MANAGER_ROLE = keccak256("VETTING_MANAGER_ROLE");
    bytes32 public constant BAN_MANAGER_ROLE = keccak256("BAN_MANAGER_ROLE");
    bytes32 public constant EXEMPTION_MANAGER_ROLE = keccak256("EXEMPTION_MANAGER_ROLE");
    bytes32 public constant PROFILE_MANAGER_ROLE = keccak256("PROFILE_MANAGER_ROLE");

    // =============================================================
    // ERRORS
    // =============================================================

    error ZeroAddress();
    error InvalidRoleHolder();
    error InvalidMembershipToken(address token);
    error EmptyArray();
    error ArrayLengthMismatch();
    error AlreadyBanned(address account);
    error BannedAccount(address account);

    // =============================================================
    // TYPES
    // =============================================================

    enum EntityType {
        Unspecified,
        Individual,
        SoleProprietor,
        SinglePersonBusiness,
        Corporation,
        StaffMember,
        Supplier,
        Farmer,
        FirstNationsPartner,
        TreasuryOrOperator,
        SystemExempt
    }

    struct AccountConfig {
        bool vetted;
        bool banned;
        bool systemExempt;
        bool canInviteMembers;
        bool canOriginateInvoices;
        bool canResolveDisputes;
        EntityType entityType;
        uint8 jurisdictionTier;
    }

    // =============================================================
    // EVENTS
    // =============================================================

    event MembershipTokenSet(
        address indexed oldToken, address indexed newToken, address indexed actor
    );

    event VettingStatusSet(address indexed account, bool vetted, address indexed actor);
    event SystemExemptionSet(address indexed account, bool exempt, address indexed actor);
    event AccountBanned(address indexed account, bytes32 indexed reasonHash, address indexed actor);

    event EntityProfileSet(
        address indexed account,
        EntityType entityType,
        uint8 jurisdictionTier,
        bytes32 beneficialOwnerHash,
        address indexed actor
    );

    event OperationalPermissionsSet(
        address indexed account,
        bool canInviteMembers,
        bool canOriginateInvoices,
        bool canResolveDisputes,
        address indexed actor
    );

    // =============================================================
    // STORAGE
    // =============================================================

    IERC721 public membershipToken;

    mapping(address => AccountConfig) private _accounts;
    mapping(address => bytes32) private _beneficialOwnerHash;

    // =============================================================
    // CONSTRUCTOR
    // =============================================================

    constructor(
        address defaultAdmin,
        address pauser,
        address vettingManager,
        address banManager,
        address exemptionManager,
        address profileManager,
        address membershipToken_
    ) {
        if (defaultAdmin == address(0)) revert ZeroAddress();

        if (
            pauser == address(0) || vettingManager == address(0) || banManager == address(0)
                || exemptionManager == address(0) || profileManager == address(0)
        ) {
            revert InvalidRoleHolder();
        }

        if (membershipToken_ != address(0) && membershipToken_.code.length == 0) {
            revert InvalidMembershipToken(membershipToken_);
        }

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(VETTING_MANAGER_ROLE, vettingManager);
        _grantRole(BAN_MANAGER_ROLE, banManager);
        _grantRole(EXEMPTION_MANAGER_ROLE, exemptionManager);
        _grantRole(PROFILE_MANAGER_ROLE, profileManager);

        if (membershipToken_ != address(0)) {
            membershipToken = IERC721(membershipToken_);
            emit MembershipTokenSet(address(0), membershipToken_, defaultAdmin);
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

    /// @notice Sets the NST membership token used by activeMember() checks.
    /// @dev Intended to be called after NSTSBT is deployed.
    function setMembershipToken(
        address newToken
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newToken == address(0) || newToken.code.length == 0) {
            revert InvalidMembershipToken(newToken);
        }

        address oldToken = address(membershipToken);
        membershipToken = IERC721(newToken);

        emit MembershipTokenSet(oldToken, newToken, msg.sender);
    }

    // =============================================================
    // VETTING / BAN / EXEMPTION WRITE
    // =============================================================

    function setVetted(
        address account,
        bool vetted
    ) external onlyRole(VETTING_MANAGER_ROLE) whenNotPaused {
        _setVetted(account, vetted);
    }

    function batchSetVetted(
        address[] calldata accounts,
        bool vetted
    ) external onlyRole(VETTING_MANAGER_ROLE) whenNotPaused {
        uint256 length = accounts.length;
        if (length == 0) revert EmptyArray();

        for (uint256 i = 0; i < length;) {
            _setVetted(accounts[i], vetted);
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Permanently bans an account in V1.
    /// @dev There is intentionally no unban function in this version.
    function banAccount(
        address account,
        bytes32 reasonHash
    ) external onlyRole(BAN_MANAGER_ROLE) whenNotPaused {
        _banAccount(account, reasonHash);
    }

    /// @notice Permanently bans multiple accounts in V1 with a shared reason hash.
    function batchBanAccounts(
        address[] calldata accounts,
        bytes32 reasonHash
    ) external onlyRole(BAN_MANAGER_ROLE) whenNotPaused {
        uint256 length = accounts.length;
        if (length == 0) revert EmptyArray();

        for (uint256 i = 0; i < length;) {
            _banAccount(accounts[i], reasonHash);
            unchecked {
                ++i;
            }
        }
    }

    function setSystemExempt(
        address account,
        bool exempt
    ) external onlyRole(EXEMPTION_MANAGER_ROLE) whenNotPaused {
        _setSystemExempt(account, exempt);
    }

    function batchSetSystemExempt(
        address[] calldata accounts,
        bool exempt
    ) external onlyRole(EXEMPTION_MANAGER_ROLE) whenNotPaused {
        uint256 length = accounts.length;
        if (length == 0) revert EmptyArray();

        for (uint256 i = 0; i < length;) {
            _setSystemExempt(accounts[i], exempt);
            unchecked {
                ++i;
            }
        }
    }

    // =============================================================
    // PROFILE / POLICY WRITE
    // =============================================================

    function setEntityProfile(
        address account,
        EntityType entityType_,
        uint8 jurisdictionTier_,
        bytes32 beneficialOwnerHash_
    ) external onlyRole(PROFILE_MANAGER_ROLE) whenNotPaused {
        _requireNonZero(account);

        AccountConfig storage cfg = _accounts[account];
        cfg.entityType = entityType_;
        cfg.jurisdictionTier = jurisdictionTier_;
        _beneficialOwnerHash[account] = beneficialOwnerHash_;

        emit EntityProfileSet(
            account, entityType_, jurisdictionTier_, beneficialOwnerHash_, msg.sender
        );
    }

    function setOperationalPermissions(
        address account,
        bool canInviteMembers_,
        bool canOriginateInvoices_,
        bool canResolveDisputes_
    ) external onlyRole(PROFILE_MANAGER_ROLE) whenNotPaused {
        _requireNonZero(account);

        if (_accounts[account].banned) revert BannedAccount(account);

        AccountConfig storage cfg = _accounts[account];
        cfg.canInviteMembers = canInviteMembers_;
        cfg.canOriginateInvoices = canOriginateInvoices_;
        cfg.canResolveDisputes = canResolveDisputes_;

        emit OperationalPermissionsSet(
            account, canInviteMembers_, canOriginateInvoices_, canResolveDisputes_, msg.sender
        );
    }

    // =============================================================
    // VIEW: COMPATIBILITY HOOKS
    // =============================================================

    /// @notice Compatibility hook for legacy ban checks.
    function isBanned(
        address account
    ) public view override returns (bool) {
        return _accounts[account].banned;
    }

    /// @notice Compatibility hook for legacy NST mint eligibility checks.
    function isMintEligible(
        address account
    ) public view override returns (bool) {
        AccountConfig storage cfg = _accounts[account];
        return cfg.vetted && !cfg.banned;
    }

    // =============================================================
    // VIEW: REGISTRY STATE
    // =============================================================

    function isVetted(
        address account
    ) public view returns (bool) {
        return _accounts[account].vetted;
    }

    function isSystemExempt(
        address account
    ) public view returns (bool) {
        return _accounts[account].systemExempt;
    }

    function entityType(
        address account
    ) public view returns (uint8) {
        return uint8(_accounts[account].entityType);
    }

    function jurisdictionTier(
        address account
    ) public view returns (uint8) {
        return _accounts[account].jurisdictionTier;
    }

    function beneficialOwnerHash(
        address account
    ) public view returns (bytes32) {
        return _beneficialOwnerHash[account];
    }

    function canInviteMembers(
        address account
    ) public view returns (bool) {
        AccountConfig storage cfg = _accounts[account];
        return cfg.vetted && !cfg.banned && cfg.canInviteMembers;
    }

    function canOriginateInvoices(
        address account
    ) public view returns (bool) {
        AccountConfig storage cfg = _accounts[account];
        return cfg.vetted && !cfg.banned && cfg.canOriginateInvoices;
    }

    function canResolveDisputes(
        address account
    ) public view returns (bool) {
        AccountConfig storage cfg = _accounts[account];
        return !cfg.banned && (cfg.systemExempt || (cfg.vetted && cfg.canResolveDisputes));
    }

    /// @notice Returns whether the account is allowed to touch protected system flows.
    /// @dev System exemptions are intended only for narrow infrastructure addresses.
    function canTouchSystem(
        address account
    ) public view returns (bool) {
        if (account == address(0)) return false;

        AccountConfig storage cfg = _accounts[account];
        return !cfg.banned && (cfg.systemExempt || cfg.vetted);
    }

    /// @notice Returns whether the account is a fully active member.
    /// @dev activeMember = vetted && !banned && ownsNST(account)
    function activeMember(
        address account
    ) public view returns (bool) {
        AccountConfig storage cfg = _accounts[account];
        return cfg.vetted && !cfg.banned && _ownsNST(account);
    }

    function ownsNST(
        address account
    ) public view returns (bool) {
        if (account == address(0)) return false;

        IERC721 token = membershipToken;
        if (address(token) == address(0)) return false;

        try token.balanceOf(account) returns (uint256 balance) {
            return balance != 0;
        } catch {
            return false;
        }
    }

    function getAccountState(
        address account
    )
        external
        view
        returns (
            bool vetted,
            bool banned,
            bool systemExempt,
            uint8 entityType_,
            uint8 jurisdictionTier_,
            bytes32 beneficialOwnerHash_,
            bool canInviteMembers_,
            bool canOriginateInvoices_,
            bool canResolveDisputes_,
            bool canTouchSystem_,
            bool activeMember_
        )
    {
        AccountConfig storage cfg = _accounts[account];

        vetted = cfg.vetted;
        banned = cfg.banned;
        systemExempt = cfg.systemExempt;
        entityType_ = uint8(cfg.entityType);
        jurisdictionTier_ = cfg.jurisdictionTier;
        beneficialOwnerHash_ = _beneficialOwnerHash[account];
        canInviteMembers_ = cfg.vetted && !cfg.banned && cfg.canInviteMembers;
        canOriginateInvoices_ = cfg.vetted && !cfg.banned && cfg.canOriginateInvoices;
        canResolveDisputes_ =
            !cfg.banned && (cfg.systemExempt || (cfg.vetted && cfg.canResolveDisputes));
        canTouchSystem_ = !cfg.banned && (cfg.systemExempt || cfg.vetted);
        activeMember_ = cfg.vetted && !cfg.banned && _ownsNST(account);
    }

    // =============================================================
    // INTERNAL
    // =============================================================

    function _setVetted(
        address account,
        bool vetted
    ) internal {
        _requireNonZero(account);

        if (vetted && _accounts[account].banned) revert BannedAccount(account);

        _accounts[account].vetted = vetted;
        emit VettingStatusSet(account, vetted, msg.sender);
    }

    function _banAccount(
        address account,
        bytes32 reasonHash
    ) internal {
        _requireNonZero(account);

        if (_accounts[account].banned) revert AlreadyBanned(account);

        _accounts[account].banned = true;
        emit AccountBanned(account, reasonHash, msg.sender);
    }

    function _setSystemExempt(
        address account,
        bool exempt
    ) internal {
        _requireNonZero(account);

        if (exempt && _accounts[account].banned) revert BannedAccount(account);

        _accounts[account].systemExempt = exempt;
        emit SystemExemptionSet(account, exempt, msg.sender);
    }

    function _requireNonZero(
        address account
    ) internal pure {
        if (account == address(0)) revert ZeroAddress();
    }

    function _ownsNST(
        address account
    ) internal view returns (bool) {
        IERC721 token = membershipToken;
        if (address(token) == address(0)) return false;

        try token.balanceOf(account) returns (uint256 balance) {
            return balance != 0;
        } catch {
            return false;
        }
    }
}
