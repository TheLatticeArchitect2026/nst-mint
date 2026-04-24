// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";
import { ERC20 } from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

import { ShieldRegistry } from "../../src/ShieldRegistry.sol";
import { NSTSBT } from "../../src/NSTSBT.sol";
import { CFTv2 } from "../../src/CFTv2.sol";
import { RewardEscrow } from "../../src/RewardEscrow.sol";
import { ReferralController } from "../../src/ReferralController.sol";

contract MockERC20ReferralFlow is ERC20 {
    constructor(
        string memory name_,
        string memory symbol_
    ) ERC20(name_, symbol_) { }

    function mint(
        address to,
        uint256 amount
    ) external {
        _mint(to, amount);
    }
}

contract MockRouterReferralFlow {
    address public immutable weth;

    constructor(
        address weth_
    ) {
        weth = weth_;
    }

    receive() external payable { }

    function WETH() external view returns (address) {
        return weth;
    }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256,
        address[] calldata,
        address,
        uint256
    ) external payable { }
}

contract ReferralMintFlowTest is Test {
    uint256 internal constant MINT_PRICE = 0.02 ether;
    uint256 internal constant PAIR_REWARD = 500 ether;

    ShieldRegistry internal shield;
    NSTSBT internal nst;
    CFTv2 internal cft;
    RewardEscrow internal rewardEscrow;
    ReferralController internal referral;

    MockERC20ReferralFlow internal weth;
    MockRouterReferralFlow internal router;

    address internal admin;
    address internal pauser;
    address internal vettingManager;
    address internal banManager;
    address internal exemptionManager;
    address internal profileManager;
    address internal configManager;

    address internal founderTreasury;
    address internal firstNationsTreasury;
    address internal virilityTreasury;
    address internal yieldPool;
    address internal buildingTreasury;
    address internal genesis;

    address internal mintManager;
    address internal metadataManager;
    address internal treasuryManager;
    address internal swapOperator;

    address internal initialGrantCreator;

    address internal sponsor;
    address internal invitee1;
    address internal invitee2;
    address internal invitee3;
    address internal invitee4;

    function setUp() public {
        admin = makeAddr("admin");
        pauser = makeAddr("pauser");
        vettingManager = makeAddr("vettingManager");
        banManager = makeAddr("banManager");
        exemptionManager = makeAddr("exemptionManager");
        profileManager = makeAddr("profileManager");
        configManager = makeAddr("configManager");

        founderTreasury = makeAddr("founderTreasury");
        firstNationsTreasury = makeAddr("firstNationsTreasury");
        virilityTreasury = makeAddr("virilityTreasury");
        yieldPool = makeAddr("yieldPool");
        buildingTreasury = makeAddr("buildingTreasury");
        genesis = makeAddr("genesis");

        mintManager = makeAddr("mintManager");
        metadataManager = makeAddr("metadataManager");
        treasuryManager = makeAddr("treasuryManager");
        swapOperator = makeAddr("swapOperator");

        initialGrantCreator = makeAddr("initialGrantCreator");

        sponsor = makeAddr("sponsor");
        invitee1 = makeAddr("invitee1");
        invitee2 = makeAddr("invitee2");
        invitee3 = makeAddr("invitee3");
        invitee4 = makeAddr("invitee4");

        shield = new ShieldRegistry(
            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, address(0)
        );

        vm.prank(vettingManager);
        shield.setVetted(genesis, true);

        weth = new MockERC20ReferralFlow("Wrapped Ether", "WETH");
        router = new MockRouterReferralFlow(address(weth));

        cft = new CFTv2(
            admin,
            pauser,
            configManager,
            address(shield),
            founderTreasury,
            firstNationsTreasury,
            virilityTreasury,
            yieldPool,
            buildingTreasury,
            "Canada Forever Token",
            "CFT"
        );

        _setSystemExempt(founderTreasury, true);
        _setSystemExempt(firstNationsTreasury, true);
        _setSystemExempt(virilityTreasury, true);
        _setSystemExempt(yieldPool, true);
        _setSystemExempt(buildingTreasury, true);

        nst = new NSTSBT(
            admin,
            genesis,
            founderTreasury,
            address(shield),
            address(router),
            address(cft),
            yieldPool,
            pauser,
            mintManager,
            metadataManager,
            treasuryManager,
            swapOperator,
            "NST Lattice",
            "NST"
        );

        vm.prank(admin);
        shield.setMembershipToken(address(nst));

        rewardEscrow = new RewardEscrow(
            admin, pauser, configManager, initialGrantCreator, address(shield), address(cft)
        );

        referral = new ReferralController(
            admin, pauser, configManager, address(shield), address(cft), address(rewardEscrow)
        );

        bytes32 grantCreatorRole = rewardEscrow.GRANT_CREATOR_ROLE();
        vm.prank(admin);
        rewardEscrow.grantRole(grantCreatorRole, address(referral));

        vm.prank(configManager);
        cft.setDirectMinter(address(referral), true);

        vm.prank(configManager);
        cft.setDirectMinter(address(rewardEscrow), true);

        vm.deal(sponsor, 10 ether);
        vm.deal(invitee1, 10 ether);
        vm.deal(invitee2, 10 ether);
        vm.deal(invitee3, 10 ether);
        vm.deal(invitee4, 10 ether);
    }

    function _setSystemExempt(
        address account,
        bool value
    ) internal {
        vm.prank(exemptionManager);
        shield.setSystemExempt(account, value);
    }

    function _vet(
        address account
    ) internal {
        vm.prank(vettingManager);
        shield.setVetted(account, true);
    }

    function _ban(
        address account,
        bytes32 reasonHash
    ) internal {
        vm.prank(banManager);
        shield.banAccount(account, reasonHash);
    }

    function _mintNST(
        address account
    ) internal returns (uint256 tokenId) {
        vm.prank(account);
        tokenId = nst.mint{ value: MINT_PRICE }();
    }

    function _activateMember(
        address account
    ) internal {
        _vet(account);
        _mintNST(account);
        assertTrue(shield.activeMember(account));
    }

    function _bindInvitee(
        address invitee
    ) internal {
        _vet(invitee);

        vm.prank(invitee);
        referral.bindSponsor(sponsor);

        assertEq(referral.sponsorOf(invitee), sponsor);
        assertFalse(shield.activeMember(invitee));
    }

    function _completeInvitee(
        address invitee
    ) internal {
        _bindInvitee(invitee);
        _mintNST(invitee);
        referral.recordSuccessfulMint(invitee);

        assertTrue(shield.activeMember(invitee));
        assertTrue(referral.isSuccessfulReferralRecorded(invitee));
    }

    function test_flow_sponsor_must_be_active_member_before_referrals_bind() public {
        _vet(sponsor);
        assertFalse(shield.activeMember(sponsor));

        _vet(invitee1);

        vm.prank(invitee1);
        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.SponsorNotEligible.selector, sponsor)
        );
        referral.bindSponsor(sponsor);
    }

    function test_flow_first_completed_pair_issues_liquid_reward() public {
        _activateMember(sponsor);

        _completeInvitee(invitee1);
        assertEq(referral.successfulReferralMints(sponsor), 1);
        assertEq(cft.balanceOf(sponsor), 0);
        assertEq(referral.completedPairs(sponsor), 0);

        _completeInvitee(invitee2);
        assertEq(referral.successfulReferralMints(sponsor), 2);
        assertEq(referral.completedPairs(sponsor), 1);
        assertEq(referral.liquidPairsRewarded(sponsor), 1);
        assertEq(referral.escrowPairsCreated(sponsor), 0);
        assertEq(cft.balanceOf(sponsor), PAIR_REWARD);
    }

    function test_flow_second_completed_pair_creates_escrow_and_claims() public {
        _activateMember(sponsor);

        _completeInvitee(invitee1);
        _completeInvitee(invitee2);
        _completeInvitee(invitee3);
        _completeInvitee(invitee4);

        assertEq(referral.successfulReferralMints(sponsor), 4);
        assertEq(referral.completedPairs(sponsor), 2);
        assertEq(referral.liquidPairsRewarded(sponsor), 1);
        assertEq(referral.escrowPairsCreated(sponsor), 1);
        assertEq(cft.balanceOf(sponsor), PAIR_REWARD);
        assertEq(rewardEscrow.nextGrantId(), 1);

        (address beneficiary, uint256 amount, uint64 unlockAt, bool claimed) =
            rewardEscrow.getGrant(1);

        assertEq(beneficiary, sponsor);
        assertEq(amount, PAIR_REWARD);
        assertFalse(claimed);
        assertGt(unlockAt, block.timestamp);

        vm.warp(unlockAt);

        vm.prank(sponsor);
        uint256 claimedAmount = rewardEscrow.claim(1);

        assertEq(claimedAmount, PAIR_REWARD);
        assertEq(cft.balanceOf(sponsor), PAIR_REWARD * 2);
        assertTrue(rewardEscrow.isClaimed(1));
    }

    function test_flow_banned_sponsor_blocks_recording_new_successful_referral() public {
        _activateMember(sponsor);

        _bindInvitee(invitee1);
        _mintNST(invitee1);

        _ban(sponsor, keccak256("sponsor-banned-before-record"));

        vm.expectRevert(
            abi.encodeWithSelector(ReferralController.SponsorNotEligible.selector, sponsor)
        );
        referral.recordSuccessfulMint(invitee1);

        assertFalse(referral.isSuccessfulReferralRecorded(invitee1));
        assertEq(referral.successfulReferralMints(sponsor), 0);
        assertEq(cft.balanceOf(sponsor), 0);
    }

    function test_flow_banned_sponsor_cannot_claim_escrow_reward() public {
        _activateMember(sponsor);

        _completeInvitee(invitee1);
        _completeInvitee(invitee2);
        _completeInvitee(invitee3);
        _completeInvitee(invitee4);

        (,, uint64 unlockAt,) = rewardEscrow.getGrant(1);

        _ban(sponsor, keccak256("sponsor-banned-before-claim"));

        vm.warp(unlockAt);

        vm.prank(sponsor);
        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.BannedAccount.selector, sponsor));
        rewardEscrow.claim(1);

        assertEq(cft.balanceOf(sponsor), PAIR_REWARD);
        assertFalse(rewardEscrow.isClaimed(1));
    }

    function test_flow_invitee_becomes_active_member_only_after_successful_mint() public {
        _activateMember(sponsor);

        _vet(invitee1);
        assertFalse(shield.activeMember(invitee1));
        assertTrue(shield.isMintEligible(invitee1));

        vm.prank(invitee1);
        referral.bindSponsor(sponsor);

        assertEq(referral.sponsorOf(invitee1), sponsor);
        assertFalse(referral.isSuccessfulReferralRecorded(invitee1));
        assertFalse(shield.activeMember(invitee1));

        _mintNST(invitee1);

        assertTrue(shield.activeMember(invitee1));

        referral.recordSuccessfulMint(invitee1);

        assertTrue(referral.isSuccessfulReferralRecorded(invitee1));
        assertEq(referral.successfulReferralMints(sponsor), 1);
    }
}
