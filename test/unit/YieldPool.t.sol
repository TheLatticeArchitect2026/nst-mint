// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";
import { ERC20 } from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import { YieldPool } from "../../src/YieldPool.sol";

contract MockYieldPoolERC20 is ERC20 {
    constructor() ERC20("Mock Yield Asset", "MYA") { }

    function mint(
        address to,
        uint256 amount
    ) external {
        _mint(to, amount);
    }
}

contract RejectETHReceiver {
    receive() external payable {
        revert("REJECT_ETH");
    }
}

contract YieldPoolTest is Test {
    YieldPool internal pool;
    MockYieldPoolERC20 internal token;

    address internal admin;
    address internal pauser;
    address internal assetManager;
    address internal grantManager;
    address internal claimManager;
    address internal rescueManager;

    address internal alice;
    address internal bob;
    address internal carol;

    bytes32 internal constant PURPOSE_HASH = keccak256("yield-purpose");
    bytes32 internal constant METADATA_HASH = keccak256("yield-metadata");
    bytes32 internal constant REASON_HASH = keccak256("cancel-reason");

    function setUp() public {
        admin = makeAddr("admin");
        pauser = makeAddr("pauser");
        assetManager = makeAddr("assetManager");
        grantManager = makeAddr("grantManager");
        claimManager = makeAddr("claimManager");
        rescueManager = makeAddr("rescueManager");

        alice = makeAddr("alice");
        bob = makeAddr("bob");
        carol = makeAddr("carol");

        pool = new YieldPool(admin, pauser, assetManager, grantManager, claimManager, rescueManager);

        token = new MockYieldPoolERC20();

        vm.prank(assetManager);
        pool.setAssetAllowed(address(token), true);

        vm.deal(alice, 100 ether);
        vm.deal(bob, 1 ether);
        vm.deal(carol, 1 ether);

        token.mint(alice, 1_000_000 ether);

        vm.prank(alice);
        token.approve(address(pool), type(uint256).max);
    }

    function test_constructor_sets_roles_and_constants() public view {
        assertTrue(pool.hasRole(pool.DEFAULT_ADMIN_ROLE(), admin));
        assertTrue(pool.hasRole(pool.PAUSER_ROLE(), pauser));
        assertTrue(pool.hasRole(pool.ASSET_MANAGER_ROLE(), assetManager));
        assertTrue(pool.hasRole(pool.GRANT_MANAGER_ROLE(), grantManager));
        assertTrue(pool.hasRole(pool.CLAIM_MANAGER_ROLE(), claimManager));
        assertTrue(pool.hasRole(pool.RESCUE_MANAGER_ROLE(), rescueManager));

        assertEq(pool.NATIVE_ETH(), address(0));
        assertEq(pool.nextGrantId(), 1);
        assertTrue(pool.isAssetAllowed(address(0)));
        assertTrue(pool.isAssetAllowed(address(token)));
    }

    function test_constructor_reverts_on_zero_admin() public {
        vm.expectRevert(YieldPool.ZeroAddress.selector);

        new YieldPool(address(0), pauser, assetManager, grantManager, claimManager, rescueManager);
    }

    function test_constructor_reverts_on_zero_role_holder() public {
        vm.expectRevert(YieldPool.ZeroAddress.selector);

        new YieldPool(admin, address(0), assetManager, grantManager, claimManager, rescueManager);
    }

    function test_set_asset_allowed_reverts_for_non_manager() public {
        MockYieldPoolERC20 other = new MockYieldPoolERC20();

        vm.prank(alice);
        vm.expectRevert();
        pool.setAssetAllowed(address(other), true);
    }

    function test_set_asset_allowed_reverts_for_native_eth() public {
        vm.prank(assetManager);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.InvalidAsset.selector, address(0)));
        pool.setAssetAllowed(address(0), true);
    }

    function test_set_asset_allowed_reverts_for_eoa_asset() public {
        vm.prank(assetManager);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.InvalidAsset.selector, bob));
        pool.setAssetAllowed(bob, true);
    }

    function test_set_asset_allowed_can_disable_asset() public {
        assertTrue(pool.isAssetAllowed(address(token)));

        vm.prank(assetManager);
        pool.setAssetAllowed(address(token), false);

        assertFalse(pool.isAssetAllowed(address(token)));
    }

    function test_deposit_eth_success() public {
        vm.prank(alice);
        uint256 deposited = pool.depositETH{ value: 5 ether }(METADATA_HASH);

        assertEq(deposited, 5 ether);
        assertEq(address(pool).balance, 5 ether);
        assertEq(pool.totalDeposited(address(0)), 5 ether);
        assertEq(pool.totalReserved(address(0)), 0);
        assertEq(pool.availableBalance(address(0)), 5 ether);
    }

    function test_receive_eth_success() public {
        vm.prank(alice);
        (bool ok,) = address(pool).call{ value: 2 ether }("");

        assertTrue(ok);
        assertEq(address(pool).balance, 2 ether);
        assertEq(pool.totalDeposited(address(0)), 2 ether);
    }

    function test_fallback_rejects_direct_call_data() public {
        vm.prank(alice);
        (bool ok,) = address(pool).call{ value: 1 ether }(hex"12345678");

        assertFalse(ok);
        assertEq(address(pool).balance, 0);
        assertEq(pool.totalDeposited(address(0)), 0);
    }

    function test_deposit_eth_reverts_on_zero_amount() public {
        vm.prank(alice);
        vm.expectRevert(YieldPool.ZeroAmount.selector);
        pool.depositETH{ value: 0 }(METADATA_HASH);
    }

    function test_deposit_eth_reverts_when_paused() public {
        vm.prank(pauser);
        pool.pause();

        vm.prank(alice);
        vm.expectRevert();
        pool.depositETH{ value: 1 ether }(METADATA_HASH);
    }

    function test_unpause_restores_eth_deposit() public {
        vm.prank(pauser);
        pool.pause();

        vm.prank(pauser);
        pool.unpause();

        vm.prank(alice);
        pool.depositETH{ value: 1 ether }(METADATA_HASH);

        assertEq(address(pool).balance, 1 ether);
    }

    function test_receive_eth_reverts_when_paused() public {
        vm.prank(pauser);
        pool.pause();

        vm.prank(alice);
        (bool ok,) = address(pool).call{ value: 1 ether }("");

        assertFalse(ok);
        assertEq(address(pool).balance, 0);
    }

    function test_deposit_erc20_success() public {
        vm.prank(alice);
        uint256 received = pool.depositERC20(address(token), 10 ether, METADATA_HASH);

        assertEq(received, 10 ether);
        assertEq(token.balanceOf(address(pool)), 10 ether);
        assertEq(pool.totalDeposited(address(token)), 10 ether);
        assertEq(pool.availableBalance(address(token)), 10 ether);
    }

    function test_deposit_erc20_reverts_on_zero_amount() public {
        vm.prank(alice);
        vm.expectRevert(YieldPool.ZeroAmount.selector);
        pool.depositERC20(address(token), 0, METADATA_HASH);
    }

    function test_deposit_erc20_reverts_for_native_asset() public {
        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.InvalidAsset.selector, address(0)));
        pool.depositERC20(address(0), 1 ether, METADATA_HASH);
    }

    function test_deposit_erc20_reverts_for_unallowed_asset() public {
        MockYieldPoolERC20 other = new MockYieldPoolERC20();
        other.mint(alice, 10 ether);

        vm.prank(alice);
        other.approve(address(pool), type(uint256).max);

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.AssetNotAllowed.selector, address(other)));
        pool.depositERC20(address(other), 1 ether, METADATA_HASH);
    }

    function test_create_eth_grant_success() public {
        _depositETH(5 ether);

        uint256 grantId = _createETHGrant(bob, 2 ether);

        YieldPool.Grant memory grant = pool.getGrant(grantId);
        uint256[] memory ids = pool.beneficiaryGrantIds(bob);

        assertEq(grant.grantId, grantId);
        assertEq(grant.beneficiary, bob);
        assertEq(grant.asset, address(0));
        assertEq(grant.amount, 2 ether);
        assertEq(grant.createdAt, uint64(block.timestamp));
        assertEq(grant.purposeHash, PURPOSE_HASH);
        assertEq(grant.metadataHash, METADATA_HASH);
        assertFalse(grant.claimed);
        assertFalse(grant.canceled);

        assertEq(ids.length, 1);
        assertEq(ids[0], grantId);
        assertEq(pool.beneficiaryGrantCount(bob), 1);
        assertEq(pool.totalReserved(address(0)), 2 ether);
        assertEq(pool.availableBalance(address(0)), 3 ether);
    }

    function test_create_erc20_grant_success() public {
        _depositERC20(20 ether);

        uint256 grantId = _createERC20Grant(bob, 6 ether);

        YieldPool.Grant memory grant = pool.getGrant(grantId);

        assertEq(grant.asset, address(token));
        assertEq(grant.amount, 6 ether);
        assertEq(pool.totalReserved(address(token)), 6 ether);
        assertEq(pool.availableBalance(address(token)), 14 ether);
    }

    function test_create_grant_reverts_for_zero_beneficiary() public {
        _depositETH(1 ether);

        vm.prank(grantManager);
        vm.expectRevert(YieldPool.ZeroAddress.selector);
        pool.createGrant(address(0), address(0), 1 ether, 0, 0, PURPOSE_HASH, METADATA_HASH);
    }

    function test_create_grant_reverts_for_zero_amount() public {
        _depositETH(1 ether);

        vm.prank(grantManager);
        vm.expectRevert(YieldPool.ZeroAmount.selector);
        pool.createGrant(bob, address(0), 0, 0, 0, PURPOSE_HASH, METADATA_HASH);
    }

    function test_create_grant_reverts_for_unallowed_asset() public {
        MockYieldPoolERC20 other = new MockYieldPoolERC20();

        vm.prank(grantManager);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.AssetNotAllowed.selector, address(other)));
        pool.createGrant(bob, address(other), 1 ether, 0, 0, PURPOSE_HASH, METADATA_HASH);
    }

    function test_create_grant_reverts_for_insufficient_available_balance() public {
        _depositETH(1 ether);

        vm.prank(grantManager);
        vm.expectRevert(
            abi.encodeWithSelector(
                YieldPool.InsufficientAvailableBalance.selector, address(0), 2 ether, 1 ether
            )
        );
        pool.createGrant(bob, address(0), 2 ether, 0, 0, PURPOSE_HASH, METADATA_HASH);
    }

    function test_create_grant_reverts_for_expired_window() public {
        _depositETH(1 ether);

        vm.prank(grantManager);
        vm.expectRevert(YieldPool.InvalidTimeWindow.selector);
        pool.createGrant(
            bob, address(0), 1 ether, 0, uint64(block.timestamp), PURPOSE_HASH, METADATA_HASH
        );
    }

    function test_create_grant_reverts_when_unlock_is_after_expiry() public {
        _depositETH(1 ether);

        uint64 unlockAt = uint64(block.timestamp + 10 days);
        uint64 expiresAt = uint64(block.timestamp + 1 days);

        vm.prank(grantManager);
        vm.expectRevert(YieldPool.InvalidTimeWindow.selector);
        pool.createGrant(bob, address(0), 1 ether, unlockAt, expiresAt, PURPOSE_HASH, METADATA_HASH);
    }

    function test_claim_eth_success() public {
        _depositETH(5 ether);
        uint256 grantId = _createETHGrant(bob, 2 ether);

        uint256 beforeBalance = bob.balance;

        vm.prank(bob);
        uint256 claimed = pool.claim(grantId);

        YieldPool.Grant memory grant = pool.getGrant(grantId);

        assertEq(claimed, 2 ether);
        assertEq(bob.balance, beforeBalance + 2 ether);
        assertTrue(grant.claimed);
        assertEq(pool.totalReserved(address(0)), 0);
        assertEq(pool.totalClaimed(address(0)), 2 ether);
    }

    function test_claim_erc20_success() public {
        _depositERC20(10 ether);
        uint256 grantId = _createERC20Grant(bob, 4 ether);

        vm.prank(bob);
        uint256 claimed = pool.claim(grantId);

        assertEq(claimed, 4 ether);
        assertEq(token.balanceOf(bob), 4 ether);
        assertEq(pool.totalClaimed(address(token)), 4 ether);
        assertEq(pool.totalReserved(address(token)), 0);
    }

    function test_claim_reverts_for_unknown_grant() public {
        vm.prank(bob);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.UnknownGrant.selector, 999));
        pool.claim(999);
    }

    function test_claim_reverts_for_unauthorized_caller() public {
        _depositETH(5 ether);
        uint256 grantId = _createETHGrant(bob, 2 ether);

        vm.prank(alice);
        vm.expectRevert(
            abi.encodeWithSelector(YieldPool.UnauthorizedClaimant.selector, alice, grantId)
        );
        pool.claim(grantId);
    }

    function test_claim_reverts_before_unlock() public {
        _depositETH(5 ether);

        uint64 unlockAt = uint64(block.timestamp + 10 days);

        vm.prank(grantManager);
        uint256 grantId =
            pool.createGrant(bob, address(0), 2 ether, unlockAt, 0, PURPOSE_HASH, METADATA_HASH);

        vm.prank(bob);
        vm.expectRevert(
            abi.encodeWithSelector(YieldPool.GrantNotUnlocked.selector, grantId, unlockAt)
        );
        pool.claim(grantId);
    }

    function test_claim_reverts_after_expiry() public {
        _depositETH(5 ether);

        uint64 expiresAt = uint64(block.timestamp + 1 days);

        vm.prank(grantManager);
        uint256 grantId =
            pool.createGrant(bob, address(0), 2 ether, 0, expiresAt, PURPOSE_HASH, METADATA_HASH);

        vm.warp(expiresAt);

        vm.prank(bob);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.GrantExpired.selector, grantId, expiresAt));
        pool.claim(grantId);
    }

    function test_claim_for_success() public {
        _depositETH(5 ether);
        uint256 grantId = _createETHGrant(bob, 2 ether);

        uint256 beforeBalance = bob.balance;

        vm.prank(claimManager);
        uint256 claimed = pool.claimFor(grantId);

        assertEq(claimed, 2 ether);
        assertEq(bob.balance, beforeBalance + 2 ether);
    }

    function test_claim_for_reverts_for_non_claim_manager() public {
        _depositETH(5 ether);
        uint256 grantId = _createETHGrant(bob, 2 ether);

        vm.prank(alice);
        vm.expectRevert();
        pool.claimFor(grantId);
    }

    function test_cancel_grant_success() public {
        _depositETH(5 ether);
        uint256 grantId = _createETHGrant(bob, 2 ether);

        vm.prank(grantManager);
        uint256 canceledAmount = pool.cancelGrant(grantId, REASON_HASH);

        YieldPool.Grant memory grant = pool.getGrant(grantId);

        assertEq(canceledAmount, 2 ether);
        assertTrue(grant.canceled);
        assertEq(pool.totalReserved(address(0)), 0);
        assertEq(pool.availableBalance(address(0)), 5 ether);
    }

    function test_cancel_grant_reverts_for_claimed_grant() public {
        _depositETH(5 ether);
        uint256 grantId = _createETHGrant(bob, 2 ether);

        vm.prank(bob);
        pool.claim(grantId);

        vm.prank(grantManager);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.GrantAlreadyClaimed.selector, grantId));
        pool.cancelGrant(grantId, REASON_HASH);
    }

    function test_claim_reverts_for_canceled_grant() public {
        _depositETH(5 ether);
        uint256 grantId = _createETHGrant(bob, 2 ether);

        vm.prank(grantManager);
        pool.cancelGrant(grantId, REASON_HASH);

        vm.prank(bob);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.GrantCanceledError.selector, grantId));
        pool.claim(grantId);
    }

    function test_accounting_snapshot_returns_expected_values() public {
        _depositETH(10 ether);
        _createETHGrant(bob, 4 ether);

        YieldPool.AccountingSnapshot memory snapshot = pool.accountingSnapshot(address(0));

        assertEq(snapshot.custodyBalance, 10 ether);
        assertEq(snapshot.reserved, 4 ether);
        assertEq(snapshot.available, 6 ether);
        assertEq(snapshot.totalDepositedAmount, 10 ether);
        assertEq(snapshot.totalClaimedAmount, 0);
    }

    function test_is_claimable_reflects_lifecycle() public {
        _depositETH(5 ether);
        uint256 grantId = _createETHGrant(bob, 2 ether);

        assertTrue(pool.isClaimable(grantId));

        vm.prank(grantManager);
        pool.cancelGrant(grantId, REASON_HASH);

        assertFalse(pool.isClaimable(grantId));
        assertFalse(pool.isClaimable(999));
    }

    function test_rescue_eth_reverts_when_not_paused() public {
        _depositETH(2 ether);

        vm.prank(rescueManager);
        vm.expectRevert();
        pool.rescueETH(carol, 1 ether);
    }

    function test_rescue_eth_success_when_paused_and_unreserved() public {
        _depositETH(5 ether);
        _createETHGrant(bob, 3 ether);

        vm.prank(pauser);
        pool.pause();

        uint256 beforeBalance = carol.balance;

        vm.prank(rescueManager);
        pool.rescueETH(carol, 2 ether);

        assertEq(carol.balance, beforeBalance + 2 ether);
        assertEq(pool.availableBalance(address(0)), 0);
    }

    function test_rescue_eth_reverts_when_reserved_funds_protected() public {
        _depositETH(5 ether);
        _createETHGrant(bob, 4 ether);

        vm.prank(pauser);
        pool.pause();

        vm.prank(rescueManager);
        vm.expectRevert(
            abi.encodeWithSelector(
                YieldPool.ReservedFundsProtected.selector, address(0), 2 ether, 1 ether
            )
        );
        pool.rescueETH(carol, 2 ether);
    }

    function test_rescue_eth_reverts_when_receiver_rejects() public {
        RejectETHReceiver receiver = new RejectETHReceiver();

        _depositETH(1 ether);

        vm.prank(pauser);
        pool.pause();

        vm.prank(rescueManager);
        vm.expectRevert(YieldPool.ETHTransferFailed.selector);
        pool.rescueETH(address(receiver), 1 ether);
    }

    function test_rescue_erc20_success_when_paused_and_unreserved() public {
        _depositERC20(10 ether);
        _createERC20Grant(bob, 7 ether);

        vm.prank(pauser);
        pool.pause();

        vm.prank(rescueManager);
        pool.rescueERC20(address(token), carol, 3 ether);

        assertEq(token.balanceOf(carol), 3 ether);
        assertEq(pool.availableBalance(address(token)), 0);
    }

    function test_rescue_erc20_reverts_when_reserved_funds_protected() public {
        _depositERC20(10 ether);
        _createERC20Grant(bob, 8 ether);

        vm.prank(pauser);
        pool.pause();

        vm.prank(rescueManager);
        vm.expectRevert(
            abi.encodeWithSelector(
                YieldPool.ReservedFundsProtected.selector, address(token), 3 ether, 2 ether
            )
        );
        pool.rescueERC20(address(token), carol, 3 ether);
    }

    function test_rescue_erc20_reverts_for_native_asset() public {
        vm.prank(pauser);
        pool.pause();

        vm.prank(rescueManager);
        vm.expectRevert(abi.encodeWithSelector(YieldPool.InvalidAsset.selector, address(0)));
        pool.rescueERC20(address(0), carol, 1 ether);
    }

    function test_get_grant_reverts_for_unknown_grant() public {
        vm.expectRevert(abi.encodeWithSelector(YieldPool.UnknownGrant.selector, 404));
        pool.getGrant(404);
    }

    function _depositETH(
        uint256 amount
    ) internal {
        vm.prank(alice);
        pool.depositETH{ value: amount }(METADATA_HASH);
    }

    function _depositERC20(
        uint256 amount
    ) internal {
        vm.prank(alice);
        pool.depositERC20(address(token), amount, METADATA_HASH);
    }

    function _createETHGrant(
        address beneficiary,
        uint256 amount
    ) internal returns (uint256 grantId) {
        vm.prank(grantManager);
        grantId =
            pool.createGrant(beneficiary, address(0), amount, 0, 0, PURPOSE_HASH, METADATA_HASH);
    }

    function _createERC20Grant(
        address beneficiary,
        uint256 amount
    ) internal returns (uint256 grantId) {
        vm.prank(grantManager);
        grantId = pool.createGrant(
            beneficiary, address(token), amount, 0, 0, PURPOSE_HASH, METADATA_HASH
        );
    }
}
