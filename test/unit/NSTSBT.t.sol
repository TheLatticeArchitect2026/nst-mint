// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";
import { ERC20 } from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

import { NSTSBT } from "../../src/NSTSBT.sol";

contract MockERC20 is ERC20 {
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

contract MockShieldRegistry {
    mapping(address => bool) public banned;
    mapping(address => bool) public eligible;

    function setBanned(
        address account,
        bool value
    ) external {
        banned[account] = value;
    }

    function setEligible(
        address account,
        bool value
    ) external {
        eligible[account] = value;
    }

    function isBanned(
        address account
    ) external view returns (bool) {
        return banned[account];
    }

    function isMintEligible(
        address account
    ) external view returns (bool) {
        return eligible[account] && !banned[account];
    }
}

contract MockRouter {
    address public immutable weth;

    bool public shouldRevert;
    uint256 public lastAmountIn;
    uint256 public lastMinOut;
    address public lastTo;
    uint256 public lastDeadline;
    address[] public lastPath;

    event SwapReceived(uint256 amountIn, uint256 minOut, address indexed to, uint256 deadline);

    constructor(
        address weth_
    ) {
        weth = weth_;
    }

    receive() external payable { }

    function WETH() external view returns (address) {
        return weth;
    }

    function setShouldRevert(
        bool value
    ) external {
        shouldRevert = value;
    }

    function lastPathLength() external view returns (uint256) {
        return lastPath.length;
    }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable {
        if (shouldRevert) revert("MOCK_ROUTER_REVERT");

        delete lastPath;

        for (uint256 i = 0; i < path.length;) {
            lastPath.push(path[i]);
            unchecked {
                ++i;
            }
        }

        lastAmountIn = msg.value;
        lastMinOut = amountOutMin;
        lastTo = to;
        lastDeadline = deadline;

        emit SwapReceived(msg.value, amountOutMin, to, deadline);
    }
}

contract RevertingETHReceiver {
    receive() external payable {
        revert("ETH_REJECTED");
    }
}

contract NSTSBTTest is Test {
    uint256 internal constant MINT_PRICE = 0.02 ether;
    uint256 internal constant FOUNDER_SHARE = 0.018 ether;
    uint256 internal constant YIELD_SHARE = 0.002 ether;

    NSTSBT internal nst;
    MockShieldRegistry internal shield;
    MockERC20 internal weth;
    MockERC20 internal cft;
    MockRouter internal router;

    address internal admin;
    address internal genesis;
    address internal founder;
    address internal yieldPool;
    address internal pauser;
    address internal mintManager;
    address internal metadataManager;
    address internal treasuryManager;
    address internal swapOperator;

    address internal alice;
    address internal bob;
    address internal charlie;

    function setUp() public {
        admin = makeAddr("admin");
        genesis = makeAddr("genesis");
        founder = makeAddr("founder");
        yieldPool = makeAddr("yieldPool");

        pauser = makeAddr("pauser");
        mintManager = makeAddr("mintManager");
        metadataManager = makeAddr("metadataManager");
        treasuryManager = makeAddr("treasuryManager");
        swapOperator = makeAddr("swapOperator");

        alice = makeAddr("alice");
        bob = makeAddr("bob");
        charlie = makeAddr("charlie");

        shield = new MockShieldRegistry();
        weth = new MockERC20("Wrapped Ether", "WETH");
        cft = new MockERC20("Canada Forever Token", "CFT");
        router = new MockRouter(address(weth));

        shield.setEligible(genesis, true);

        nst = _deployNST(founder);

        vm.deal(alice, 10 ether);
        vm.deal(bob, 10 ether);
        vm.deal(charlie, 10 ether);
        vm.deal(address(this), 10 ether);
    }

    function _deployNST(
        address founderWallet
    ) internal returns (NSTSBT deployed) {
        deployed = new NSTSBT(
            admin,
            genesis,
            founderWallet,
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
    }

    function _setMinOut(
        uint256 newMinOut
    ) internal {
        vm.prank(treasuryManager);
        nst.proposeYieldSwapMinOut(newMinOut);

        vm.warp(block.timestamp + nst.CONFIG_DELAY());

        vm.prank(treasuryManager);
        nst.applyYieldSwapMinOut();
    }

    function _mintAliceDeferred() internal returns (uint256 tokenId) {
        shield.setEligible(alice, true);

        vm.prank(alice);
        tokenId = nst.mint{ value: MINT_PRICE }();
    }

    function test_constructor_sets_roles_immutables_and_genesis() public view {
        assertTrue(nst.hasRole(nst.DEFAULT_ADMIN_ROLE(), admin));
        assertTrue(nst.hasRole(nst.PAUSER_ROLE(), pauser));
        assertTrue(nst.hasRole(nst.MINT_MANAGER_ROLE(), mintManager));
        assertTrue(nst.hasRole(nst.METADATA_MANAGER_ROLE(), metadataManager));
        assertTrue(nst.hasRole(nst.TREASURY_MANAGER_ROLE(), treasuryManager));
        assertTrue(nst.hasRole(nst.SWAP_OPERATOR_ROLE(), swapOperator));

        assertEq(nst.GENESIS_RECIPIENT(), genesis);
        assertEq(nst.FOUNDER_WALLET(), founder);
        assertEq(nst.SHIELD_REGISTRY(), address(shield));
        assertEq(nst.CFT(), address(cft));
        assertEq(nst.YIELD_POOL(), yieldPool);
        assertEq(address(nst.ROUTER()), address(router));
        assertEq(nst.WETH(), address(weth));

        assertEq(nst.ownerOf(nst.GENESIS_TOKEN_ID()), genesis);
        assertEq(nst.genesisHolder(), genesis);
        assertTrue(nst.hasMinted(genesis));

        assertEq(nst.totalMinted(), 1);
        assertEq(nst.publicMintCount(), 0);
        assertEq(nst.nextTokenId(), 1);
    }

    function test_constructor_reverts_when_genesis_not_eligible() public {
        MockShieldRegistry freshShield = new MockShieldRegistry();

        vm.expectRevert(abi.encodeWithSelector(NSTSBT.NotMintEligible.selector, genesis));
        new NSTSBT(
            admin,
            genesis,
            founder,
            address(freshShield),
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
    }

    function test_constructor_reverts_when_genesis_banned() public {
        MockShieldRegistry freshShield = new MockShieldRegistry();
        freshShield.setEligible(genesis, true);
        freshShield.setBanned(genesis, true);

        vm.expectRevert(abi.encodeWithSelector(NSTSBT.BannedAccount.selector, genesis));
        new NSTSBT(
            admin,
            genesis,
            founder,
            address(freshShield),
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
    }

    function test_constructor_reverts_on_zero_required_address() public {
        vm.expectRevert(NSTSBT.ZeroAddress.selector);
        new NSTSBT(
            address(0),
            genesis,
            founder,
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
    }

    function test_mint_reverts_for_unvetted_account() public {
        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.NotMintEligible.selector, alice));
        nst.mint{ value: MINT_PRICE }();
    }

    function test_mint_reverts_for_banned_account() public {
        shield.setEligible(alice, true);
        shield.setBanned(alice, true);

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.BannedAccount.selector, alice));
        nst.mint{ value: MINT_PRICE }();
    }

    function test_mint_reverts_for_invalid_payment() public {
        shield.setEligible(alice, true);

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.InvalidPayment.selector, MINT_PRICE, 1 wei));
        nst.mint{ value: 1 wei }();
    }

    function test_mint_success_with_yield_deferred_when_min_out_zero() public {
        shield.setEligible(alice, true);

        uint256 founderBefore = founder.balance;

        vm.prank(alice);
        uint256 tokenId = nst.mint{ value: MINT_PRICE }();

        assertEq(tokenId, 1);
        assertEq(nst.ownerOf(tokenId), alice);
        assertTrue(nst.hasMinted(alice));
        assertTrue(nst.locked(tokenId));

        assertEq(founder.balance - founderBefore, FOUNDER_SHARE);
        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
        assertEq(address(nst).balance, YIELD_SHARE);
        assertEq(nst.sweepableETH(), 0);

        assertEq(nst.totalMinted(), 2);
        assertEq(nst.publicMintCount(), 1);
        assertEq(nst.nextTokenId(), 2);
    }

    function test_duplicate_mint_reverts() public {
        _mintAliceDeferred();

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.AlreadyMinted.selector, alice));
        nst.mint{ value: MINT_PRICE }();
    }

    function test_genesis_recipient_cannot_mint_again() public {
        vm.deal(genesis, 1 ether);

        vm.prank(genesis);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.AlreadyMinted.selector, genesis));
        nst.mint{ value: MINT_PRICE }();
    }

    function test_mint_when_live_swap_succeeds() public {
        _setMinOut(123);

        shield.setEligible(alice, true);

        uint256 founderBefore = founder.balance;

        vm.prank(alice);
        nst.mint{ value: MINT_PRICE }();

        assertEq(founder.balance - founderBefore, FOUNDER_SHARE);
        assertEq(nst.pendingYieldETH(), 0);
        assertEq(address(nst).balance, 0);

        assertEq(router.lastAmountIn(), YIELD_SHARE);
        assertEq(router.lastMinOut(), 123);
        assertEq(router.lastTo(), yieldPool);
        assertEq(router.lastPathLength(), 2);
        assertEq(router.lastPath(0), address(weth));
        assertEq(router.lastPath(1), address(cft));
    }

    function test_mint_when_live_swap_fails_defers_yield() public {
        _setMinOut(123);
        router.setShouldRevert(true);

        shield.setEligible(alice, true);

        vm.prank(alice);
        nst.mint{ value: MINT_PRICE }();

        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
        assertEq(address(nst).balance, YIELD_SHARE);
        assertEq(router.lastAmountIn(), 0);
    }

    function test_process_pending_yield_eth_success() public {
        _mintAliceDeferred();

        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
        assertEq(address(nst).balance, YIELD_SHARE);

        _setMinOut(777);

        vm.prank(swapOperator);
        nst.processPendingYieldETH(YIELD_SHARE);

        assertEq(nst.pendingYieldETH(), 0);
        assertEq(address(nst).balance, 0);
        assertEq(router.lastAmountIn(), YIELD_SHARE);
        assertEq(router.lastMinOut(), 777);
    }

    function test_process_pending_yield_eth_reverts_when_disabled() public {
        _mintAliceDeferred();

        vm.prank(swapOperator);
        vm.expectRevert(NSTSBT.YieldSwapDisabled.selector);
        nst.processPendingYieldETH(YIELD_SHARE);
    }

    function test_process_pending_yield_eth_reverts_when_amount_zero() public {
        _mintAliceDeferred();
        _setMinOut(1);

        vm.prank(swapOperator);
        vm.expectRevert(NSTSBT.SwapAmountZero.selector);
        nst.processPendingYieldETH(0);
    }

    function test_process_pending_yield_eth_reverts_when_amount_exceeds_pending() public {
        _mintAliceDeferred();
        _setMinOut(1);

        vm.prank(swapOperator);
        vm.expectRevert(
            abi.encodeWithSelector(
                NSTSBT.AmountExceedsPending.selector, YIELD_SHARE, YIELD_SHARE + 1
            )
        );
        nst.processPendingYieldETH(YIELD_SHARE + 1);
    }

    function test_process_pending_yield_eth_reverts_when_retry_swap_fails() public {
        _mintAliceDeferred();
        _setMinOut(1);
        router.setShouldRevert(true);

        vm.prank(swapOperator);
        vm.expectRevert(NSTSBT.SwapRetryFailed.selector);
        nst.processPendingYieldETH(YIELD_SHARE);

        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
    }

    function test_pause_blocks_mint_and_unpause_restores() public {
        shield.setEligible(alice, true);

        vm.prank(pauser);
        nst.pause();

        vm.prank(alice);
        vm.expectRevert();
        nst.mint{ value: MINT_PRICE }();

        vm.prank(pauser);
        nst.unpause();

        vm.prank(alice);
        nst.mint{ value: MINT_PRICE }();

        assertEq(nst.ownerOf(1), alice);
    }

    function test_only_mint_manager_can_set_mint_open() public {
        vm.prank(alice);
        vm.expectRevert();
        nst.setMintOpen(false);

        vm.prank(mintManager);
        nst.setMintOpen(false);

        assertFalse(nst.mintOpen());
    }

    function test_mint_closed_and_permanent_close() public {
        shield.setEligible(alice, true);

        vm.prank(mintManager);
        nst.setMintOpen(false);

        vm.prank(alice);
        vm.expectRevert(NSTSBT.MintClosed.selector);
        nst.mint{ value: MINT_PRICE }();

        vm.prank(mintManager);
        nst.closeMintPermanently();

        vm.prank(mintManager);
        vm.expectRevert(NSTSBT.MintPermanentlyClosed.selector);
        nst.setMintOpen(true);

        vm.prank(alice);
        vm.expectRevert(NSTSBT.MintPermanentlyClosed.selector);
        nst.mint{ value: MINT_PRICE }();
    }

    function test_metadata_base_uri_and_freeze() public {
        assertEq(nst.tokenURI(nst.GENESIS_TOKEN_ID()), "");

        vm.prank(metadataManager);
        nst.setBaseURI("ipfs://nst/");

        assertEq(nst.tokenURI(nst.GENESIS_TOKEN_ID()), "ipfs://nst/0");

        vm.prank(metadataManager);
        nst.freezeBaseURI();

        vm.prank(metadataManager);
        vm.expectRevert(NSTSBT.BaseURIFrozen.selector);
        nst.setBaseURI("ipfs://new/");
    }

    function test_metadata_contract_uri_and_freeze() public {
        vm.prank(metadataManager);
        nst.setContractURI("ipfs://contract-metadata");

        assertEq(nst.contractURI(), "ipfs://contract-metadata");

        vm.prank(metadataManager);
        nst.freezeContractURI();

        vm.prank(metadataManager);
        vm.expectRevert(NSTSBT.ContractURIFrozen.selector);
        nst.setContractURI("ipfs://new-contract");
    }

    function test_metadata_reverts_on_empty_uri() public {
        vm.prank(metadataManager);
        vm.expectRevert(NSTSBT.BaseURIEmpty.selector);
        nst.setBaseURI("");

        vm.prank(metadataManager);
        vm.expectRevert(NSTSBT.ContractURIEmpty.selector);
        nst.setContractURI("");
    }

    function test_yield_swap_min_out_timelock() public {
        vm.prank(treasuryManager);
        nst.proposeYieldSwapMinOut(500);

        (uint256 value, uint256 executeAfter) = nst.pendingYieldSwapMinOutState();
        assertEq(value, 500);
        assertGt(executeAfter, block.timestamp);

        vm.prank(treasuryManager);
        vm.expectRevert(
            abi.encodeWithSelector(NSTSBT.DelayNotElapsed.selector, executeAfter, block.timestamp)
        );
        nst.applyYieldSwapMinOut();

        vm.warp(executeAfter);

        vm.prank(treasuryManager);
        nst.applyYieldSwapMinOut();

        assertEq(nst.yieldSwapMinOut(), 500);

        (uint256 clearedValue, uint256 clearedExecuteAfter) = nst.pendingYieldSwapMinOutState();
        assertEq(clearedValue, 0);
        assertEq(clearedExecuteAfter, 0);
    }

    function test_cancel_yield_swap_min_out_proposal() public {
        vm.prank(treasuryManager);
        nst.proposeYieldSwapMinOut(500);

        vm.prank(treasuryManager);
        nst.cancelYieldSwapMinOutProposal();

        (uint256 value, uint256 executeAfter) = nst.pendingYieldSwapMinOutState();
        assertEq(value, 0);
        assertEq(executeAfter, 0);

        vm.prank(treasuryManager);
        vm.expectRevert(NSTSBT.PendingConfigNotSet.selector);
        nst.applyYieldSwapMinOut();
    }

    function test_sweep_eth_cannot_sweep_reserved_pending_yield() public {
        _mintAliceDeferred();

        vm.prank(treasuryManager);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.InvalidSweepAmount.selector, 0, 1 wei));
        nst.sweepETH(payable(bob), 1 wei);
    }

    function test_sweep_eth_allows_unreserved_eth() public {
        _mintAliceDeferred();

        uint256 forcedExtra = 1 ether;
        vm.deal(address(nst), nst.pendingYieldETH() + forcedExtra);

        assertEq(nst.sweepableETH(), forcedExtra);

        uint256 bobBefore = bob.balance;

        vm.prank(treasuryManager);
        nst.sweepETH(payable(bob), forcedExtra);

        assertEq(bob.balance - bobBefore, forcedExtra);
        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
        assertEq(nst.sweepableETH(), 0);
    }

    function test_rescue_erc20() public {
        uint256 amount = 100 ether;
        cft.mint(address(nst), amount);

        assertEq(cft.balanceOf(address(nst)), amount);

        vm.prank(treasuryManager);
        nst.rescueERC20(address(cft), bob, amount);

        assertEq(cft.balanceOf(address(nst)), 0);
        assertEq(cft.balanceOf(bob), amount);
    }

    function test_soulbound_approval_and_transfer_blocks() public {
        uint256 tokenId = _mintAliceDeferred();

        vm.prank(alice);
        vm.expectRevert(NSTSBT.Soulbound.selector);
        nst.approve(bob, tokenId);

        vm.prank(alice);
        vm.expectRevert(NSTSBT.Soulbound.selector);
        nst.setApprovalForAll(bob, true);

        vm.prank(alice);
        vm.expectRevert(NSTSBT.Soulbound.selector);
        nst.transferFrom(alice, bob, tokenId);

        vm.prank(alice);
        vm.expectRevert(NSTSBT.Soulbound.selector);
        nst.safeTransferFrom(alice, bob, tokenId, "");
    }

    function test_get_approved_and_is_approved_for_all_are_wallet_safe() public {
        uint256 tokenId = _mintAliceDeferred();

        assertEq(nst.getApproved(tokenId), address(0));
        assertFalse(nst.isApprovedForAll(alice, bob));

        vm.expectRevert(abi.encodeWithSelector(NSTSBT.TokenDoesNotExist.selector, 999));
        nst.getApproved(999);
    }

    function test_burn_always_reverts() public {
        uint256 tokenId = _mintAliceDeferred();

        vm.expectRevert(NSTSBT.Soulbound.selector);
        nst.burn(tokenId);

        vm.expectRevert(NSTSBT.FounderTokenProtected.selector);
        nst.burn(0);
    }

    function test_locked_reverts_for_nonexistent_token() public {
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.TokenDoesNotExist.selector, 999));
        nst.locked(999);
    }

    function test_supports_erc5192_interface() public view {
        assertTrue(nst.supportsInterface(0xb45a3c0e));
    }

    function test_direct_eth_rejected() public {
        (bool ok,) = address(nst).call{ value: 1 wei }("");
        assertFalse(ok);
    }

    function test_fallback_rejected() public {
        (bool ok,) = address(nst).call{ value: 1 wei }("abc");
        assertFalse(ok);
    }

    function test_founder_payout_failure_reverts_mint() public {
        RevertingETHReceiver badFounder = new RevertingETHReceiver();

        NSTSBT badNST = new NSTSBT(
            admin,
            genesis,
            address(badFounder),
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

        shield.setEligible(alice, true);

        vm.prank(alice);
        vm.expectRevert(NSTSBT.ETHTransferFailed.selector);
        badNST.mint{ value: MINT_PRICE }();

        assertFalse(badNST.hasMinted(alice));
    }
}
