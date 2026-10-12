# NST Core v0.5.2 Role / Treasury / Operator Matrix

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 62cbd7706bc50507d5fc8947871887d272d10098
Created UTC: 2026-09-27T09:55:03Z
Source audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md

## Purpose

This matrix converts the v0.5.2 role / treasury / operator audit into a mainnet-readiness control document.

It identifies production role families, proposed owner categories, permission risk level, funds-control scope, minting scope, routing scope, metadata scope, registry scope, and handoff requirements.

This matrix is not a deployment authorization.

## Mainnet gate

No mainnet deployment until this matrix is completed, reviewed, and matched against the final deployment script configuration.

No deployer bootstrap wallet should retain production powers unless explicitly documented and approved.

No production role should be assigned to an address only because it was convenient during testnet deployment.

## Owner category legend

| Owner category | Meaning | Mainnet expectation |
| --- | --- | --- |
| TBD_GOVERNANCE_MULTISIG | Cold or multisig governance/admin authority | Required for DEFAULT_ADMIN_ROLE and final role-admin control |
| TBD_EMERGENCY_MULTISIG | Emergency pause / emergency-response authority | Required for pause and emergency actions |
| TBD_TREASURY_MULTISIG | Treasury fund custody / asset-management authority | Required for value-moving treasury control |
| TBD_OPERATOR_MULTISIG | Operational multisig / controlled operator account | Used only for routine operational roles |
| TBD_MINT_AUTHORITY | Approved mint authority | Must be tightly limited and documented |
| TBD_METADATA_OPERATOR | Metadata / URI operator | Cannot control funds or admin roles |
| TBD_VETTING_OPERATOR | Shield/vetting operator | Registry-control only |
| TBD_CREDENTIAL_OPERATOR | Vault credential operator | Vault credential-control only |
| TBD_CLAIM_OPERATOR | Yield claim operator | Yield-claim-control only |
| NONE_AFTER_HANDOFF | Bootstrap/deployer role to be removed | Must be verified removed before mainnet acceptance |

## Contract role owner matrix

| Contract | Role | Proposed owner category | Risk tier | Permission family | Mainnet status |
| --- | --- | --- | --- | --- | --- |
| CFTv2 | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | Critical | Role admin / governance | OPEN |
| CFTv2 | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | High | Emergency pause | OPEN |
| CFTv2 | CONFIG_MANAGER_ROLE | TBD_OPERATOR_MULTISIG | High | Role-admin for mint/burn/config roles | OPEN |
| CFTv2 | DIRECT_MINTER_ROLE | TBD_MINT_AUTHORITY | Critical | Token minting | OPEN |
| CFTv2 | TREASURY_MINT_ROLE | TBD_TREASURY_MULTISIG | Critical | Treasury minting | OPEN |
| CFTv2 | BURNER_ROLE | TBD_OPERATOR_MULTISIG | High | Token burning | OPEN |
| NSTSBT | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | Critical | Role admin / governance | OPEN |
| NSTSBT | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | High | Emergency pause | OPEN |
| NSTSBT | MINT_MANAGER_ROLE | TBD_MINT_AUTHORITY | Critical | SBT mint control | OPEN |
| NSTSBT | METADATA_MANAGER_ROLE | TBD_METADATA_OPERATOR | Medium | URI / metadata control | OPEN |
| NSTSBT | TREASURY_MANAGER_ROLE | TBD_TREASURY_MULTISIG | Critical | Mint economics / treasury controls | OPEN |
| NSTSBT | SWAP_OPERATOR_ROLE | TBD_OPERATOR_MULTISIG | High | Failed-swap / retry operations | OPEN |
| ReferralController | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | Critical | Role admin / governance | OPEN |
| ReferralController | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | High | Emergency pause | OPEN |
| ReferralController | CONFIG_MANAGER_ROLE | TBD_OPERATOR_MULTISIG | High | Referral configuration | OPEN |
| RewardEscrow | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | Critical | Role admin / governance | OPEN |
| RewardEscrow | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | High | Emergency pause | OPEN |
| RewardEscrow | CONFIG_MANAGER_ROLE | TBD_OPERATOR_MULTISIG | High | Escrow configuration | OPEN |
| RewardEscrow | GRANT_CREATOR_ROLE | TBD_OPERATOR_MULTISIG | High | Reward grant creation | OPEN |
| ShieldRegistry | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | Critical | Role admin / governance | OPEN |
| ShieldRegistry | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | High | Emergency pause | OPEN |
| ShieldRegistry | VETTING_MANAGER_ROLE | TBD_VETTING_OPERATOR | High | Vetting control | OPEN |
| ShieldRegistry | BAN_MANAGER_ROLE | TBD_VETTING_OPERATOR | High | Ban control | OPEN |
| ShieldRegistry | EXEMPTION_MANAGER_ROLE | TBD_VETTING_OPERATOR | High | Exemption control | OPEN |
| ShieldRegistry | PROFILE_MANAGER_ROLE | TBD_VETTING_OPERATOR | Medium | Profile registry control | OPEN |
| TreasuryRouter | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | Critical | Role admin / governance | OPEN |
| TreasuryRouter | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | High | Emergency pause | OPEN |
| TreasuryRouter | ROUTE_MANAGER_ROLE | TBD_TREASURY_MULTISIG | Critical | Treasury route configuration | OPEN |
| TreasuryRouter | TREASURY_OPERATOR_ROLE | TBD_TREASURY_MULTISIG | Critical | Treasury execution / funds movement | OPEN |
| TreasuryRouter | ASSET_MANAGER_ROLE | TBD_TREASURY_MULTISIG | Critical | Asset authorization / custody controls | OPEN |
| TreasuryRouter | EMERGENCY_MANAGER_ROLE | TBD_EMERGENCY_MULTISIG | Critical | Emergency treasury response | OPEN |
| VaultRegistry | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | Critical | Role admin / governance | OPEN |
| VaultRegistry | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | High | Emergency pause | OPEN |
| VaultRegistry | CREDENTIAL_ISSUER_ROLE | TBD_CREDENTIAL_OPERATOR | High | Credential issuance | OPEN |
| VaultRegistry | CREDENTIAL_REVOKER_ROLE | TBD_CREDENTIAL_OPERATOR | High | Credential revocation | OPEN |
| VaultRegistry | URI_MANAGER_ROLE | TBD_METADATA_OPERATOR | Medium | URI control | OPEN |
| VaultRegistry | PROOF_MANAGER_ROLE | TBD_CREDENTIAL_OPERATOR | High | Proof control | OPEN |
| YieldPool | DEFAULT_ADMIN_ROLE | TBD_GOVERNANCE_MULTISIG | Critical | Role admin / governance | OPEN |
| YieldPool | PAUSER_ROLE | TBD_EMERGENCY_MULTISIG | High | Emergency pause | OPEN |
| YieldPool | ASSET_MANAGER_ROLE | TBD_TREASURY_MULTISIG | Critical | Asset authorization | OPEN |
| YieldPool | GRANT_MANAGER_ROLE | TBD_OPERATOR_MULTISIG | High | Grant lifecycle | OPEN |
| YieldPool | CLAIM_MANAGER_ROLE | TBD_CLAIM_OPERATOR | High | Claim lifecycle | OPEN |
| YieldPool | RESCUE_MANAGER_ROLE | TBD_EMERGENCY_MULTISIG | Critical | Rescue / recovery | OPEN |

## Treasury owner matrix

| Treasury / value area | Proposed owner category | Risk tier | Required before mainnet |
| --- | --- | --- | --- |
| Founder receipt wallet | TBD_TREASURY_MULTISIG or approved founder custody | Critical | Confirm final production address |
| Yield pool receiver | TBD_TREASURY_MULTISIG / YieldPool contract | Critical | Confirm route and asset custody |
| TreasuryRouter route destinations | TBD_TREASURY_MULTISIG | Critical | Confirm all production route addresses |
| CFT treasury mint authority | TBD_TREASURY_MULTISIG | Critical | Confirm mint limits and authority |
| Rescue destination | TBD_EMERGENCY_MULTISIG / treasury custody | Critical | Confirm rescue policy |
| Fee / BPS recipient controls | TBD_GOVERNANCE_MULTISIG | Critical | Confirm no unauthorized mutable fee controls |
| Deployment funding wallet | NONE_AFTER_HANDOFF | High | Confirm no retained post-deploy powers |
| Bootstrap operator | NONE_AFTER_HANDOFF | High | Confirm role revocations after handoff |

## Operator permission matrix

| Operator class | Allowed scope | Prohibited scope | Mainnet status |
| --- | --- | --- | --- |
| Governance admin | Final role-admin governance only | Routine hot-wallet operation | OPEN |
| Emergency operator | Pause / emergency response only | Minting, metadata, ordinary treasury routing | OPEN |
| Treasury operator | Approved treasury execution only | Role-admin ownership, unauthorized minting | OPEN |
| Mint operator | Approved minting only | Treasury routing, admin ownership, rescue authority | OPEN |
| Metadata operator | URI / metadata updates only | Funds, minting, treasury, admin powers | OPEN |
| Vetting operator | Shield vetting / ban / exemption / profile actions | Funds, treasury, admin powers | OPEN |
| Credential operator | Vault credential / proof actions | Funds, treasury, admin powers | OPEN |
| Claim operator | Yield claim operations only | Admin, treasury route changes, rescue authority | OPEN |
| Bootstrap deployer | Deployment only | Retained production powers after handoff | OPEN |

## Mainnet handoff checklist

| Check | Status |
| --- | --- |
| Final owner address list prepared | OPEN |
| DEFAULT_ADMIN_ROLE owner selected for every contract | OPEN |
| Pauser / emergency roles separated from routine operators | OPEN |
| Treasury roles separated from deployer and metadata operators | OPEN |
| Mint roles minimized and documented | OPEN |
| Bootstrap deployer/operator role removal verified | OPEN |
| Deployment script role config reviewed against this matrix | OPEN |
| Read-only post-deploy role audit command prepared | OPEN |
| Rollback / emergency pause checklist prepared | OPEN |
| Final human review completed | OPEN |

## Acceptance rule

The matrix remains OPEN until every TBD owner category is mapped to a final production address or explicitly documented governance object.

The v0.5.2 phase must not proceed to any mainnet deployment attempt until this matrix is complete, reviewed, and committed.

## Current matrix status

- Matrix draft created.
- Actual mainnet owner addresses are not yet inserted.
- No contract source code has been changed.
- Next task: derive a concrete address-entry template and operator handoff checklist from this matrix.

## v0.5.2 Base Sepolia method-control reference

Method classification reference: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_METHOD_CLASSIFICATION.md

Method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist reference: docs/audits/V0_5_2_BASE_SEPOLIA_READ_METHOD_ALLOWLIST.md

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist reference: docs/audits/V0_5_2_BASE_SEPOLIA_WRITE_METHOD_BLOCKLIST.md

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

ABI checksum receipts commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

Address checksum receipts commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Reference captured UTC: 2026-10-12T13:38:24Z

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Method-control status:

- ABI method classification complete with safety override.
- Read method allowlist complete.
- Write method blocklist complete.
- Approval signature and approval selector are excluded from the read allowlist.
- Approval signature and approval selector are retained in the write blocklist.
- Write-like methods are excluded from generated read-only config.
- Write methods are excluded from public demo execution.
- Write methods are excluded from transaction rail execution.
- Write methods are excluded from governance writes.
- Write methods are excluded from treasury routes.
- Write methods are excluded from mainnet.

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

Generated Base Sepolia read-only config remains blocked until:

- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied;
- generated config candidate is produced and reviewed.

Protocol client implementation remains blocked until:

- generated Base Sepolia read-only config is approved;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

Public Base Sepolia demo remains blocked until:

- generated read-only config is approved;
- protocol client gate is complete;
- public warning language is implemented;
- network badge is visible;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

Mainnet remains blocked.

No Base Sepolia address, ABI, read method, write method, read-only config, or public demo may be promoted to mainnet.

No-go conditions preserved:

- Do not use method classification alone as generated config.
- Do not use read allowlist alone as generated config.
- Do not use write blocklist alone as generated config.
- Do not include write methods in generated read-only config.
- Do not execute write methods.
- Do not allow write methods in public demo.
- Do not allow write methods in transaction rail.
- Do not allow write methods in governance routes.
- Do not allow write methods in treasury routes.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
