# NST Lattice Vault Spec

Status: Draft for VaultRegistry v1
Branch: vault-registry-v1
Purpose: Define the digital ID locker and credential proof layer.

## Mission

The Vault is the sovereign identity, credential, and document-proof layer of NST Lattice.

It gives members and entities a way to prove identity-related facts without putting raw personal documents on-chain.

## Core rule

Raw documents are never stored on-chain.

The chain stores:

1. Hashes
2. Credential references
3. Issuer attestations
4. Revocation records
5. Proof status flags
6. Encrypted storage references
7. Event history

## What the Vault supports

The Vault supports:

1. Individual identity proof
2. Business registration proof
3. Sole proprietor proof
4. Corporation proof
5. Beneficial ownership proof
6. Supplier proof
7. Farmer proof
8. First Nations partner entity proof
9. Mortgage eligibility proof
10. Invoice issuer authenticity proof
11. Project eligibility proof
12. Revocation and replacement of outdated proofs

## V1 non-goals

VaultRegistry v1 does not:

1. Store raw documents on-chain
2. Encrypt files by itself
3. Replace legal identity review
4. Replace KYC or AML where legally required
5. Claim that a wallet alone proves a legal person
6. Handle zero-knowledge proofs yet
7. Handle full off-chain file hosting yet

## Relationship to existing contracts

VaultRegistry must integrate with:

1. ShieldRegistry
2. NSTSBT
3. Future InvoiceRail
4. Future MortgagePriorityRegistry
5. Future AssetSPVRegistry
6. Future First Nations allocation modules

## Access model

Minimum roles:

1. DEFAULT_ADMIN_ROLE
2. PAUSER_ROLE
3. CREDENTIAL_ISSUER_ROLE
4. CREDENTIAL_REVOKER_ROLE
5. URI_MANAGER_ROLE
6. PROOF_MANAGER_ROLE

## Credential model

Each credential should include:

1. Credential ID
2. Subject address
3. Credential type
4. Issuer address
5. Document hash
6. Metadata hash
7. Encrypted URI hash or URI pointer
8. Issued timestamp
9. Expiry timestamp
10. Revoked flag
11. Revocation timestamp
12. Replacement credential ID

## Required functions

VaultRegistry v1 should expose:

1. issueCredential
2. revokeCredential
3. replaceCredential
4. setCredentialURI
5. hasActiveCredential
6. credentialSubject
7. credentialType
8. credentialIssuer
9. credentialHash
10. credentialMetadataHash
11. credentialExpiry
12. isCredentialRevoked
13. getCredentialSnapshot

## Required events

1. CredentialIssued
2. CredentialRevoked
3. CredentialReplaced
4. CredentialURIUpdated

## Required errors

1. ZeroAddress
2. InvalidCredentialType
3. InvalidCredentialHash
4. CredentialNotFound
5. CredentialRevokedAlready
6. CredentialExpired
7. NotCredentialSubject
8. InvalidIssuer
9. InvalidExpiry
10. InvalidReplacement

## Security requirements

VaultRegistry must:

1. Use pinned Solidity 0.8.28
2. Use OpenZeppelin AccessControl
3. Use Pausable
4. Use ReentrancyGuard only if value transfer is added
5. Avoid storing private plain text
6. Avoid unbounded external calls
7. Emit deterministic events
8. Use explicit custom errors
9. Never expose private document content
10. Never use raw private keys, seeds, or API secrets

## Definition of done

VaultRegistry v1 is complete when:

1. Contract compiles
2. Unit tests pass
3. Integration tests pass
4. forge fmt passes
5. forge test --via-ir passes
6. Secret scan passes
7. Docs updated
8. Commit created
9. Pull request merged
10. Milestone tag prepared if appropriate
