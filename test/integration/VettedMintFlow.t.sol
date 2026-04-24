// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";
import { ERC20 } from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

import { ShieldRegistry } from "../../src/ShieldRegistry.sol";
import { NSTSBT } from "../../src/NSTSBT.sol";

contract MockERC20Integration is ERC20 {
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

contract MockRouterIntegration {
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

contract VettedMintFlowTest is Test {
    ShieldRegistry internal shield;
    NSTSBT internal nst;
    MockERC20Integration internal weth;
    MockERC20Integration internal cft;
    MockRouterIntegration internal router;

    address internal admin;
    address internal pauser;
    address internal vettingManager;
    address internal banManager;
    address internal exemptionManager;
    address internal profileManager;

    address internal founderTreasury;
    address internal yieldPool;
    address internal genesis;

    address internal mintManager;
    address internal metadataManager;
    address internal treasuryManager;
    address internal swapOperator;

    address internal alice;
    address internal bob;

    function setUp() public {
        admin = makeAddr("admin");
        pauser = makeAddr("pauser");
        vettingManager = makeAddr("vettingManager");
        banManager = makeAddr("banManager");
        exemptionManager = makeAddr("exemptionManager");
        profileManager = makeAddr("profileManager");

        founderTreasury = makeAddr("founderTreasury");
        yieldPool = makeAddr("yieldPool");
        genesis = makeAddr("genesis");

        mintManager = makeAddr("mintManager");
        metadataManager = makeAddr("metadataManager");
        treasuryManager = makeAddr("treasuryManager");
        swapOperator = makeAddr("swapOperator");

        alice = makeAddr("alice");
        bob = makeAddr("bob");

        shield = new ShieldRegistry(
            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, address(0)
        );

        vm.prank(vettingManager);
        shield.setVetted(genesis, true);

        weth = new MockERC20Integration("Wrapped Ether", "WETH");
        cft = new MockERC20Integration("Canada Forever Token", "CFT");
        router = new MockRouterIntegration(address(weth));

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

        vm.deal(alice, 10 ether);
        vm.deal(bob, 10 ether);
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

    function test_flow_genesis_is_active_member_after_shield_link() public view {
        assertEq(nst.ownerOf(nst.GENESIS_TOKEN_ID()), genesis);
        assertTrue(nst.hasMinted(genesis));
        assertTrue(shield.isMintEligible(genesis));
        assertTrue(shield.activeMember(genesis));
        assertEq(nst.totalMinted(), 1);
        assertEq(nst.publicMintCount(), 0);
    }

    function test_flow_vetted_user_can_mint_and_becomes_active_member() public {
        _vet(alice);

        assertTrue(shield.isMintEligible(alice));
        assertFalse(shield.activeMember(alice));
        assertFalse(nst.hasMinted(alice));

        uint256 founderBefore = founderTreasury.balance;

        vm.prank(alice);
        uint256 tokenId = nst.mint{ value: 0.02 ether }();

        assertEq(tokenId, 1);
        assertEq(nst.ownerOf(tokenId), alice);
        assertTrue(nst.hasMinted(alice));
        assertTrue(nst.locked(tokenId));

        assertTrue(shield.activeMember(alice));
        assertTrue(shield.isMintEligible(alice));

        assertEq(founderTreasury.balance - founderBefore, nst.founderSharePerMint());
        assertEq(nst.pendingYieldETH(), nst.yieldSharePerMint());
        assertEq(address(nst).balance, nst.yieldSharePerMint());

        assertEq(nst.totalMinted(), 2);
        assertEq(nst.publicMintCount(), 1);
        assertEq(nst.nextTokenId(), 2);
    }

    function test_flow_unvetted_user_cannot_mint_and_does_not_become_active_member() public {
        assertFalse(shield.isMintEligible(alice));
        assertFalse(shield.activeMember(alice));

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.NotMintEligible.selector, alice));
        nst.mint{ value: 0.02 ether }();

        assertFalse(nst.hasMinted(alice));
        assertFalse(shield.activeMember(alice));
        assertEq(nst.totalMinted(), 1);
    }

    function test_flow_banned_user_cannot_mint_even_if_previously_vetted() public {
        _vet(alice);
        _ban(alice, keccak256("integration-ban"));

        assertFalse(shield.isMintEligible(alice));
        assertFalse(shield.activeMember(alice));

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.BannedAccount.selector, alice));
        nst.mint{ value: 0.02 ether }();

        assertFalse(nst.hasMinted(alice));
        assertEq(nst.totalMinted(), 1);
    }

    function test_flow_vetted_user_cannot_mint_when_membership_contract_is_paused() public {
        _vet(alice);

        vm.prank(pauser);
        nst.pause();

        vm.prank(alice);
        vm.expectRevert();
        nst.mint{ value: 0.02 ether }();

        assertFalse(nst.hasMinted(alice));
        assertFalse(shield.activeMember(alice));
    }

    function test_flow_one_wallet_one_nst_is_enforced_after_successful_vetted_mint() public {
        _vet(alice);

        vm.prank(alice);
        uint256 tokenId = nst.mint{ value: 0.02 ether }();

        assertEq(tokenId, 1);
        assertTrue(shield.activeMember(alice));

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(NSTSBT.AlreadyMinted.selector, alice));
        nst.mint{ value: 0.02 ether }();

        assertEq(nst.totalMinted(), 2);
        assertEq(nst.publicMintCount(), 1);
    }
}
