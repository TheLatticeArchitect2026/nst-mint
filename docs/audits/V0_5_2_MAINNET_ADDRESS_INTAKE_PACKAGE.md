# NST Core v0.5.2 Mainnet Address Intake Package

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 1e5af90fa6c079453e9bdcccb9f9fb76ea7644c6
Created UTC: 2026-09-27T18:42:07Z

Source candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md
Source intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source role treasury operator matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md

## Purpose

This package is the formal intake container for future NST Core v0.5.2 production mainnet addresses.

This document is not a deployment authorization.

No mainnet deployment is authorized by this package.

This package must not contain private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, or signing material.

Only public production addresses, governance objects, checksums, approval references, and review receipts belong in this package.

## Current blocker

Production owner addresses remain TBD.

Mainnet deployment remains blocked.

This package is complete only when every required address category is populated from an approved source of truth, checksum reviewed, matched against the role and treasury matrix, approved, and committed.

## Address intake rule

Every address row must include:

- Owner category.
- Role or treasury route affected.
- Final public address or governance object.
- Custody type.
- Signer threshold, where applicable.
- Controller or responsible party.
- Approval evidence reference.
- Intended deployment config field.
- Checksum confirmation.
- Local/mock/testnet exclusion confirmation.
- Post-deploy read-only verification command.
- Status.

Any row that remains TBD keeps the full mainnet package blocked.

## Rejection rule

Reject an address entry if:

- It includes a private key, secret, seed phrase, API key, deployer key, wallet secret, or recovery phrase.
- It lacks approval evidence.
- It is a placeholder address.
- It is a local mock address.
- It is a Base Sepolia or test-only address presented as production without explicit written limitation.
- It assigns treasury authority to a routine hot-wallet operator without approval.
- It lets a bootstrap deployer retain production powers after handoff without approval.
- It conflicts with the role, treasury, or operator matrix.

## Required production address categories

| Category | Required source | Final value | Status |
| --- | --- | --- | --- |
| Governance multisig or governance object | Final governance approval record | TBD | OPEN |
| Emergency multisig | Final emergency authority approval record | TBD | OPEN |
| Treasury multisig | Final treasury approval record | TBD | OPEN |
| Operator multisig | Final operator approval record | TBD | OPEN |
| Mint authority | Final mint authority approval record | TBD | OPEN |
| Metadata operator | Final metadata authority approval record | TBD | OPEN |
| Vetting operator | Final ShieldRegistry authority approval record | TBD | OPEN |
| Credential operator | Final VaultRegistry authority approval record | TBD | OPEN |
| Claim operator | Final YieldPool claim approval record | TBD | OPEN |
| Founder receipt wallet or governance object | Final founder custody approval record | TBD | OPEN |
| Rescue destination | Final emergency and treasury approval record | TBD | OPEN |
| Deployment funding wallet | Final deployment funding approval record | TBD | OPEN |
| Bootstrap operator wallet | Temporary deployment-only approval record | TBD | OPEN |

## Contract role address intake

| Contract or module | Address or owner category required | Intended config field or role | Final value | Status |
| --- | --- | --- | --- | --- |
| CFTv2 | Governance / admin authority | DEFAULT_ADMIN_ROLE owner | TBD | OPEN |
| CFTv2 | Pauser authority | PAUSER_ROLE owner | TBD | OPEN |
| CFTv2 | Mint authority | MINTER_ROLE or mint authority owner | TBD | OPEN |
| NSTSBT | Governance / admin authority | DEFAULT_ADMIN_ROLE owner | TBD | OPEN |
| NSTSBT | Pauser authority | PAUSER_ROLE owner | TBD | OPEN |
| NSTSBT | Mint manager | MINT_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Metadata manager | METADATA_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Treasury manager | TREASURY_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Swap operator | SWAP_OPERATOR_ROLE owner | TBD | OPEN |
| TreasuryRouter | Treasury route manager | Route authority | TBD | OPEN |
| TreasuryRouter | Treasury operator | Treasury route operations | TBD | OPEN |
| TreasuryRouter | Asset manager | Asset controls | TBD | OPEN |
| ShieldRegistry | Vetting authority | Vetting / ban / exemption authority | TBD | OPEN |
| VaultRegistry | Credential authority | Credential issuance authority | TBD | OPEN |
| YieldPool | Claim authority | Claim and yield operations | TBD | OPEN |
| RewardEscrow | Grant authority | Grant creation authority | TBD | OPEN |

## Treasury route intake

| Treasury route or destination | Required owner category | Final value | Status |
| --- | --- | --- | --- |
| Founder receipt wallet or governance object | Founder custody approval | TBD | OPEN |
| Yield pool receiver | Treasury approval | TBD | OPEN |
| CFT treasury destination | Treasury approval | TBD | OPEN |
| Fee or BPS recipient controls | Governance and treasury approval | TBD | OPEN |
| Rescue destination | Emergency and treasury approval | TBD | OPEN |
| TreasuryRouter route destinations | Treasury route approval | TBD | OPEN |

## Deployment config mapping

| Config field | Required source | Final value | Status |
| --- | --- | --- | --- |
| defaultAdmin | Governance approval record | TBD | OPEN |
| pauser | Emergency or pauser approval record | TBD | OPEN |
| mintManager | Mint authority approval record | TBD | OPEN |
| metadataManager | Metadata authority approval record | TBD | OPEN |
| treasuryManager | Treasury approval record | TBD | OPEN |
| swapOperator | Swap operator approval record | TBD | OPEN |
| shieldRegistry | ShieldRegistry deployment or approved dependency record | TBD | OPEN |
| cft | CFT deployment or approved dependency record | TBD | OPEN |
| router | Router approval record | TBD | OPEN |
| yieldPool | YieldPool approval record | TBD | OPEN |
| founderPayoutWallet | Founder custody approval record | TBD | OPEN |
| genesisRecipient | Founder or genesis approval record | TBD | OPEN |
| rescueDestination | Emergency and treasury approval record | TBD | OPEN |
| deploymentFundingWallet | Deployment funding approval record | TBD | OPEN |

## Validation workflow

| Step | Requirement | Status |
| --- | --- | --- |
| 1 | Receive final public address from approved source of truth | OPEN |
| 2 | Confirm address checksum formatting | OPEN |
| 3 | Confirm address is not a local mock address | OPEN |
| 4 | Confirm address is not a Base Sepolia test-only address unless explicitly limited | OPEN |
| 5 | Confirm no private key, seed phrase, API key, wallet secret, or recovery phrase is included | OPEN |
| 6 | Confirm owner category matches intended permission scope | OPEN |
| 7 | Confirm treasury authorities are separated from routine operators where practical | OPEN |
| 8 | Confirm emergency authorities are separated from routine operators where practical | OPEN |
| 9 | Confirm metadata operators cannot move funds | OPEN |
| 10 | Confirm vetting and credential operators cannot move treasury funds | OPEN |
| 11 | Confirm bootstrap deployer powers are temporary or removed after handoff | OPEN |
| 12 | Confirm final address template is updated | OPEN |
| 13 | Confirm operator handoff checklist is updated | OPEN |
| 14 | Confirm deployment config is updated from final approved template | OPEN |
| 15 | Confirm read-only audit command exists before deployment | OPEN |

## Evidence required before completion

- Final governance approval receipt.
- Final emergency authority approval receipt.
- Final treasury approval receipt.
- Final operator approval receipt.
- Final founder custody approval receipt.
- Final deployment funding approval receipt.
- Final checksum review receipt.
- Final address template update receipt.
- Final role treasury operator matrix update receipt.
- Final deployment config review receipt.
- Final operator handoff update receipt.
- Final human approval receipt.

## Current status

- Address intake package draft created.
- Production owner addresses remain TBD.
- No production address is approved by this draft.
- No source code has been changed.
- No Foundry config has been changed.
- No deployment script has been changed.
- No release script has been changed.
- No mainnet deployment has been authorized.
- Next task: collect final production public addresses from approved source of truth only.

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

## V0.5.2 final production address approval receipt template reference

Reference file: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md
Reference commit: fcfaf82996a48c711d5f9537051ad5a5b91a4291
Reference UTC: 2026-09-30T09:05:59Z

This reference connects the Mainnet address intake package to the final production address approval receipt template.

This reference is not a deployment authorization.

No mainnet deployment is authorized by this reference.

This reference does not approve any production address, route, role, treasury destination, operator, key, deployer wallet, governance object, release package, or deployment configuration.

Final production addresses remain blocked unless each required production address row is paired with a completed approval receipt created from the committed final production address approval receipt template or a stricter committed successor.

Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.

No private key, seed phrase, deployer key, wallet secret, API key, recovery phrase, private RPC credential, keystore password, signing material, or hardware wallet recovery information may be documented in this reference chain.

Required approval evidence before this gate can close:

- Completed final production address approval receipt.
- Final public production address values from an approved source of truth.
- Approval evidence for each required owner category.
- Checksum confirmation for each public address.
- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
- Confirmation that no private signing material or secret material is included.
- Manual review receipt.
- Commit and remote confirmation receipt.

Until this approval evidence exists, the production-address portion of this readiness gate remains OPEN and mainnet deployment remains BLOCKED.

## v0.5.2 Base Sepolia address checksum receipts reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_CHECKSUM_RECEIPTS.md

Reference commit: bae5ee0b499d6f3db93cb941da37bbcabc40ffde

Reference captured UTC: 2026-10-11T20:22:16Z

Network: Base Sepolia

Chain ID: 84532

Checksum method: EIP-55 via Foundry cast

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

This reference does not approve any Base Sepolia address for use outside evidence processing.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that Base Sepolia address checksum receipts exist and were remotely confirmed.

Address checksum receipt existence must not be treated as generated config approval.

Address checksum receipt existence must not be treated as protocol client approval.

Address checksum receipt existence must not be treated as public demo approval.

Address checksum receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete ABI evidence response review.
- Complete ABI evidence records.
- Complete ABI checksum receipts.
- Complete explorer/source verification receipts where applicable.
- Complete method classification.
- Complete read allowlist.
- Complete write blocklist.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep protocol client implementation blocked until generated config and ABI gates are complete.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not use these checksum receipts alone in generated config.
- Do not use these checksum receipts alone in protocol clients.
- Do not use these checksum receipts alone in public demo source.
- Do not use these checksum receipts for mainnet.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not use this reference as production address approval.
- Do not use this reference as production ABI approval.
- Do not use this reference as treasury approval.
- Do not use this reference as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI checksum receipts reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_CHECKSUM_RECEIPTS.md

Reference commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

Reference captured UTC: 2026-10-12T10:22:01Z

Network: Base Sepolia

Chain ID: 84532

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

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

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI for use outside evidence processing.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that Base Sepolia ABI checksum receipts exist and were remotely confirmed.

ABI checksum receipt existence must not be treated as generated config approval.

ABI checksum receipt existence must not be treated as protocol client approval.

ABI checksum receipt existence must not be treated as method classification approval.

ABI checksum receipt existence must not be treated as read allowlist approval.

ABI checksum receipt existence must not be treated as write blocklist approval.

ABI checksum receipt existence must not be treated as public demo approval.

ABI checksum receipt existence must not be treated as mainnet approval.

Raw ABI JSON was not copied into the checksum receipt file.

Temporary Forge artifacts were not committed.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete method classification.
- Complete read allowlist.
- Complete write blocklist.
- Complete explorer/source verification receipts where applicable.
- Complete config package gate review.
- Keep generated Base Sepolia read-only config blocked until method classification, read allowlist, write blocklist, and package gates authorize generation.
- Keep protocol client implementation blocked until generated config and protocol client gates are complete.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not use ABI checksum receipts as method classification.
- Do not use ABI checksum receipts as a read allowlist.
- Do not use ABI checksum receipts as a write blocklist.
- Do not use ABI checksum receipts alone in generated config.
- Do not use ABI checksum receipts alone in protocol clients.
- Do not use ABI checksum receipts alone in public demo source.
- Do not use ABI checksum receipts for mainnet.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not use this reference as production ABI approval.
- Do not use this reference as treasury approval.
- Do not use this reference as governance approval.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept memory-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

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
