// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";

import { VaultRegistry } from "../../src/VaultRegistry.sol";

contract MockShieldRegistryVault {
    mapping(address account => bool banned) private _banned;

    function setBanned(
        address account,
        bool value
    ) external {
        _banned[account] = value;
    }

    function isBanned(
        address account
    ) external view returns (bool) {
        return _banned[account];
    }
}

contract VaultRegistryTest is Test {
    VaultRegistry private vault;
    MockShieldRegistryVault private shield;

    address private admin = makeAddr("admin");
    address private pauser = makeAddr("pauser");
    address private issuer = makeAddr("issuer");
    address private revoker = makeAddr("revoker");
    address private uriManager = makeAddr("uriManager");
    address private proofManager = makeAddr("proofManager");
    address private subject = makeAddr("subject");
    address private stranger = makeAddr("stranger");

    bytes32 private constant CREDENTIAL_HASH = keccak256("NST_LATTICE_CREDENTIAL_HASH");
    bytes32 private constant REPLACEMENT_CREDENTIAL_HASH =
        keccak256("NST_LATTICE_REPLACEMENT_CREDENTIAL_HASH");
    bytes32 private constant METADATA_HASH = keccak256("NST_LATTICE_METADATA_HASH");
    bytes32 private constant URI_HASH = keccak256("NST_LATTICE_URI_HASH");
    bytes32 private constant UPDATED_URI_HASH = keccak256("NST_LATTICE_UPDATED_URI_HASH");

    VaultRegistry.CredentialType private constant IDENTITY = VaultRegistry.CredentialType.Identity;
    VaultRegistry.CredentialType private constant INVOICE_ISSUER =
    VaultRegistry.CredentialType.InvoiceIssuer;

    function setUp() public {
        vm.warp(1_000_000);

        shield = new MockShieldRegistryVault();

        vault = new VaultRegistry(
            admin, pauser, issuer, revoker, uriManager, proofManager, address(shield)
        );
    }

    function test_constructor_sets_roles_and_dependency() public view {
        assertEq(address(vault.SHIELD_REGISTRY()), address(shield));
        assertEq(vault.nextCredentialId(), 1);

        assertTrue(vault.hasRole(vault.DEFAULT_ADMIN_ROLE(), admin));
        assertTrue(vault.hasRole(vault.PAUSER_ROLE(), pauser));
        assertTrue(vault.hasRole(vault.CREDENTIAL_ISSUER_ROLE(), issuer));
        assertTrue(vault.hasRole(vault.CREDENTIAL_REVOKER_ROLE(), revoker));
        assertTrue(vault.hasRole(vault.URI_MANAGER_ROLE(), uriManager));
        assertTrue(vault.hasRole(vault.PROOF_MANAGER_ROLE(), proofManager));
    }

    function test_constructor_reverts_on_zero_required_address() public {
        vm.expectRevert(VaultRegistry.ZeroAddress.selector);

        new VaultRegistry(
            address(0), pauser, issuer, revoker, uriManager, proofManager, address(shield)
        );
    }

    function test_constructor_reverts_on_non_contract_shield_registry() public {
        address notAContract = address(0xBEEF);

        vm.expectRevert(
            abi.encodeWithSelector(VaultRegistry.InvalidDependency.selector, notAContract)
        );

        new VaultRegistry(admin, pauser, issuer, revoker, uriManager, proofManager, notAContract);
    }

    function test_issue_credential_reverts_for_non_issuer() public {
        vm.expectRevert();

        vm.prank(stranger);
        vault.issueCredential(
            subject, IDENTITY, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, _futureExpiry()
        );
    }

    function test_issue_credential_success() public {
        uint64 expiresAt = _futureExpiry();

        vm.prank(issuer);
        uint256 credentialId = vault.issueCredential(
            subject, IDENTITY, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, expiresAt
        );

        assertEq(credentialId, 1);
        assertEq(vault.nextCredentialId(), 2);
        assertEq(vault.latestCredentialId(subject, IDENTITY), credentialId);
        assertEq(vault.subjectCredentialCount(subject), 1);
        assertEq(vault.subjectCredentialIdAt(subject, 0), credentialId);
        assertTrue(vault.hasActiveCredential(subject, IDENTITY));
        assertTrue(vault.isCredentialActive(credentialId));
        assertTrue(vault.requireActiveCredential(credentialId));

        (
            address snapshotSubject,
            VaultRegistry.CredentialType snapshotType,
            address snapshotIssuer,
            bytes32 snapshotCredentialHash,
            bytes32 snapshotMetadataHash,
            bytes32 snapshotUriHash,
            uint64 issuedAt,
            uint64 snapshotExpiresAt,
            bool revoked,
            uint64 revokedAt,
            uint256 replacementId,
            VaultRegistry.ProofStatus proofStatus
        ) = vault.getCredentialSnapshot(credentialId);

        assertEq(snapshotSubject, subject);
        assertEq(uint256(snapshotType), uint256(IDENTITY));
        assertEq(snapshotIssuer, issuer);
        assertEq(snapshotCredentialHash, CREDENTIAL_HASH);
        assertEq(snapshotMetadataHash, METADATA_HASH);
        assertEq(snapshotUriHash, URI_HASH);
        assertEq(issuedAt, uint64(block.timestamp));
        assertEq(snapshotExpiresAt, expiresAt);
        assertFalse(revoked);
        assertEq(revokedAt, 0);
        assertEq(replacementId, 0);
        assertEq(uint256(proofStatus), uint256(VaultRegistry.ProofStatus.Pending));
    }

    function test_issue_credential_reverts_for_zero_subject() public {
        vm.expectRevert(VaultRegistry.ZeroAddress.selector);

        vm.prank(issuer);
        vault.issueCredential(
            address(0), IDENTITY, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, _futureExpiry()
        );
    }

    function test_issue_credential_reverts_for_unknown_type() public {
        vm.expectRevert(VaultRegistry.InvalidCredentialType.selector);

        vm.prank(issuer);
        vault.issueCredential(
            subject,
            VaultRegistry.CredentialType.Unknown,
            CREDENTIAL_HASH,
            METADATA_HASH,
            URI_HASH,
            _futureExpiry()
        );
    }

    function test_issue_credential_reverts_for_zero_credential_hash() public {
        vm.expectRevert(VaultRegistry.InvalidCredentialHash.selector);

        vm.prank(issuer);
        vault.issueCredential(
            subject, IDENTITY, bytes32(0), METADATA_HASH, URI_HASH, _futureExpiry()
        );
    }

    function test_issue_credential_reverts_for_expired_timestamp() public {
        uint64 expiredAt = uint64(block.timestamp);

        vm.expectRevert(
            abi.encodeWithSelector(
                VaultRegistry.InvalidExpiry.selector, expiredAt, uint64(block.timestamp)
            )
        );

        vm.prank(issuer);
        vault.issueCredential(
            subject, IDENTITY, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, expiredAt
        );
    }

    function test_issue_credential_reverts_for_banned_subject() public {
        shield.setBanned(subject, true);

        vm.expectRevert(abi.encodeWithSelector(VaultRegistry.SubjectBanned.selector, subject));

        vm.prank(issuer);
        vault.issueCredential(
            subject, IDENTITY, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, _futureExpiry()
        );
    }

    function test_banned_subject_makes_existing_credential_inactive() public {
        uint256 credentialId = _issueIdentityCredential();

        assertTrue(vault.isCredentialActive(credentialId));

        shield.setBanned(subject, true);

        assertFalse(vault.isCredentialActive(credentialId));
        assertFalse(vault.hasActiveCredential(subject, IDENTITY));

        vm.expectRevert(
            abi.encodeWithSelector(VaultRegistry.CredentialInactive.selector, credentialId)
        );
        vault.requireActiveCredential(credentialId);
    }

    function test_expired_credential_is_inactive() public {
        uint64 expiresAt = uint64(block.timestamp + 1 days);

        vm.prank(issuer);
        uint256 credentialId = vault.issueCredential(
            subject, IDENTITY, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, expiresAt
        );

        assertTrue(vault.isCredentialActive(credentialId));

        vm.warp(expiresAt + 1);

        assertFalse(vault.isCredentialActive(credentialId));
        assertFalse(vault.hasActiveCredential(subject, IDENTITY));

        vm.expectRevert(
            abi.encodeWithSelector(VaultRegistry.CredentialInactive.selector, credentialId)
        );
        vault.requireActiveCredential(credentialId);
    }

    function test_revoke_credential_success() public {
        uint256 credentialId = _issueIdentityCredential();

        vm.prank(revoker);
        vault.revokeCredential(credentialId);

        assertTrue(vault.isCredentialRevoked(credentialId));
        assertFalse(vault.isCredentialActive(credentialId));
        assertFalse(vault.hasActiveCredential(subject, IDENTITY));

        (,,,,,,,, bool revoked, uint64 revokedAt, uint256 replacementId,) =
            vault.getCredentialSnapshot(credentialId);

        assertTrue(revoked);
        assertEq(revokedAt, uint64(block.timestamp));
        assertEq(replacementId, 0);
    }

    function test_revoke_credential_reverts_for_non_revoker() public {
        uint256 credentialId = _issueIdentityCredential();

        vm.expectRevert();

        vm.prank(stranger);
        vault.revokeCredential(credentialId);
    }

    function test_revoke_credential_reverts_when_already_revoked() public {
        uint256 credentialId = _issueIdentityCredential();

        vm.prank(revoker);
        vault.revokeCredential(credentialId);

        vm.expectRevert(
            abi.encodeWithSelector(VaultRegistry.CredentialRevokedAlready.selector, credentialId)
        );

        vm.prank(revoker);
        vault.revokeCredential(credentialId);
    }

    function test_replace_credential_success() public {
        uint256 oldCredentialId = _issueIdentityCredential();

        vm.prank(issuer);
        uint256 newCredentialId = vault.replaceCredential(
            oldCredentialId,
            REPLACEMENT_CREDENTIAL_HASH,
            METADATA_HASH,
            UPDATED_URI_HASH,
            _futureExpiry()
        );

        assertEq(newCredentialId, 2);
        assertFalse(vault.isCredentialActive(oldCredentialId));
        assertTrue(vault.isCredentialRevoked(oldCredentialId));
        assertTrue(vault.isCredentialActive(newCredentialId));
        assertEq(vault.latestCredentialId(subject, IDENTITY), newCredentialId);
        assertEq(vault.subjectCredentialCount(subject), 2);

        (,,,,,,,, bool oldRevoked,, uint256 replacementId,) =
            vault.getCredentialSnapshot(oldCredentialId);

        assertTrue(oldRevoked);
        assertEq(replacementId, newCredentialId);

        assertEq(vault.credentialHash(newCredentialId), REPLACEMENT_CREDENTIAL_HASH);
        assertEq(vault.credentialURIHash(newCredentialId), UPDATED_URI_HASH);
    }

    function test_replace_credential_reverts_when_old_credential_missing() public {
        vm.expectRevert(abi.encodeWithSelector(VaultRegistry.CredentialNotFound.selector, 777));

        vm.prank(issuer);
        vault.replaceCredential(
            777, REPLACEMENT_CREDENTIAL_HASH, METADATA_HASH, UPDATED_URI_HASH, _futureExpiry()
        );
    }

    function test_set_credential_uri_success() public {
        uint256 credentialId = _issueIdentityCredential();

        vm.prank(uriManager);
        vault.setCredentialURI(credentialId, UPDATED_URI_HASH);

        assertEq(vault.credentialURIHash(credentialId), UPDATED_URI_HASH);
    }

    function test_set_credential_uri_reverts_for_non_uri_manager() public {
        uint256 credentialId = _issueIdentityCredential();

        vm.expectRevert();

        vm.prank(stranger);
        vault.setCredentialURI(credentialId, UPDATED_URI_HASH);
    }

    function test_set_credential_uri_reverts_for_zero_uri_hash() public {
        uint256 credentialId = _issueIdentityCredential();

        vm.expectRevert(VaultRegistry.InvalidCredentialHash.selector);

        vm.prank(uriManager);
        vault.setCredentialURI(credentialId, bytes32(0));
    }

    function test_set_proof_status_success() public {
        uint256 credentialId = _issueIdentityCredential();

        vm.prank(proofManager);
        vault.setProofStatus(credentialId, VaultRegistry.ProofStatus.Approved);

        (,,,,,,,,,,, VaultRegistry.ProofStatus proofStatus) =
            vault.getCredentialSnapshot(credentialId);

        assertEq(uint256(proofStatus), uint256(VaultRegistry.ProofStatus.Approved));
    }

    function test_set_proof_status_reverts_for_unknown_status() public {
        uint256 credentialId = _issueIdentityCredential();

        vm.expectRevert(VaultRegistry.InvalidProofStatus.selector);

        vm.prank(proofManager);
        vault.setProofStatus(credentialId, VaultRegistry.ProofStatus.Unknown);
    }

    function test_pause_blocks_mutations_and_unpause_restores() public {
        vm.prank(pauser);
        vault.pause();

        vm.expectRevert();

        vm.prank(issuer);
        vault.issueCredential(
            subject, IDENTITY, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, _futureExpiry()
        );

        vm.prank(pauser);
        vault.unpause();

        vm.prank(issuer);
        uint256 credentialId = vault.issueCredential(
            subject, INVOICE_ISSUER, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, _futureExpiry()
        );

        assertEq(credentialId, 1);
        assertTrue(vault.hasActiveCredential(subject, INVOICE_ISSUER));
    }

    function _issueIdentityCredential() internal returns (uint256 credentialId) {
        vm.prank(issuer);
        credentialId = vault.issueCredential(
            subject, IDENTITY, CREDENTIAL_HASH, METADATA_HASH, URI_HASH, _futureExpiry()
        );
    }

    function _futureExpiry() internal view returns (uint64) {
        return uint64(block.timestamp + 30 days);
    }
}
