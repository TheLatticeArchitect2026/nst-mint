// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import { Pausable } from "openzeppelin-contracts/contracts/utils/Pausable.sol";
import { ReentrancyGuard } from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";

interface IShieldRegistryLike {
    function activeMember(
        address account
    ) external view returns (bool);
    function isMintEligible(
        address account
    ) external view returns (bool);
    function isBanned(
        address account
    ) external view returns (bool);
    function isSystemExempt(
        address account
    ) external view returns (bool);
}

interface ICFTMintable {
    function mint(
        address to,
        uint256 amount
    ) external;
}

interface IRewardEscrow {
    function createGrant(
        address beneficiary,
        uint256 amount,
        uint64 unlockAt
    ) external returns (uint256 grantId);
}

/// @title ReferralController
/// @notice Pair-based referral attribution and reward issuance for NST Lattice.
/// @dev
/// - One sponsor per invitee
/// - Invitee must be vetted before binding and become an active member before counting
/// - First completed pair pays 500 CFT liquid
/// - Every later completed pair creates a 30-day escrow grant for 500 CFT
contract ReferralController is AccessControl, Pausable, ReentrancyGuard {
    // =============================================================
    // ROLES
    // =============================================================

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant CONFIG_MANAGER_ROLE = keccak256("CONFIG_MANAGER_ROLE");

    // =============================================================
    // CONSTANTS
    // =============================================================

    uint256 public constant PAIR_SIZE = 2;
    uint256 public constant PAIR_REWARD = 500 ether;
    uint256 public constant ESCROW_DURATION = 30 days;

    // =============================================================
    // ERRORS
    // =============================================================

    error ZeroAddress();
    error InvalidRoleHolder();
    error InvalidDependency(address target);
    error SelfReferral();
    error SponsorAlreadyBound(address invitee, address currentSponsor);
    error NoSponsorBound(address invitee);
    error ReferralAlreadyRecorded(address invitee);
    error SponsorNotEligible(address sponsor);
    error InviteeNotEligible(address invitee);
    error InviteeAlreadyActiveMember(address invitee);
    error InviteeNotActiveMember(address invitee);
    error InviteeBanned(address invitee);
    error InviteeSystemExempt(address invitee);
    error SponsorSystemExempt(address sponsor);
    error RewardTokenNotConfigured();
    error RewardEscrowNotConfigured();

    // =============================================================
    // EVENTS
    // =============================================================

    event RewardTokenSet(address indexed oldToken, address indexed newToken, address indexed actor);
    event RewardEscrowSet(
        address indexed oldEscrow, address indexed newEscrow, address indexed actor
    );

    event SponsorBound(address indexed invitee, address indexed sponsor, uint64 indexed boundAt);

    event ReferralMintRecorded(
        address indexed sponsor,
        address indexed invitee,
        uint256 newSuccessfulMintCount,
        uint256 pairNumber
    );

    event LiquidRewardIssued(
        address indexed sponsor, address indexed invitee, uint256 indexed pairNumber, uint256 amount
    );

    event EscrowRewardCreated(
        address indexed sponsor,
        address indexed invitee,
        uint256 indexed pairNumber,
        uint256 amount,
        uint64 unlockAt,
        uint256 grantId
    );

    // =============================================================
    // TYPES
    // =============================================================

    struct ReferralState {
        address sponsor;
        bool successfulMintRecorded;
        uint64 boundAt;
    }

    // =============================================================
    // IMMUTABLES
    // =============================================================

    IShieldRegistryLike public immutable SHIELD_REGISTRY;

    // =============================================================
    // STORAGE
    // =============================================================

    ICFTMintable public rewardToken;
    IRewardEscrow public rewardEscrow;

    mapping(address => ReferralState) private _referrals;

    mapping(address => uint256) public successfulReferralMints;
    mapping(address => uint256) public liquidPairsRewarded;
    mapping(address => uint256) public escrowPairsCreated;

    // =============================================================
    // CONSTRUCTOR
    // =============================================================

    constructor(
        address defaultAdmin,
        address pauser,
        address configManager,
        address shieldRegistry,
        address rewardToken_,
        address rewardEscrow_
    ) {
        if (defaultAdmin == address(0) || shieldRegistry == address(0)) revert ZeroAddress();

        if (pauser == address(0) || configManager == address(0)) {
            revert InvalidRoleHolder();
        }

        if (shieldRegistry.code.length == 0) revert InvalidDependency(shieldRegistry);

        SHIELD_REGISTRY = IShieldRegistryLike(shieldRegistry);

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(CONFIG_MANAGER_ROLE, configManager);

        if (rewardToken_ != address(0)) {
            if (rewardToken_.code.length == 0) revert InvalidDependency(rewardToken_);
            rewardToken = ICFTMintable(rewardToken_);
            emit RewardTokenSet(address(0), rewardToken_, defaultAdmin);
        }

        if (rewardEscrow_ != address(0)) {
            if (rewardEscrow_.code.length == 0) revert InvalidDependency(rewardEscrow_);
            rewardEscrow = IRewardEscrow(rewardEscrow_);
            emit RewardEscrowSet(address(0), rewardEscrow_, defaultAdmin);
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
        rewardToken = ICFTMintable(newToken);

        emit RewardTokenSet(oldToken, newToken, msg.sender);
    }

    function setRewardEscrow(
        address newEscrow
    ) external onlyRole(CONFIG_MANAGER_ROLE) {
        if (newEscrow == address(0) || newEscrow.code.length == 0) {
            revert InvalidDependency(newEscrow);
        }

        address oldEscrow = address(rewardEscrow);
        rewardEscrow = IRewardEscrow(newEscrow);

        emit RewardEscrowSet(oldEscrow, newEscrow, msg.sender);
    }

    // =============================================================
    // REFERRAL FLOW
    // =============================================================

    /// @notice Binds the caller to a single sponsor prior to successful first NST mint.
    /// @dev The caller must already be vetted and not yet be an active member.
    function bindSponsor(
        address sponsor
    ) external whenNotPaused {
        address invitee = msg.sender;

        if (sponsor == address(0)) revert ZeroAddress();
        if (invitee == sponsor) revert SelfReferral();

        ReferralState storage state = _referrals[invitee];
        if (state.sponsor != address(0)) {
            revert SponsorAlreadyBound(invitee, state.sponsor);
        }

        _requireInviteeCanBind(invitee);
        _requireSponsorEligible(sponsor);

        state.sponsor = sponsor;
        state.boundAt = uint64(block.timestamp);

        emit SponsorBound(invitee, sponsor, state.boundAt);
    }

    /// @notice Records a successful referred first NST mint and issues the appropriate pair reward.
    /// @dev Callable by anyone because success is derived from deterministic registry state.
    function recordSuccessfulMint(
        address invitee
    ) external nonReentrant whenNotPaused {
        ReferralState storage state = _referrals[invitee];

        address sponsor = state.sponsor;
        if (sponsor == address(0)) revert NoSponsorBound(invitee);
        if (state.successfulMintRecorded) revert ReferralAlreadyRecorded(invitee);

        if (SHIELD_REGISTRY.isSystemExempt(invitee)) revert InviteeSystemExempt(invitee);
        if (SHIELD_REGISTRY.isBanned(invitee)) revert InviteeBanned(invitee);
        if (!SHIELD_REGISTRY.activeMember(invitee)) revert InviteeNotActiveMember(invitee);

        _requireSponsorEligible(sponsor);

        state.successfulMintRecorded = true;

        uint256 newSuccessfulMintCount = successfulReferralMints[sponsor] + 1;
        successfulReferralMints[sponsor] = newSuccessfulMintCount;

        uint256 pairNumber = newSuccessfulMintCount / PAIR_SIZE;
        emit ReferralMintRecorded(sponsor, invitee, newSuccessfulMintCount, pairNumber);

        if (newSuccessfulMintCount % PAIR_SIZE != 0) {
            return;
        }

        if (pairNumber == 1) {
            ICFTMintable token = rewardToken;
            if (address(token) == address(0)) revert RewardTokenNotConfigured();

            liquidPairsRewarded[sponsor] += 1;
            token.mint(sponsor, PAIR_REWARD);

            emit LiquidRewardIssued(sponsor, invitee, pairNumber, PAIR_REWARD);
            return;
        }

        IRewardEscrow escrow = rewardEscrow;
        if (address(escrow) == address(0)) revert RewardEscrowNotConfigured();

        uint64 unlockAt = uint64(block.timestamp + ESCROW_DURATION);
        uint256 grantId = escrow.createGrant(sponsor, PAIR_REWARD, unlockAt);

        escrowPairsCreated[sponsor] += 1;

        emit EscrowRewardCreated(sponsor, invitee, pairNumber, PAIR_REWARD, unlockAt, grantId);
    }

    // =============================================================
    // VIEW
    // =============================================================

    function sponsorOf(
        address invitee
    ) external view returns (address) {
        return _referrals[invitee].sponsor;
    }

    function referralBoundAt(
        address invitee
    ) external view returns (uint64) {
        return _referrals[invitee].boundAt;
    }

    function isSuccessfulReferralRecorded(
        address invitee
    ) external view returns (bool) {
        return _referrals[invitee].successfulMintRecorded;
    }

    function canSponsor(
        address sponsor
    ) public view returns (bool) {
        return !SHIELD_REGISTRY.isSystemExempt(sponsor) && SHIELD_REGISTRY.activeMember(sponsor);
    }

    function canBindReferral(
        address invitee,
        address sponsor
    ) external view returns (bool) {
        ReferralState storage state = _referrals[invitee];

        return sponsor != address(0) && invitee != sponsor && state.sponsor == address(0)
            && !SHIELD_REGISTRY.isSystemExempt(invitee) && !SHIELD_REGISTRY.isBanned(invitee)
            && SHIELD_REGISTRY.isMintEligible(invitee) && !SHIELD_REGISTRY.activeMember(invitee)
            && !SHIELD_REGISTRY.isSystemExempt(sponsor) && SHIELD_REGISTRY.activeMember(sponsor);
    }

    function completedPairs(
        address sponsor
    ) external view returns (uint256) {
        return successfulReferralMints[sponsor] / PAIR_SIZE;
    }

    function mintsUntilNextPair(
        address sponsor
    ) external view returns (uint256) {
        uint256 remainder = successfulReferralMints[sponsor] % PAIR_SIZE;
        if (remainder == 0) return PAIR_SIZE;
        return PAIR_SIZE - remainder;
    }

    function nextPairWillBeEscrowed(
        address sponsor
    ) external view returns (bool) {
        uint256 nextPairNumber = (successfulReferralMints[sponsor] / PAIR_SIZE) + 1;
        return nextPairNumber > 1;
    }

    function getSponsorSummary(
        address sponsor
    )
        external
        view
        returns (
            uint256 successfulMints,
            uint256 pairCount,
            uint256 liquidPairsPaid,
            uint256 escrowPairsIssued,
            uint256 nextRewardInMints,
            bool nextPairIsEscrowed
        )
    {
        successfulMints = successfulReferralMints[sponsor];
        pairCount = successfulMints / PAIR_SIZE;
        liquidPairsPaid = liquidPairsRewarded[sponsor];
        escrowPairsIssued = escrowPairsCreated[sponsor];

        uint256 remainder = successfulMints % PAIR_SIZE;
        nextRewardInMints = remainder == 0 ? PAIR_SIZE : PAIR_SIZE - remainder;
        nextPairIsEscrowed = ((successfulMints / PAIR_SIZE) + 1) > 1;
    }

    // =============================================================
    // INTERNAL
    // =============================================================

    function _requireInviteeCanBind(
        address invitee
    ) internal view {
        if (SHIELD_REGISTRY.isSystemExempt(invitee)) revert InviteeSystemExempt(invitee);
        if (SHIELD_REGISTRY.isBanned(invitee)) revert InviteeBanned(invitee);
        if (!SHIELD_REGISTRY.isMintEligible(invitee)) revert InviteeNotEligible(invitee);
        if (SHIELD_REGISTRY.activeMember(invitee)) revert InviteeAlreadyActiveMember(invitee);
    }

    function _requireSponsorEligible(
        address sponsor
    ) internal view {
        if (SHIELD_REGISTRY.isSystemExempt(sponsor)) revert SponsorSystemExempt(sponsor);
        if (!SHIELD_REGISTRY.activeMember(sponsor)) revert SponsorNotEligible(sponsor);
    }
}
