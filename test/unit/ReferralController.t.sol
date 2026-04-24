// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";

import { ReferralController } from "../../src/ReferralController.sol";

contract MockShieldRegistryForReferral {
    mapping(address => bool) public activeMembers;
    mapping(address => bool) public mintEligible;
    mapping(address => bool) public banned;
    mapping(address => bool) public systemExempt;

    function setActiveMember(
        address account,
        bool value
    ) external {
        activeMembers[account] = value;
    }

    function setMintEligible(
        address account,
        bool value
    ) external {
        mintEligible[account] = value;
    }

    function setBanned(
        address account,
        bool value
    ) external {
        banned[account] = value;
    }

    function setSystemExempt(
        address account,
        bool value
    ) external {
        systemExempt[account] = value;
    }

    function activeMember(
        address account
    ) external view returns (bool) {
        return activeMembers[account];
    }

    function isMintEligible(
        address account
    ) external view returns (bool) {
        return mintEligible[account];
    }

    function isBanned(
        address account
    ) external view returns (bool) {
        return banned[account];
    }

    function isSystemExempt(
        address account
    ) external view returns (bool) {
        return systemExempt[account];
    }
}

contract MockCFTMintable {
    mapping(address => uint256) public balanceOf;
    uint256 public totalMinted;

    function mint(
        address to,
        uint256 amount
    ) external {
        balanceOf[to] += amount;
        totalMinted += amount;
    }
}

contract MockRewardEscrow {
    struct Grant {
        address beneficiary;
        uint256 amount;
        uint64 unlockAt;
    }

    uint256 public nextGrantId;
    mapping(uint256 => Grant) public grants;

    function createGrant(
        address beneficiary,
        uint256 amount,
        uint64 unlockAt
    ) external returns (uint256 grantId) {
        grantId = ++nextGrantId;
        grants[grantId] = Grant({ beneficiary: beneficiary, amount: amount, unlockAt: unlockAt });
    }
}

contract ReferralControllerTest is Test {
    ReferralController internal referral;
    MockShieldRegistryForReferral internal shield;
    MockCFTMintable internal cft;
    MockRewardEscrow internal escrow;

    address internal admin;
    address internal pauser;
    address internal configManager;

    address internal sponsor;
    address internal invitee1;
    address internal invitee2;
    address internal invitee3;
    address internal invitee4;
    address internal outsider;

    function setUp() public {
        admin = makeAddr("admin");
        pauser = makeAddr("pauser");
        configManager = makeAddr("configManager");

        sponsor = makeAddr("sponsor");
        invitee1 = makeAddr("invitee1");
        invitee2 = makeAddr("invitee2");
        invitee3 = makeAddr("invitee3");
        invitee4 = makeAddr("invitee4");
        outsider = makeAddr("outsider");

        shield = new MockShieldRegistryForReferral();
        cft = new MockCFTMintable();
        escrow = new MockRewardEscrow();

        shield.setActiveMember(sponsor, true);

        referral = _deploy(address(cft), address(escrow));
    }

    function _deploy(
        address rewardToken,
        address rewardEscrow
    ) internal returns (ReferralController deployed) {
        deployed = new ReferralController(
            admin, pauser, configManager, address(shield), rewardToken, rewardEscrow
        );
    }

    function _markInviteeEligible(
        address invitee
    ) internal {
        shield.setMintEligible(invitee, true);
    }

    function _bind(
        address invitee
    ) internal {
        vm.prank(invitee);
        referral.bindSponsor(sponsor);
    }

    function _recordActiveMint(
        address invitee
    ) internal {
        shield.setActiveMember(invitee, true);
        referral.recordSuccessfulMint(invitee);
    }

    function _completeReferral(
        address invitee
    ) internal {
        _markInviteeEligible(invitee);
        _bind(invitee);
        _recordActiveMint(invitee);
    }

    function test_constructor_sets_roles_and_dependencies() public view {
        assertTrue(referral.hasRole(referral.DEFAULT_ADMIN_ROLE(), admin));
        assertTrue(referral.hasRole(referral.PAUSER_ROLE(), pauser));
        assertTrue(referral.hasRole(referral.CONFIG_MANAGER_ROLE(), configManager));

        assertEq(address(referral.SHIELD_REGISTRY()), address(shield));
        assertEq(address(referral.rewardToken()), address(cft));
        assertEq(address(referral.rewardEscrow()), address(escrow));

        assertEq(referral.PAIR_SIZE(), 2);
        assertEq(referral.PAIR_REWARD(), 500 ether);
        assertEq(referral.ESCROW_DURATION(), 30 days);
    }

    function test_constructor_reverts_on_zero_addresses() public {
        vm.expectRevert(ReferralController.ZeroAddress.selector);
        new ReferralController(
            address(0), pauser, configManager, address(shield), address(cft), address(escrow)
        );

        vm.expectRevert(ReferralController.ZeroAddress.selector);
        new ReferralController(
            admin, pauser, configManager, address(0), address(cft), address(escrow)
        );
    }

    function test_constructor_reverts_on_invalid_role_holder() public {
        vm.expectRevert(ReferralController.InvalidRoleHolder.selector);
        new ReferralController(
            admin, address(0), configManager, address(shield), address(cft), address(escrow)
        );
    }

    function test_constructor_reverts_on_invalid_dependency() public {
        address fake = makeAddr("fake");

        vm.expectRevert(abi.encodeWithSelector(ReferralController.InvalidDependency.selector, fake));
        new ReferralController(admin, pauser, configManager, fake, address(cft), address(escrow));
    }

    function test_bind_sponsor_success() public {
        _markInviteeEligible(invitee1);

        uint256 nowTs = block.timestamp;

        vm.prank(invitee1);
        referral.bindSponsor(sponsor);

        assertEq(referral.sponsorOf(invitee1), sponsor);
        assertEq(referral.referralBoundAt(invitee1), uint64(nowTs));
        assertFalse(referral.isSuccessfulReferralRecorded(invitee1));
    }

    function test_bind_sponsor_reverts_on_zero_address() public {
        _markInviteeEligible(invitee1);

        vm.prank(invitee1);
        vm.expectRevert(ReferralController.ZeroAddress.selector);
        referral.bindSponsor(address(0));
    }

    function test_bind_sponsor_reverts_on_self_referral() public {
        _markInviteeEligible(invitee1);
        shield.setActiveMember(invitee1, true);

        vm.prank(invitee1);
        vm.expectRevert(ReferralController.SelfReferral.selector);
        referral.bindSponsor(invitee1);
    }

    function test_bind_sponsor_reverts_if_invitee_not_eligible() public {
        vm.prank(invitee1);
        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.InviteeNotEligible.selector, invitee1)
        );
        referral.bindSponsor(sponsor);
    }

    function test_bind_sponsor_reverts_if_invitee_already_active_member() public {
        _markInviteeEligible(invitee1);
        shield.setActiveMember(invitee1, true);

        vm.prank(invitee1);
        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.InviteeAlreadyActiveMember.selector, invitee1)
        );
        referral.bindSponsor(sponsor);
    }

    function test_bind_sponsor_reverts_if_sponsor_not_eligible() public {
        _markInviteeEligible(invitee1);
        shield.setActiveMember(sponsor, false);

        vm.prank(invitee1);
        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.SponsorNotEligible.selector, sponsor)
        );
        referral.bindSponsor(sponsor);
    }

    function test_bind_sponsor_reverts_if_sponsor_is_system_exempt() public {
        _markInviteeEligible(invitee1);
        shield.setSystemExempt(sponsor, true);

        vm.prank(invitee1);
        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.SponsorSystemExempt.selector, sponsor)
        );
        referral.bindSponsor(sponsor);
    }

    function test_bind_sponsor_reverts_when_already_bound() public {
        _markInviteeEligible(invitee1);

        vm.prank(invitee1);
        referral.bindSponsor(sponsor);

        vm.prank(invitee1);
        vm.expectRevert(
            abi.encodeWithSelector(
                ReferralController.SponsorAlreadyBound.selector, invitee1, sponsor
            )
        );
        referral.bindSponsor(outsider);
    }

    function test_record_successful_mint_reverts_without_sponsor() public {
        shield.setActiveMember(invitee1, true);

        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.NoSponsorBound.selector, invitee1)
        );
        referral.recordSuccessfulMint(invitee1);
    }

    function test_record_successful_mint_reverts_if_invitee_not_active_member() public {
        _markInviteeEligible(invitee1);
        _bind(invitee1);

        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.InviteeNotActiveMember.selector, invitee1)
        );
        referral.recordSuccessfulMint(invitee1);
    }

    function test_first_successful_referral_records_without_reward() public {
        _completeReferral(invitee1);

        assertEq(referral.successfulReferralMints(sponsor), 1);
        assertEq(referral.liquidPairsRewarded(sponsor), 0);
        assertEq(referral.escrowPairsCreated(sponsor), 0);

        assertEq(cft.balanceOf(sponsor), 0);
        assertEq(escrow.nextGrantId(), 0);

        assertTrue(referral.isSuccessfulReferralRecorded(invitee1));
        assertEq(referral.completedPairs(sponsor), 0);
        assertEq(referral.mintsUntilNextPair(sponsor), 1);
        assertFalse(referral.nextPairWillBeEscrowed(sponsor));
    }

    function test_second_successful_referral_issues_liquid_reward() public {
        _completeReferral(invitee1);
        _completeReferral(invitee2);

        assertEq(referral.successfulReferralMints(sponsor), 2);
        assertEq(referral.liquidPairsRewarded(sponsor), 1);
        assertEq(referral.escrowPairsCreated(sponsor), 0);

        assertEq(cft.balanceOf(sponsor), referral.PAIR_REWARD());
        assertEq(cft.totalMinted(), referral.PAIR_REWARD());
        assertEq(escrow.nextGrantId(), 0);

        assertEq(referral.completedPairs(sponsor), 1);
        assertEq(referral.mintsUntilNextPair(sponsor), 2);
        assertTrue(referral.nextPairWillBeEscrowed(sponsor));
    }

    function test_fourth_successful_referral_creates_escrow_grant() public {
        _completeReferral(invitee1);
        _completeReferral(invitee2);
        _completeReferral(invitee3);

        uint64 expectedUnlockAt = uint64(block.timestamp + referral.ESCROW_DURATION());

        _completeReferral(invitee4);

        assertEq(referral.successfulReferralMints(sponsor), 4);
        assertEq(referral.liquidPairsRewarded(sponsor), 1);
        assertEq(referral.escrowPairsCreated(sponsor), 1);

        assertEq(cft.balanceOf(sponsor), referral.PAIR_REWARD());
        assertEq(escrow.nextGrantId(), 1);

        (address beneficiary, uint256 amount, uint64 unlockAt) = escrow.grants(1);
        assertEq(beneficiary, sponsor);
        assertEq(amount, referral.PAIR_REWARD());
        assertEq(unlockAt, expectedUnlockAt);

        assertEq(referral.completedPairs(sponsor), 2);
    }

    function test_record_successful_mint_reverts_on_duplicate_record() public {
        _completeReferral(invitee1);

        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.ReferralAlreadyRecorded.selector, invitee1)
        );
        referral.recordSuccessfulMint(invitee1);
    }

    function test_record_successful_mint_rechecks_sponsor_eligibility() public {
        _markInviteeEligible(invitee1);
        _bind(invitee1);

        shield.setActiveMember(invitee1, true);
        shield.setActiveMember(sponsor, false);

        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.SponsorNotEligible.selector, sponsor)
        );
        referral.recordSuccessfulMint(invitee1);
    }

    function test_record_successful_mint_reverts_when_reward_token_not_configured() public {
        ReferralController noToken = _deploy(address(0), address(escrow));

        _markInviteeEligible(invitee1);
        vm.prank(invitee1);
        noToken.bindSponsor(sponsor);
        shield.setActiveMember(invitee1, true);
        noToken.recordSuccessfulMint(invitee1);

        _markInviteeEligible(invitee2);
        vm.prank(invitee2);
        noToken.bindSponsor(sponsor);
        shield.setActiveMember(invitee2, true);

        vm.expectRevert(ReferralController.RewardTokenNotConfigured.selector);
        noToken.recordSuccessfulMint(invitee2);
    }

    function test_record_successful_mint_reverts_when_reward_escrow_not_configured() public {
        ReferralController noEscrow = _deploy(address(cft), address(0));

        _markInviteeEligible(invitee1);
        vm.prank(invitee1);
        noEscrow.bindSponsor(sponsor);
        shield.setActiveMember(invitee1, true);
        noEscrow.recordSuccessfulMint(invitee1);

        _markInviteeEligible(invitee2);
        vm.prank(invitee2);
        noEscrow.bindSponsor(sponsor);
        shield.setActiveMember(invitee2, true);
        noEscrow.recordSuccessfulMint(invitee2);

        _markInviteeEligible(invitee3);
        vm.prank(invitee3);
        noEscrow.bindSponsor(sponsor);
        shield.setActiveMember(invitee3, true);
        noEscrow.recordSuccessfulMint(invitee3);

        _markInviteeEligible(invitee4);
        vm.prank(invitee4);
        noEscrow.bindSponsor(sponsor);
        shield.setActiveMember(invitee4, true);

        vm.expectRevert(ReferralController.RewardEscrowNotConfigured.selector);
        noEscrow.recordSuccessfulMint(invitee4);
    }

    function test_set_reward_token_and_reward_escrow() public {
        ReferralController noConfig = _deploy(address(0), address(0));
        MockCFTMintable newToken = new MockCFTMintable();
        MockRewardEscrow newEscrow = new MockRewardEscrow();

        vm.prank(configManager);
        noConfig.setRewardToken(address(newToken));

        vm.prank(configManager);
        noConfig.setRewardEscrow(address(newEscrow));

        assertEq(address(noConfig.rewardToken()), address(newToken));
        assertEq(address(noConfig.rewardEscrow()), address(newEscrow));
    }

    function test_set_reward_token_and_reward_escrow_revert_for_non_role() public {
        MockCFTMintable newToken = new MockCFTMintable();
        MockRewardEscrow newEscrow = new MockRewardEscrow();

        vm.prank(outsider);
        vm.expectRevert();
        referral.setRewardToken(address(newToken));

        vm.prank(outsider);
        vm.expectRevert();
        referral.setRewardEscrow(address(newEscrow));
    }

    function test_pause_blocks_bind_and_record() public {
        _markInviteeEligible(invitee1);

        vm.prank(pauser);
        referral.pause();

        vm.prank(invitee1);
        vm.expectRevert();
        referral.bindSponsor(sponsor);

        vm.prank(pauser);
        referral.unpause();

        vm.prank(invitee1);
        referral.bindSponsor(sponsor);

        shield.setActiveMember(invitee1, true);

        vm.prank(pauser);
        referral.pause();

        vm.expectRevert();
        referral.recordSuccessfulMint(invitee1);
    }

    function test_views_can_sponsor_and_bind_referral() public {
        _markInviteeEligible(invitee1);

        assertTrue(referral.canSponsor(sponsor));
        assertTrue(referral.canBindReferral(invitee1, sponsor));

        vm.prank(invitee1);
        referral.bindSponsor(sponsor);

        assertFalse(referral.canBindReferral(invitee1, sponsor));
    }

    function test_get_sponsor_summary() public {
        _completeReferral(invitee1);
        _completeReferral(invitee2);
        _completeReferral(invitee3);

        (
            uint256 successfulMints,
            uint256 pairCount,
            uint256 liquidPairsPaid,
            uint256 escrowPairsIssued,
            uint256 nextRewardInMints,
            bool nextPairIsEscrowed
        ) = referral.getSponsorSummary(sponsor);

        assertEq(successfulMints, 3);
        assertEq(pairCount, 1);
        assertEq(liquidPairsPaid, 1);
        assertEq(escrowPairsIssued, 0);
        assertEq(nextRewardInMints, 1);
        assertTrue(nextPairIsEscrowed);
    }
}
