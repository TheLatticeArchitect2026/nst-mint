# NST Core v0.5.2 Mainnet Owner Address Template

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 5f80ee6dfd18120ce9896d81b74bf0f88e354666
Created UTC: 2026-09-27T10:15:23Z
Source matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md

## Purpose

This document is the concrete address-entry template for translating the v0.5.2 role / treasury / operator matrix into final mainnet owner addresses.

This document must be completed before any mainnet candidate deployment is prepared.

No private keys, seed phrases, API keys, deployer keys, or wallet secrets belong in this file.

## Mainnet gate

No mainnet deployment until every TBD field below is resolved, reviewed, and matched against the final deployment script configuration.

No bootstrap deployer wallet should retain production powers after handoff unless explicitly approved and documented.

## Owner address registry

| Owner category | Final address or governance object | Custody type | Signer threshold | Controller | Approval evidence | Status |
| --- | --- | --- | --- | --- | --- | --- |
| TBD_GOVERNANCE_MULTISIG | TBD | Multisig or governance object | TBD | TBD | TBD | OPEN |
| TBD_EMERGENCY_MULTISIG | TBD | Multisig or emergency authority | TBD | TBD | TBD | OPEN |
| TBD_TREASURY_MULTISIG | TBD | Treasury multisig | TBD | TBD | TBD | OPEN |
| TBD_OPERATOR_MULTISIG | TBD | Operator multisig or controlled operator account | TBD | TBD | TBD | OPEN |
| TBD_MINT_AUTHORITY | TBD | Restricted mint authority | TBD | TBD | TBD | OPEN |
| TBD_METADATA_OPERATOR | TBD | Metadata operator | TBD | TBD | TBD | OPEN |
| TBD_VETTING_OPERATOR | TBD | Shield registry operator | TBD | TBD | TBD | OPEN |
| TBD_CREDENTIAL_OPERATOR | TBD | Vault credential operator | TBD | TBD | TBD | OPEN |
| TBD_CLAIM_OPERATOR | TBD | Yield claim operator | TBD | TBD | TBD | OPEN |
| NONE_AFTER_HANDOFF | No retained production role | Not applicable | Not applicable | Not applicable | Post-handoff role audit | OPEN |

## Contract role address assignment template

| Contract | Role | Owner category | Final mainnet address | Deployment config field | Post-deploy verification command | Status |
| --- | --- | --- | --- | --- | --- | --- |
| CFTv2 | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | TBD | TBD | TBD | OPEN |
| CFTv2 | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| CFTv2 | CONFIG_MANAGER_ROLE | TBD_OPERATOR_MULTISIG | TBD | TBD | TBD | OPEN |
| CFTv2 | DIRECT_MINTER_ROLE | TBD_MINT_AUTHORITY | TBD | TBD | TBD | OPEN |
| CFTv2 | TREASURY_MINT_ROLE | TBD_TREASURY_MULTISIG | TBD | TBD | TBD | OPEN |
| CFTv2 | BURNER_ROLE | TBD_OPERATOR_MULTISIG | TBD | TBD | TBD | OPEN |
| NSTSBT | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | TBD | TBD | TBD | OPEN |
| NSTSBT | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| NSTSBT | MINT_MANAGER_ROLE | TBD_MINT_AUTHORITY | TBD | TBD | TBD | OPEN |
| NSTSBT | METADATA_MANAGER_ROLE | TBD_METADATA_OPERATOR | TBD | TBD | TBD | OPEN |
| NSTSBT | TREASURY_MANAGER_ROLE | TBD_TREASURY_MULTISIG | TBD | TBD | TBD | OPEN |
| NSTSBT | SWAP_OPERATOR_ROLE | TBD_OPERATOR_MULTISIG | TBD | TBD | TBD | OPEN |
| ReferralController | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | TBD | TBD | TBD | OPEN |
| ReferralController | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| ReferralController | CONFIG_MANAGER_ROLE | TBD_OPERATOR_MULTISIG | TBD | TBD | TBD | OPEN |
| RewardEscrow | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | TBD | TBD | TBD | OPEN |
| RewardEscrow | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| RewardEscrow | CONFIG_MANAGER_ROLE | TBD_OPERATOR_MULTISIG | TBD | TBD | TBD | OPEN |
| RewardEscrow | GRANT_CREATOR_ROLE | TBD_OPERATOR_MULTISIG | TBD | TBD | TBD | OPEN |
| ShieldRegistry | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | TBD | TBD | TBD | OPEN |
| ShieldRegistry | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| ShieldRegistry | VETTING_MANAGER_ROLE | TBD_VETTING_OPERATOR | TBD | TBD | TBD | OPEN |
| ShieldRegistry | BAN_MANAGER_ROLE | TBD_VETTING_OPERATOR | TBD | TBD | TBD | OPEN |
| ShieldRegistry | EXEMPTION_MANAGER_ROLE | TBD_VETTING_OPERATOR | TBD | TBD | TBD | OPEN |
| ShieldRegistry | PROFILE_MANAGER_ROLE | TBD_VETTING_OPERATOR | TBD | TBD | TBD | OPEN |
| TreasuryRouter | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | TBD | TBD | TBD | OPEN |
| TreasuryRouter | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| TreasuryRouter | ROUTE_MANAGER_ROLE | TBD_TREASURY_MULTISIG | TBD | TBD | TBD | OPEN |
| TreasuryRouter | TREASURY_OPERATOR_ROLE | TBD_TREASURY_MULTISIG | TBD | TBD | TBD | OPEN |
| TreasuryRouter | ASSET_MANAGER_ROLE | TBD_TREASURY_MULTISIG | TBD | TBD | TBD | OPEN |
| TreasuryRouter | EMERGENCY_MANAGER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| VaultRegistry | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | TBD | TBD | TBD | OPEN |
| VaultRegistry | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| VaultRegistry | CREDENTIAL_ISSUER_ROLE | TBD_CREDENTIAL_OPERATOR | TBD | TBD | TBD | OPEN |
| VaultRegistry | CREDENTIAL_REVOKER_ROLE | TBD_CREDENTIAL_OPERATOR | TBD | TBD | TBD | OPEN |
| VaultRegistry | URI_MANAGER_ROLE | TBD_METADATA_OPERATOR | TBD | TBD | TBD | OPEN |
| VaultRegistry | PROOF_MANAGER_ROLE | TBD_CREDENTIAL_OPERATOR | TBD | TBD | TBD | OPEN |
| YieldPool | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | TBD | TBD | TBD | OPEN |
| YieldPool | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |
| YieldPool | ASSET_MANAGER_ROLE | TBD_TREASURY_MULTISIG | TBD | TBD | TBD | OPEN |
| YieldPool | GRANT_MANAGER_ROLE | TBD_OPERATOR_MULTISIG | TBD | TBD | TBD | OPEN |
| YieldPool | CLAIM_MANAGER_ROLE | TBD_CLAIM_OPERATOR | TBD | TBD | TBD | OPEN |
| YieldPool | RESCUE_MANAGER_ROLE | TBD_EMERGENCY_MULTISIG | TBD | TBD | TBD | OPEN |

## Treasury and value-routing address template

| Value area | Final mainnet address or contract | Owner category | Verification required | Status |
| --- | --- | --- | --- | --- |
| Founder receipt wallet | TBD | TBD_TREASURY_MULTISIG or approved founder custody | Address approval and deployment config match | OPEN |
| Yield pool receiver | TBD | TBD_TREASURY_MULTISIG or YieldPool contract | Route and asset custody confirmed | OPEN |
| TreasuryRouter route destination 1 | TBD | TBD_TREASURY_MULTISIG | Route config reviewed | OPEN |
| TreasuryRouter route destination 2 | TBD | TBD_TREASURY_MULTISIG | Route config reviewed | OPEN |
| TreasuryRouter route destination 3 | TBD | TBD_TREASURY_MULTISIG | Route config reviewed | OPEN |
| Rescue destination | TBD | TBD_EMERGENCY_MULTISIG or treasury custody | Rescue policy reviewed | OPEN |
| Deployment funding wallet | TBD | NONE_AFTER_HANDOFF | No retained production role after handoff | OPEN |
| Bootstrap operator wallet | TBD | NONE_AFTER_HANDOFF | Role revocation verified after handoff | OPEN |

## Address-entry acceptance checks

- Every final address must be copied from the final approved source of truth.
- Every final address must be checked for checksum formatting.
- Every final address must be mapped to exactly one intended owner category unless explicitly documented.
- No private key or seed phrase may appear in this file.
- Deployment config must be reviewed against this file before any mainnet candidate deployment.
- Post-deploy read-only role checks must confirm that deployed state matches this file.

## Current status

- Template created.
- Production addresses remain TBD.
- No source code has been changed.
- Next task: complete the operator handoff checklist and prepare final address intake process.

## v0.5.2 final production address collection package reference

Reference added UTC: 2026-09-29T20:50:39Z

Reference artifact: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md

Reference commit: efbf87cf1b199f5fe42026925aa4bdea03663179

Current branch at reference time: phase/v0.5.2-mainnet-readiness

This reference records that the v0.5.2 final production address collection package exists as a committed readiness artifact.

This reference does not approve any production address, route, role, treasury destination, operator, governance object, deployment key, release package, deployment configuration, or mainnet deployment.

This reference does not authorize deployment.

Production owner addresses remain TBD until final public production addresses are collected from an approved source of truth, reviewed, committed, pushed, and remotely confirmed.

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information belong in this repository.

Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.

Mainnet deployment remains blocked.
