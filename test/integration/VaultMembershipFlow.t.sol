// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";

import { ShieldRegistry } from "../../src/ShieldRegistry.sol";
import { NSTSBT } from "../../src/NSTSBT.sol";
import { VaultRegistry } from "../../src/VaultRegistry.sol";

contract MockERC20VaultMembershipFlow {
    string public name;
    string public symbol;

    mapping(address account => uint256 balance) public balanceOf;

    constructor(
        string memory name_,
        string memory symbol_
    ) {
        name = name_;
        symbol = symbol_;
    }

    function mint(
        address to,
        uint256 amount
    ) external {
        balanceOf[to] += amount;
    }
}

contract MockRouterVaultMembershipFlow {
    address public immutable WETH;

    constructor(
        address weth_
    ) {
        WETH = weth_;
    }

    receive() external payable { }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256,
        address[] calldata,
        address,
        uint256
    ) external payable { }
}

contract VaultMembershipFlowTest is Test {
    uint256 internal constant MINT_PRICE = 0.02 ether;

    bytes32 internal constant IDENTITY_CREDENTIAL_HASH =
        keccak256("NST_LATTICE_IDENTITY_CREDENTIAL");
    bytes32 internal constant INVOICE_CREDENTIAL_HASH =
        keccak256("NST_LATTICE_INVOICE_ISSUER_CREDENTIAL");
    bytes32 internal constant METADATA_HASH = keccak256("NST_LATTICE_METADATA");
    bytes32 internal constant URI_HASH = keccak256("NST_LATTICE_ENCRYPTED_URI");
    bytes32 internal constant BAN_REASON_HASH = keccak256("NST_LATTICE_INTEGRATION_BAN_REASON");

    ShieldRegistry internal shield;
    NSTSBT internal nst;
    VaultRegistry internal vault;

    MockERC20VaultMembershipFlow internal weth;
    MockERC20VaultMembershipFlow internal cft;
    MockRouterVaultMembershipFlow internal router;

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

    address internal credentialIssuer;
    address internal credentialRevoker;
    address internal uriManager;
    address internal proofManager;

    address internal alice;
    address internal bob;

    function setUp() public {
        vm.warp(1_000_000);

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

        credentialIssuer = makeAddr("credentialIssuer");
        credentialRevoker = makeAddr("credentialRevoker");
        uriManager = makeAddr("uriManager");
        proofManager = makeAddr("proofManager");

        alice = makeAddr("alice");
        bob = makeAddr("bob");

        shield = new ShieldRegistry(
            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, address(0)
        );

        vm.prank(vettingManager);
        shield.setVetted(genesis, true);

        weth = new MockERC20VaultMembershipFlow("Wrapped Ether", "WETH");
        cft = new MockERC20VaultMembershipFlow("Canada Forever Token", "CFT");
        router = new MockRouterVaultMembershipFlow(address(weth));

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

        vault = new VaultRegistry(
            admin,
            pauser,
            credentialIssuer,
            credentialRevoker,
            uriManager,
            proofManager,
            address(shield)
        );

        vm.deal(alice, 10 ether);
        vm.deal(bob, 10 ether);
    }

    function test_flow_vetted_member_mints_nst_and_receives_active_identity_credential() public {
        _vet(alice);

        uint256 tokenId = _mintNST(alice);
        assertGt(tokenId, 0);
        assertTrue(shield.ownsNST(alice));
        assertTrue(shield.activeMember(alice));

        uint256 credentialId = _issueIdentityCredential(alice);

        assertEq(
            vault.latestCredentialId(alice, VaultRegistry.CredentialType.Identity), credentialId
        );
        assertTrue(vault.hasActiveCredential(alice, VaultRegistry.CredentialType.Identity));
        assertTrue(vault.isCredentialActive(credentialId));
        assertTrue(vault.requireActiveCredential(credentialId));

        vm.prank(proofManager);
        vault.setProofStatus(credentialId, VaultRegistry.ProofStatus.Approved);

        (
            address subject,
            VaultRegistry.CredentialType credentialType_,
            address issuer,
            bytes32 credentialHash_,
            bytes32 metadataHash_,
            bytes32 uriHash_,,,
            bool revoked,,,
            VaultRegistry.ProofStatus proofStatus
        ) = vault.getCredentialSnapshot(credentialId);

        assertEq(subject, alice);
        assertEq(uint256(credentialType_), uint256(VaultRegistry.CredentialType.Identity));
        assertEq(issuer, credentialIssuer);
        assertEq(credentialHash_, IDENTITY_CREDENTIAL_HASH);
        assertEq(metadataHash_, METADATA_HASH);
        assertEq(uriHash_, URI_HASH);
        assertFalse(revoked);
        assertEq(uint256(proofStatus), uint256(VaultRegistry.ProofStatus.Approved));
    }

    function test_flow_banned_member_loses_active_member_and_vault_credential_status() public {
        _vet(alice);
        _mintNST(alice);

        uint256 credentialId = _issueIdentityCredential(alice);

        assertTrue(shield.activeMember(alice));
        assertTrue(vault.isCredentialActive(credentialId));

        _ban(alice);

        assertTrue(shield.isBanned(alice));
        assertFalse(shield.activeMember(alice));
        assertFalse(vault.isCredentialActive(credentialId));
        assertFalse(vault.hasActiveCredential(alice, VaultRegistry.CredentialType.Identity));

        vm.expectRevert(
            abi.encodeWithSelector(VaultRegistry.CredentialInactive.selector, credentialId)
        );
        vault.requireActiveCredential(credentialId);
    }

    function test_flow_banned_subject_cannot_receive_new_vault_credential() public {
        _ban(bob);

        vm.expectRevert(abi.encodeWithSelector(VaultRegistry.SubjectBanned.selector, bob));

        vm.prank(credentialIssuer);
        vault.issueCredential(
            bob,
            VaultRegistry.CredentialType.Identity,
            IDENTITY_CREDENTIAL_HASH,
            METADATA_HASH,
            URI_HASH,
            _futureExpiry()
        );
    }

    function test_flow_vault_credential_alone_does_not_create_nst_active_membership() public {
        uint256 credentialId = _issueInvoiceCredential(bob);

        assertTrue(vault.isCredentialActive(credentialId));
        assertTrue(vault.hasActiveCredential(bob, VaultRegistry.CredentialType.InvoiceIssuer));

        assertFalse(shield.ownsNST(bob));
        assertFalse(shield.activeMember(bob));
    }

    function test_flow_unvetted_wallet_cannot_mint_even_if_vault_credential_exists() public {
        uint256 credentialId = _issueIdentityCredential(bob);

        assertTrue(vault.isCredentialActive(credentialId));
        assertFalse(shield.activeMember(bob));

        vm.expectRevert();

        vm.prank(bob);
        nst.mint{ value: MINT_PRICE }();
    }

    function _vet(
        address account
    ) internal {
        vm.prank(vettingManager);
        shield.setVetted(account, true);
    }

    function _ban(
        address account
    ) internal {
        vm.prank(banManager);
        shield.banAccount(account, BAN_REASON_HASH);
    }

    function _mintNST(
        address account
    ) internal returns (uint256 tokenId) {
        vm.prank(account);
        tokenId = nst.mint{ value: MINT_PRICE }();
    }

    function _issueIdentityCredential(
        address subject
    ) internal returns (uint256 credentialId) {
        vm.prank(credentialIssuer);
        credentialId = vault.issueCredential(
            subject,
            VaultRegistry.CredentialType.Identity,
            IDENTITY_CREDENTIAL_HASH,
            METADATA_HASH,
            URI_HASH,
            _futureExpiry()
        );
    }

    function _issueInvoiceCredential(
        address subject
    ) internal returns (uint256 credentialId) {
        vm.prank(credentialIssuer);
        credentialId = vault.issueCredential(
            subject,
            VaultRegistry.CredentialType.InvoiceIssuer,
            INVOICE_CREDENTIAL_HASH,
            METADATA_HASH,
            URI_HASH,
            _futureExpiry()
        );
    }

    function _futureExpiry() internal view returns (uint64) {
        return uint64(block.timestamp + 30 days);
    }
}
