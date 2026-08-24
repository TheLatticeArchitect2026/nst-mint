// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import { Pausable } from "openzeppelin-contracts/contracts/utils/Pausable.sol";

interface IShieldRegistryVaultLike {
    function isBanned(
        address account
    ) external view returns (bool);
}

/// @title VaultRegistry
/// @notice Sovereign credential and document-proof registry for NST Lattice.
/// @dev Stores hashes and proof state only. Raw private documents must remain off-chain.
contract VaultRegistry is AccessControl, Pausable {
    // =============================================================
    // ROLES
    // =============================================================

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant CREDENTIAL_ISSUER_ROLE = keccak256("CREDENTIAL_ISSUER_ROLE");
    bytes32 public constant CREDENTIAL_REVOKER_ROLE = keccak256("CREDENTIAL_REVOKER_ROLE");
    bytes32 public constant URI_MANAGER_ROLE = keccak256("URI_MANAGER_ROLE");
    bytes32 public constant PROOF_MANAGER_ROLE = keccak256("PROOF_MANAGER_ROLE");

    // =============================================================
    // TYPES
    // =============================================================

    enum CredentialType {
        Unknown,
        Identity,
        BusinessRegistration,
        BeneficialOwnership,
        SoleProprietor,
        Corporation,
        Supplier,
        Farmer,
        FirstNationsPartner,
        MortgageEligibility,
        InvoiceIssuer,
        ProjectEligibility,
        Custom
    }

    enum ProofStatus {
        Unknown,
        Pending,
        Approved,
        Rejected
    }

    struct Credential {
        address subject;
        CredentialType credentialType;
        address issuer;
        bytes32 credentialHash;
        bytes32 metadataHash;
        bytes32 uriHash;
        uint64 issuedAt;
        uint64 expiresAt;
        bool revoked;
        uint64 revokedAt;
        uint256 replacementId;
        ProofStatus proofStatus;
    }

    // =============================================================
    // ERRORS
    // =============================================================

    error ZeroAddress();
    error InvalidDependency(address target);
    error InvalidCredentialType();
    error InvalidCredentialHash();
    error CredentialNotFound(uint256 credentialId);
    error CredentialRevokedAlready(uint256 credentialId);
    error CredentialExpired(uint256 credentialId);
    error CredentialInactive(uint256 credentialId);
    error SubjectBanned(address subject);
    error InvalidExpiry(uint64 expiresAt, uint64 currentTimestamp);
    error InvalidReplacement(uint256 credentialId);
    error InvalidProofStatus();

    // =============================================================
    // EVENTS
    // =============================================================

    event CredentialIssued(
        uint256 indexed credentialId,
        address indexed subject,
        CredentialType indexed credentialType,
        address issuer,
        bytes32 credentialHash,
        bytes32 metadataHash,
        bytes32 uriHash,
        uint64 issuedAt,
        uint64 expiresAt
    );

    event CredentialRevoked(
        uint256 indexed credentialId,
        address indexed subject,
        address indexed revoker,
        uint64 revokedAt
    );

    event CredentialReplaced(
        uint256 indexed oldCredentialId,
        uint256 indexed newCredentialId,
        address indexed subject,
        address actor
    );

    event CredentialURIUpdated(
        uint256 indexed credentialId,
        bytes32 indexed oldUriHash,
        bytes32 indexed newUriHash,
        address actor
    );

    event ProofStatusUpdated(
        uint256 indexed credentialId,
        ProofStatus indexed oldStatus,
        ProofStatus indexed newStatus,
        address actor
    );

    // =============================================================
    // IMMUTABLES / STORAGE
    // =============================================================

    IShieldRegistryVaultLike public immutable SHIELD_REGISTRY;

    uint256 public nextCredentialId = 1;

    mapping(uint256 => Credential) private _credentials;
    mapping(address => uint256[]) private _subjectCredentialIds;
    mapping(address => mapping(CredentialType => uint256)) private _latestCredentialByType;

    // =============================================================
    // CONSTRUCTOR
    // =============================================================

    constructor(
        address defaultAdmin,
        address pauser,
        address credentialIssuer,
        address credentialRevoker,
        address uriManager,
        address proofManager,
        address shieldRegistry
    ) {
        if (
            defaultAdmin == address(0) || pauser == address(0) || credentialIssuer == address(0)
                || credentialRevoker == address(0) || uriManager == address(0)
                || proofManager == address(0) || shieldRegistry == address(0)
        ) {
            revert ZeroAddress();
        }

        if (shieldRegistry.code.length == 0) revert InvalidDependency(shieldRegistry);

        SHIELD_REGISTRY = IShieldRegistryVaultLike(shieldRegistry);

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(CREDENTIAL_ISSUER_ROLE, credentialIssuer);
        _grantRole(CREDENTIAL_REVOKER_ROLE, credentialRevoker);
        _grantRole(URI_MANAGER_ROLE, uriManager);
        _grantRole(PROOF_MANAGER_ROLE, proofManager);
    }

    // =============================================================
    // ADMIN
    // =============================================================

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    // =============================================================
    // CREDENTIAL MUTATIONS
    // =============================================================

    function issueCredential(
        address subject,
        CredentialType credentialType_,
        bytes32 credentialHash_,
        bytes32 metadataHash_,
        bytes32 uriHash_,
        uint64 expiresAt_
    ) external whenNotPaused onlyRole(CREDENTIAL_ISSUER_ROLE) returns (uint256 credentialId) {
        _validateIssue(subject, credentialType_, credentialHash_, expiresAt_);

        credentialId = _issueCredential(
            subject,
            credentialType_,
            credentialHash_,
            metadataHash_,
            uriHash_,
            expiresAt_,
            msg.sender
        );
    }

    function revokeCredential(
        uint256 credentialId
    ) external whenNotPaused onlyRole(CREDENTIAL_REVOKER_ROLE) {
        Credential storage credential = _requireCredential(credentialId);

        if (credential.revoked) revert CredentialRevokedAlready(credentialId);

        credential.revoked = true;
        credential.revokedAt = uint64(block.timestamp);

        emit CredentialRevoked(credentialId, credential.subject, msg.sender, credential.revokedAt);
    }

    function replaceCredential(
        uint256 oldCredentialId,
        bytes32 newCredentialHash,
        bytes32 newMetadataHash,
        bytes32 newUriHash,
        uint64 newExpiresAt
    ) external whenNotPaused onlyRole(CREDENTIAL_ISSUER_ROLE) returns (uint256 newCredentialId) {
        Credential storage oldCredential = _requireCredential(oldCredentialId);

        if (oldCredential.revoked) revert CredentialRevokedAlready(oldCredentialId);
        if (oldCredential.replacementId != 0) revert InvalidReplacement(oldCredentialId);

        _validateIssue(
            oldCredential.subject, oldCredential.credentialType, newCredentialHash, newExpiresAt
        );

        newCredentialId = _issueCredential(
            oldCredential.subject,
            oldCredential.credentialType,
            newCredentialHash,
            newMetadataHash,
            newUriHash,
            newExpiresAt,
            msg.sender
        );

        oldCredential.revoked = true;
        oldCredential.revokedAt = uint64(block.timestamp);
        oldCredential.replacementId = newCredentialId;

        emit CredentialRevoked(
            oldCredentialId, oldCredential.subject, msg.sender, oldCredential.revokedAt
        );
        emit CredentialReplaced(oldCredentialId, newCredentialId, oldCredential.subject, msg.sender);
    }

    function setCredentialURI(
        uint256 credentialId,
        bytes32 newUriHash
    ) external whenNotPaused onlyRole(URI_MANAGER_ROLE) {
        if (newUriHash == bytes32(0)) revert InvalidCredentialHash();

        Credential storage credential = _requireCredential(credentialId);
        if (credential.revoked) revert CredentialRevokedAlready(credentialId);

        bytes32 oldUriHash = credential.uriHash;
        credential.uriHash = newUriHash;

        emit CredentialURIUpdated(credentialId, oldUriHash, newUriHash, msg.sender);
    }

    function setProofStatus(
        uint256 credentialId,
        ProofStatus newStatus
    ) external whenNotPaused onlyRole(PROOF_MANAGER_ROLE) {
        if (newStatus == ProofStatus.Unknown) revert InvalidProofStatus();

        Credential storage credential = _requireCredential(credentialId);
        if (credential.revoked) revert CredentialRevokedAlready(credentialId);

        ProofStatus oldStatus = credential.proofStatus;
        credential.proofStatus = newStatus;

        emit ProofStatusUpdated(credentialId, oldStatus, newStatus, msg.sender);
    }

    // =============================================================
    // VIEWS
    // =============================================================

    function hasActiveCredential(
        address subject,
        CredentialType credentialType_
    ) external view returns (bool) {
        uint256 credentialId = _latestCredentialByType[subject][credentialType_];
        return _isCredentialActive(credentialId);
    }

    function isCredentialActive(
        uint256 credentialId
    ) external view returns (bool) {
        return _isCredentialActive(credentialId);
    }

    function latestCredentialId(
        address subject,
        CredentialType credentialType_
    ) external view returns (uint256) {
        return _latestCredentialByType[subject][credentialType_];
    }

    function subjectCredentialCount(
        address subject
    ) external view returns (uint256) {
        return _subjectCredentialIds[subject].length;
    }

    function subjectCredentialIdAt(
        address subject,
        uint256 index
    ) external view returns (uint256) {
        return _subjectCredentialIds[subject][index];
    }

    function credentialSubject(
        uint256 credentialId
    ) external view returns (address) {
        return _requireCredentialView(credentialId).subject;
    }

    function credentialType(
        uint256 credentialId
    ) external view returns (CredentialType) {
        return _requireCredentialView(credentialId).credentialType;
    }

    function credentialIssuer(
        uint256 credentialId
    ) external view returns (address) {
        return _requireCredentialView(credentialId).issuer;
    }

    function credentialHash(
        uint256 credentialId
    ) external view returns (bytes32) {
        return _requireCredentialView(credentialId).credentialHash;
    }

    function credentialMetadataHash(
        uint256 credentialId
    ) external view returns (bytes32) {
        return _requireCredentialView(credentialId).metadataHash;
    }

    function credentialURIHash(
        uint256 credentialId
    ) external view returns (bytes32) {
        return _requireCredentialView(credentialId).uriHash;
    }

    function credentialExpiry(
        uint256 credentialId
    ) external view returns (uint64) {
        return _requireCredentialView(credentialId).expiresAt;
    }

    function isCredentialRevoked(
        uint256 credentialId
    ) external view returns (bool) {
        return _requireCredentialView(credentialId).revoked;
    }

    function requireActiveCredential(
        uint256 credentialId
    ) external view returns (bool) {
        if (!_credentialExists(credentialId)) revert CredentialNotFound(credentialId);
        if (!_isCredentialActive(credentialId)) revert CredentialInactive(credentialId);
        return true;
    }

    function getCredentialSnapshot(
        uint256 credentialId
    )
        external
        view
        returns (
            address subject,
            CredentialType credentialType_,
            address issuer,
            bytes32 credentialHash_,
            bytes32 metadataHash_,
            bytes32 uriHash_,
            uint64 issuedAt,
            uint64 expiresAt,
            bool revoked,
            uint64 revokedAt,
            uint256 replacementId,
            ProofStatus proofStatus
        )
    {
        Credential storage credential = _requireCredentialView(credentialId);

        return (
            credential.subject,
            credential.credentialType,
            credential.issuer,
            credential.credentialHash,
            credential.metadataHash,
            credential.uriHash,
            credential.issuedAt,
            credential.expiresAt,
            credential.revoked,
            credential.revokedAt,
            credential.replacementId,
            credential.proofStatus
        );
    }

    // =============================================================
    // INTERNAL
    // =============================================================

    function _issueCredential(
        address subject,
        CredentialType credentialType_,
        bytes32 credentialHash_,
        bytes32 metadataHash_,
        bytes32 uriHash_,
        uint64 expiresAt_,
        address issuer
    ) internal returns (uint256 credentialId) {
        credentialId = nextCredentialId++;

        _credentials[credentialId] = Credential({
            subject: subject,
            credentialType: credentialType_,
            issuer: issuer,
            credentialHash: credentialHash_,
            metadataHash: metadataHash_,
            uriHash: uriHash_,
            issuedAt: uint64(block.timestamp),
            expiresAt: expiresAt_,
            revoked: false,
            revokedAt: 0,
            replacementId: 0,
            proofStatus: ProofStatus.Pending
        });

        _subjectCredentialIds[subject].push(credentialId);
        _latestCredentialByType[subject][credentialType_] = credentialId;

        emit CredentialIssued(
            credentialId,
            subject,
            credentialType_,
            issuer,
            credentialHash_,
            metadataHash_,
            uriHash_,
            uint64(block.timestamp),
            expiresAt_
        );
    }

    function _validateIssue(
        address subject,
        CredentialType credentialType_,
        bytes32 credentialHash_,
        uint64 expiresAt_
    ) internal view {
        if (subject == address(0)) revert ZeroAddress();
        if (credentialType_ == CredentialType.Unknown) revert InvalidCredentialType();
        if (credentialHash_ == bytes32(0)) revert InvalidCredentialHash();

        uint64 currentTimestamp = uint64(block.timestamp);
        if (expiresAt_ != 0 && expiresAt_ <= currentTimestamp) {
            revert InvalidExpiry(expiresAt_, currentTimestamp);
        }

        if (SHIELD_REGISTRY.isBanned(subject)) revert SubjectBanned(subject);
    }

    function _isCredentialActive(
        uint256 credentialId
    ) internal view returns (bool) {
        if (!_credentialExists(credentialId)) return false;

        Credential storage credential = _credentials[credentialId];

        if (credential.revoked) return false;
        if (credential.expiresAt != 0 && credential.expiresAt <= block.timestamp) return false;
        if (SHIELD_REGISTRY.isBanned(credential.subject)) return false;

        return true;
    }

    function _credentialExists(
        uint256 credentialId
    ) internal view returns (bool) {
        return credentialId != 0 && credentialId < nextCredentialId
            && _credentials[credentialId].subject != address(0);
    }

    function _requireCredential(
        uint256 credentialId
    ) internal view returns (Credential storage credential) {
        if (!_credentialExists(credentialId)) revert CredentialNotFound(credentialId);
        credential = _credentials[credentialId];
    }

    function _requireCredentialView(
        uint256 credentialId
    ) internal view returns (Credential storage credential) {
        if (!_credentialExists(credentialId)) revert CredentialNotFound(credentialId);
        credential = _credentials[credentialId];
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
