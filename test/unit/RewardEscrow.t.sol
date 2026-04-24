// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";
import { ERC20 } from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

import { RewardEscrow } from "../../src/RewardEscrow.sol";

contract MockShieldRegistryEscrow {
    mapping(address => bool) public activeMembers;
    mapping(address => bool) public banned;

    function setActiveMember(
        address account,
        bool value
    ) external {
        activeMembers[account] = value;
    }

    function setBanned(
        address account,
        bool value
    ) external {
        banned[account] = value;
    }

    function activeMember(
        address account
    ) external view returns (bool) {
        return activeMembers[account];
    }

    function isBanned(
        address account
    ) external view returns (bool) {
        return banned[account];
    }
}

contract MockMintableERC20 is ERC20 {
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

contract RewardEscrowTest is Test {
    RewardEscrow internal escrow;
    MockShieldRegistryEscrow internal shield;
    MockMintableERC20 internal rewardToken;
    MockMintableERC20 internal miscToken;

    address internal admin;
    address internal pauser;
    address internal configManager;
    address internal grantCreator;

    address internal alice;
    address internal bob;
    address internal outsider;

    function setUp() public {
        admin = makeAddr("admin");
        pauser = makeAddr("pauser");
        configManager = makeAddr("configManager");
        grantCreator = makeAddr("grantCreator");

        alice = makeAddr("alice");
        bob = makeAddr("bob");
        outsider = makeAddr("outsider");

        shield = new MockShieldRegistryEscrow();
        rewardToken = new MockMintableERC20("Canada Forever Token", "CFT");
        miscToken = new MockMintableERC20("Misc Token", "MISC");

        shield.setActiveMember(alice, true);
        shield.setActiveMember(bob, true);

        escrow = _deployEscrow(address(rewardToken));
    }

    function _deployEscrow(
        address rewardToken_
    ) internal returns (RewardEscrow deployed) {
        deployed = new RewardEscrow(
            admin, pauser, configManager, grantCreator, address(shield), rewardToken_
        );
    }

    function _createGrant(
        address beneficiary,
        uint256 amount,
        uint64 unlockAt
    ) internal returns (uint256 grantId) {
        vm.prank(grantCreator);
        grantId = escrow.createGrant(beneficiary, amount, unlockAt);
    }

    function test_constructor_sets_roles_and_dependencies() public view {
        assertTrue(escrow.hasRole(escrow.DEFAULT_ADMIN_ROLE(), admin));
        assertTrue(escrow.hasRole(escrow.PAUSER_ROLE(), pauser));
        assertTrue(escrow.hasRole(escrow.CONFIG_MANAGER_ROLE(), configManager));
        assertTrue(escrow.hasRole(escrow.GRANT_CREATOR_ROLE(), grantCreator));

        assertEq(address(escrow.SHIELD_REGISTRY()), address(shield));
        assertEq(address(escrow.rewardToken()), address(rewardToken));
        assertEq(escrow.nextGrantId(), 0);
    }

    function test_constructor_reverts_on_zero_required_addresses() public {
        vm.expectRevert(RewardEscrow.ZeroAddress.selector);
        new RewardEscrow(
            address(0), pauser, configManager, grantCreator, address(shield), address(rewardToken)
        );

        vm.expectRevert(RewardEscrow.ZeroAddress.selector);
        new RewardEscrow(
            admin, pauser, configManager, grantCreator, address(0), address(rewardToken)
        );
    }

    function test_constructor_reverts_on_invalid_role_holder() public {
        vm.expectRevert(RewardEscrow.InvalidRoleHolder.selector);
        new RewardEscrow(
            admin, address(0), configManager, grantCreator, address(shield), address(rewardToken)
        );
    }

    function test_constructor_reverts_on_invalid_dependency() public {
        address fake = makeAddr("fake");

        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.InvalidDependency.selector, fake));
        new RewardEscrow(admin, pauser, configManager, grantCreator, fake, address(rewardToken));
    }

    function test_create_grant_success_and_getters() public {
        uint64 unlockAt = uint64(block.timestamp + 30 days);
        uint256 amount = 500 ether;

        uint256 grantId = _createGrant(alice, amount, unlockAt);

        assertEq(grantId, 1);
        assertEq(escrow.nextGrantId(), 1);
        assertEq(escrow.beneficiaryOf(grantId), alice);
        assertEq(escrow.amountOf(grantId), amount);
        assertEq(escrow.unlockAtOf(grantId), unlockAt);
        assertFalse(escrow.isClaimed(grantId));

        (address beneficiary, uint256 storedAmount, uint64 storedUnlockAt, bool claimed) =
            escrow.getGrant(grantId);

        assertEq(beneficiary, alice);
        assertEq(storedAmount, amount);
        assertEq(storedUnlockAt, unlockAt);
        assertFalse(claimed);
    }

    function test_create_grant_reverts_for_invalid_beneficiary() public {
        vm.prank(grantCreator);
        vm.expectRevert(
            abi.encodeWithSelector(RewardEscrow.InvalidBeneficiary.selector, address(0))
        );
        escrow.createGrant(address(0), 500 ether, uint64(block.timestamp + 1 days));
    }

    function test_create_grant_reverts_for_invalid_amount() public {
        vm.prank(grantCreator);
        vm.expectRevert(RewardEscrow.InvalidAmount.selector);
        escrow.createGrant(alice, 0, uint64(block.timestamp + 1 days));
    }

    function test_create_grant_reverts_for_banned_beneficiary() public {
        shield.setBanned(alice, true);

        vm.prank(grantCreator);
        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.BannedAccount.selector, alice));
        escrow.createGrant(alice, 500 ether, uint64(block.timestamp + 1 days));
    }

    function test_create_grant_reverts_for_non_active_beneficiary() public {
        shield.setActiveMember(alice, false);

        vm.prank(grantCreator);
        vm.expectRevert(
            abi.encodeWithSelector(RewardEscrow.BeneficiaryNotActiveMember.selector, alice)
        );
        escrow.createGrant(alice, 500 ether, uint64(block.timestamp + 1 days));
    }

    function test_create_grant_reverts_for_unlock_at_not_in_future() public {
        uint64 currentTs = uint64(block.timestamp);

        vm.prank(grantCreator);
        vm.expectRevert(
            abi.encodeWithSelector(RewardEscrow.InvalidUnlockAt.selector, currentTs, currentTs)
        );
        escrow.createGrant(alice, 500 ether, currentTs);
    }

    function test_claim_success_after_unlock() public {
        uint64 unlockAt = uint64(block.timestamp + 7 days);
        uint256 amount = 500 ether;

        uint256 grantId = _createGrant(alice, amount, unlockAt);

        vm.warp(unlockAt);

        vm.prank(alice);
        uint256 claimedAmount = escrow.claim(grantId);

        assertEq(claimedAmount, amount);
        assertEq(rewardToken.balanceOf(alice), amount);
        assertEq(escrow.isClaimed(grantId), true);
        assertEq(escrow.isClaimable(grantId), false);
    }

    function test_claim_reverts_when_not_beneficiary() public {
        uint256 grantId = _createGrant(alice, 500 ether, uint64(block.timestamp + 1 days));

        vm.prank(outsider);
        vm.expectRevert(
            abi.encodeWithSelector(RewardEscrow.NotBeneficiary.selector, alice, outsider)
        );
        escrow.claim(grantId);
    }

    function test_claim_reverts_when_not_mature() public {
        uint64 unlockAt = uint64(block.timestamp + 1 days);
        uint256 grantId = _createGrant(alice, 500 ether, unlockAt);

        vm.prank(alice);
        vm.expectRevert(
            abi.encodeWithSelector(
                RewardEscrow.GrantNotMature.selector, unlockAt, uint64(block.timestamp)
            )
        );
        escrow.claim(grantId);
    }

    function test_claim_reverts_when_already_claimed() public {
        uint64 unlockAt = uint64(block.timestamp + 1 days);
        uint256 grantId = _createGrant(alice, 500 ether, unlockAt);

        vm.warp(unlockAt);

        vm.prank(alice);
        escrow.claim(grantId);

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.GrantAlreadyClaimed.selector, grantId));
        escrow.claim(grantId);
    }

    function test_claim_reverts_when_beneficiary_banned_before_claim() public {
        uint64 unlockAt = uint64(block.timestamp + 1 days);
        uint256 grantId = _createGrant(alice, 500 ether, unlockAt);

        vm.warp(unlockAt);
        shield.setBanned(alice, true);

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.BannedAccount.selector, alice));
        escrow.claim(grantId);
    }

    function test_claim_reverts_when_beneficiary_not_active_before_claim() public {
        uint64 unlockAt = uint64(block.timestamp + 1 days);
        uint256 grantId = _createGrant(alice, 500 ether, unlockAt);

        vm.warp(unlockAt);
        shield.setActiveMember(alice, false);

        vm.prank(alice);
        vm.expectRevert(
            abi.encodeWithSelector(RewardEscrow.BeneficiaryNotActiveMember.selector, alice)
        );
        escrow.claim(grantId);
    }

    function test_claim_reverts_when_reward_token_not_configured() public {
        RewardEscrow noTokenEscrow = _deployEscrow(address(0));

        vm.prank(grantCreator);
        uint256 grantId =
            noTokenEscrow.createGrant(alice, 500 ether, uint64(block.timestamp + 1 days));

        vm.warp(block.timestamp + 1 days);

        vm.prank(alice);
        vm.expectRevert(RewardEscrow.RewardTokenNotConfigured.selector);
        noTokenEscrow.claim(grantId);
    }

    function test_batch_claim_success() public {
        uint64 unlockAt = uint64(block.timestamp + 5 days);

        uint256 grantId1 = _createGrant(alice, 500 ether, unlockAt);
        uint256 grantId2 = _createGrant(alice, 750 ether, unlockAt);

        uint256[] memory grantIds = new uint256[](2);
        grantIds[0] = grantId1;
        grantIds[1] = grantId2;

        vm.warp(unlockAt);

        vm.prank(alice);
        uint256 totalClaimed = escrow.batchClaim(grantIds);

        assertEq(totalClaimed, 1250 ether);
        assertEq(rewardToken.balanceOf(alice), 1250 ether);
        assertTrue(escrow.isClaimed(grantId1));
        assertTrue(escrow.isClaimed(grantId2));
    }

    function test_batch_claim_reverts_on_empty_array() public {
        uint256[] memory grantIds = new uint256[](0);

        vm.prank(alice);
        vm.expectRevert(RewardEscrow.EmptyArray.selector);
        escrow.batchClaim(grantIds);
    }

    function test_batch_claim_reverts_for_non_beneficiary() public {
        uint64 unlockAt = uint64(block.timestamp + 1 days);
        uint256 grantId = _createGrant(alice, 500 ether, unlockAt);

        uint256[] memory grantIds = new uint256[](1);
        grantIds[0] = grantId;

        vm.warp(unlockAt);

        vm.prank(outsider);
        vm.expectRevert(
            abi.encodeWithSelector(RewardEscrow.BeneficiaryNotActiveMember.selector, outsider)
        );
        escrow.batchClaim(grantIds);
    }

    function test_batch_claim_reverts_when_any_grant_not_mature() public {
        uint64 unlockAt1 = uint64(block.timestamp + 1 days);
        uint64 unlockAt2 = uint64(block.timestamp + 2 days);

        uint256 grantId1 = _createGrant(alice, 500 ether, unlockAt1);
        uint256 grantId2 = _createGrant(alice, 500 ether, unlockAt2);

        uint256[] memory grantIds = new uint256[](2);
        grantIds[0] = grantId1;
        grantIds[1] = grantId2;

        vm.warp(unlockAt1);

        vm.prank(alice);
        vm.expectRevert(
            abi.encodeWithSelector(RewardEscrow.GrantNotMature.selector, unlockAt2, unlockAt1)
        );
        escrow.batchClaim(grantIds);
    }

    function test_set_reward_token_and_rescue_erc20() public {
        RewardEscrow noTokenEscrow = _deployEscrow(address(0));
        MockMintableERC20 newRewardToken = new MockMintableERC20("New Reward", "NRW");

        vm.prank(configManager);
        noTokenEscrow.setRewardToken(address(newRewardToken));

        assertEq(address(noTokenEscrow.rewardToken()), address(newRewardToken));

        miscToken.mint(address(noTokenEscrow), 123 ether);

        vm.prank(configManager);
        noTokenEscrow.rescueERC20(address(miscToken), bob, 123 ether);

        assertEq(miscToken.balanceOf(bob), 123 ether);
        assertEq(miscToken.balanceOf(address(noTokenEscrow)), 0);
    }

    function test_set_reward_token_and_rescue_revert_for_non_role() public {
        MockMintableERC20 newRewardToken = new MockMintableERC20("New Reward", "NRW");

        vm.prank(outsider);
        vm.expectRevert();
        escrow.setRewardToken(address(newRewardToken));

        vm.prank(outsider);
        vm.expectRevert();
        escrow.rescueERC20(address(miscToken), bob, 1 ether);
    }

    function test_pause_blocks_create_and_claim() public {
        uint64 unlockAt = uint64(block.timestamp + 1 days);

        vm.prank(pauser);
        escrow.pause();

        vm.prank(grantCreator);
        vm.expectRevert();
        escrow.createGrant(alice, 500 ether, unlockAt);

        vm.prank(pauser);
        escrow.unpause();

        uint256 grantId = _createGrant(alice, 500 ether, unlockAt);

        vm.prank(pauser);
        escrow.pause();

        vm.warp(unlockAt);

        vm.prank(alice);
        vm.expectRevert();
        escrow.claim(grantId);
    }

    function test_getters_revert_for_missing_grant() public {
        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.GrantNotFound.selector, 999));
        escrow.beneficiaryOf(999);

        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.GrantNotFound.selector, 999));
        escrow.getGrant(999);
    }

    function test_is_claimable_reflects_lifecycle() public {
        uint64 unlockAt = uint64(block.timestamp + 1 days);
        uint256 grantId = _createGrant(alice, 500 ether, unlockAt);

        assertFalse(escrow.isClaimable(grantId));

        vm.warp(unlockAt);
        assertTrue(escrow.isClaimable(grantId));

        shield.setBanned(alice, true);
        assertFalse(escrow.isClaimable(grantId));
    }
}
