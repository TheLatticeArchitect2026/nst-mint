# NST Core v0.5.2 Base Sepolia Deployment Inventory Source-of-Truth Review Checklist

Status: DRAFT CHECKLIST
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T16:19:11Z
Current commit at creation: 3e53aad764e5cec6869b6e312dd145e47218747d

Source file under review: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source file commit: 3e53aad764e5cec6869b6e312dd145e47218747d

Deployment inventory read-only inspection receipt commit: 075ca65054153985aee42b0a8ff0ee1ef6ad9d5e

Base Sepolia source-of-truth locator receipt commit: 3e53aad764e5cec6869b6e312dd145e47218747d

Base Sepolia evidence gap register commit: 3e53aad764e5cec6869b6e312dd145e47218747d

Base Sepolia address evidence response review checklist commit: 3e53aad764e5cec6869b6e312dd145e47218747d

Base Sepolia ABI evidence response review checklist commit: 3e53aad764e5cec6869b6e312dd145e47218747d

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

This document is not a deployment authorization.

This document does not authorize deployment.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize public Base Sepolia demo launch.

This document does not approve executable config package source.

This document does not approve generated config.

This document does not approve executable protocol client package source.

This document does not approve executable app source.

This document does not approve executable package source.

This document does not approve executable infra source.

This document does not approve any production address.

This document does not approve any Base Sepolia address.

This document does not approve any production ABI.

This document does not approve any Base Sepolia ABI.

This document does not approve any Base Sepolia read method.

This document does not approve any Base Sepolia write method.

This document does not approve transaction rail execution.

This document does not approve governance writes.

This document does not approve treasury routes.

This document does not authorize any public mainnet mint interface.

This document is a source-of-truth review checklist only.

## Purpose

This checklist defines how the Base Sepolia deployment inventory and public interface decision record must be reviewed before any candidate address, ABI, explorer source, verification reference, or deployment reference may be used to draft evidence-response artifacts.

This checklist does not collect addresses.

This checklist does not collect ABIs.

This checklist does not approve addresses.

This checklist does not approve ABIs.

This checklist does not approve generated config.

This checklist does not approve protocol clients.

This checklist does not approve public demo launch.

This checklist does not approve mainnet deployment.

## Review outcome statuses

Allowed statuses:

| Status | Meaning |
| --- | --- |
| APPROVED_FOR_RESPONSE_DRAFTING | Source may be used to draft address/ABI evidence responses |
| BLOCKED | Source is incomplete or unsafe |
| REJECTED | Source cannot be accepted |
| SUPERSEDED | Source replaced by newer source |
| NOT_APPLICABLE | Source does not apply |
| NEEDS_MORE_PUBLIC_EVIDENCE | More public evidence is required |

Unknown statuses are not allowed.

APPROVED_FOR_RESPONSE_DRAFTING is not evidence approval.

APPROVED_FOR_RESPONSE_DRAFTING is not address approval.

APPROVED_FOR_RESPONSE_DRAFTING is not ABI approval.

APPROVED_FOR_RESPONSE_DRAFTING is not config approval.

APPROVED_FOR_RESPONSE_DRAFTING is not public demo approval.

APPROVED_FOR_RESPONSE_DRAFTING is not mainnet approval.

## Global source review requirements

The inspected source may be used for response drafting only if:

- the source file is tracked;
- the source file is committed;
- the source file has a current commit hash;
- the source file is Base Sepolia scoped;
- the source file states or implies chain ID 84532;
- the source file is not screenshot-only evidence;
- the source file is not chat-only evidence;
- the source file is not memory-only evidence;
- the source file is not guessed evidence;
- the source file is not local Anvil evidence;
- the source file is not Base mainnet evidence;
- the source file does not require private keys;
- the source file does not require seed phrases;
- the source file does not require wallet recovery information;
- the source file does not require private RPC credentials;
- the source file does not authorize deployment by itself;
- the source file does not authorize public demo launch by itself;
- the source file does not authorize mainnet by itself.

## Required source-review fields

| Field | Required | Status |
| --- | --- | --- |
| Reviewer | YES | OPEN |
| Review date UTC | YES | OPEN |
| Source file path | YES | OPEN |
| Source commit | YES | OPEN |
| Source network | YES | OPEN |
| Source chain ID | YES | OPEN |
| Source status | YES | OPEN |
| Address evidence candidate status | YES | OPEN |
| ABI evidence candidate status | YES | OPEN |
| Explorer/source verification candidate status | YES | OPEN |
| Secret-free confirmation | YES | OPEN |
| Deployment authorization boundary | YES | OPEN |
| Public demo boundary | YES | OPEN |
| Mainnet boundary | YES | OPEN |
| Final source-review status | YES | OPEN |

## Address candidate source review

Any address candidate derived from the inspected source must satisfy:

| Check | Status |
| --- | --- |
| Source line or section is committed | OPEN |
| Source line or section is Base Sepolia scoped | OPEN |
| Source line or section is not local Anvil | OPEN |
| Source line or section is not Base mainnet | OPEN |
| Source line or section identifies or can be tied to a contract label | OPEN |
| Source line or section is not placeholder | OPEN |
| Source line or section is not TBD | OPEN |
| Source line or section is not screenshot-only | OPEN |
| Source line or section is not chat-only | OPEN |
| Source line or section is not memory-only | OPEN |
| Source line or section is not guessed | OPEN |
| Source line or section is not a private wallet screen | OPEN |
| Source line or section does not contain secret material | OPEN |
| Address can proceed to response drafting only after review | OPEN |

No address candidate is approved by this checklist.

## ABI candidate source review

Any ABI candidate derived from the inspected source must satisfy:

| Check | Status |
| --- | --- |
| Source line or section is committed | OPEN |
| Source line or section is Base Sepolia scoped | OPEN |
| Source line or section is not local uncommitted output | OPEN |
| Source line or section is not screenshot-only | OPEN |
| Source line or section is not chat-only | OPEN |
| Source line or section is not memory-only | OPEN |
| Source line or section is not guessed | OPEN |
| Source line or section identifies ABI source or path | OPEN |
| Source line or section identifies or can be tied to a contract label | OPEN |
| Source line or section does not approve write methods | OPEN |
| Source line or section does not contain secret material | OPEN |
| ABI can proceed to response drafting only after review | OPEN |

No ABI candidate is approved by this checklist.

## Explorer and verification source review

Explorer or verification candidates must satisfy:

| Check | Status |
| --- | --- |
| Explorer/source reference is public where applicable | OPEN |
| Explorer/source reference is Base Sepolia scoped where applicable | OPEN |
| Explorer/source reference does not point to Base mainnet unless explicitly marked as non-applicable | OPEN |
| Verification status is clear or marked OPEN | OPEN |
| Contract label is clear or marked OPEN | OPEN |
| Related address evidence is clear or marked OPEN | OPEN |
| Related ABI evidence is clear or marked OPEN | OPEN |
| No deployment approval is implied | OPEN |
| No public demo approval is implied | OPEN |
| No mainnet approval is implied | OPEN |

## Source-to-response drafting rule

If this checklist is completed as APPROVED_FOR_RESPONSE_DRAFTING, the next allowed artifacts are:

- Base Sepolia address evidence response draft;
- Base Sepolia ABI evidence response draft;
- Base Sepolia explorer/source verification response draft.

The next allowed artifacts are not:

- address evidence records;
- address checksum receipts;
- ABI evidence records;
- ABI checksum receipts;
- generated read-only config;
- protocol clients;
- app source;
- package source;
- infrastructure source;
- public demo launch;
- mainnet deployment.

Evidence records require separate response review.

Checksum receipts require separate evidence review.

Generated config requires separate package and evidence gates.

## Address evidence response dependency

Base Sepolia address evidence response may be drafted only after this source review confirms:

- source file is committed;
- source file is Base Sepolia scoped;
- source file has no unresolved secret issue;
- source file does not imply deployment approval;
- candidate address extraction is clearly marked as response drafting only.

## ABI evidence response dependency

Base Sepolia ABI evidence response may be drafted only after this source review confirms:

- ABI source is public or committed;
- ABI candidate is Base Sepolia scoped;
- ABI candidate is not manually edited without receipt;
- ABI candidate has no unresolved secret issue;
- write methods remain blocked;
- candidate ABI extraction is clearly marked as response drafting only.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- source review allows response drafting;
- address evidence response review is complete;
- ABI evidence response review is complete;
- address evidence records are complete;
- address checksum receipts are complete;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- explorer/source verification receipts are complete where applicable;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

This checklist does not authorize generated config.

## Protocol client blocker

Protocol-client implementation remains blocked until:

- Base Sepolia read-only config is approved;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

This checklist does not authorize protocol client implementation.

## Public demo blocker

Public Base Sepolia demo launch remains blocked until:

- public warning language is implemented;
- network badge is visible;
- address evidence is complete;
- ABI evidence is complete;
- checksum receipts are complete;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

This checklist does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia address may be used as a Base mainnet address.

No Base Sepolia ABI may be used as final Base mainnet ABI evidence without separate review.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## No-secret confirmation

This checklist does not request private keys.

This checklist does not request seed phrases.

This checklist does not request wallet recovery phrases.

This checklist does not request deployer keys.

This checklist does not request signer keys.

This checklist does not request wallet secrets.

This checklist does not request private RPC credentials.

This checklist does not request private API keys.

This checklist does not request bearer tokens.

This checklist does not request private custody material.

## No-go conditions

Do not treat inspected source lines as approved evidence.

Do not treat inspected source lines as approved addresses.

Do not treat inspected source lines as approved ABIs.

Do not use raw candidate addresses in generated config.

Do not use raw candidate ABIs in generated config.

Do not use raw inspected source lines in protocol clients.

Do not use this checklist as deployment authorization.

Do not use this checklist as public demo approval.

Do not use this checklist as mainnet approval.

Do not use this checklist as production address approval.

Do not use this checklist as production ABI approval.

Do not use this checklist as treasury approval.

Do not use this checklist as governance approval.

Do not accept guessed addresses.

Do not accept placeholder addresses.

Do not accept screenshot-only evidence.

Do not accept chat-only evidence.

Do not accept memory-only evidence.

Do not use local Anvil addresses.

Do not use Base mainnet addresses.

Do not accept guessed ABIs.

Do not accept placeholder ABIs.

Do not accept screenshot-only ABI evidence.

Do not accept chat-only ABI evidence.

Do not accept manually edited ABIs without receipt.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not request signer keys.

Do not request wallet secrets.

Do not request private RPC credentials.

## Secret exclusion checklist

This checklist must contain none of the following usable secret material:

| Secret type | Present? | Status |
| --- | --- | --- |
| Private key value | NO | REQUIRED |
| Seed phrase value | NO | REQUIRED |
| Wallet recovery phrase value | NO | REQUIRED |
| Deployer key value | NO | REQUIRED |
| Signer key value | NO | REQUIRED |
| Wallet secret value | NO | REQUIRED |
| Private RPC credential value | NO | REQUIRED |
| Keystore password value | NO | REQUIRED |
| Hardware wallet recovery value | NO | REQUIRED |
| Private signer material value | NO | REQUIRED |
| Personal access token value | NO | REQUIRED |
| Private API key value | NO | REQUIRED |
| Bearer token value | NO | REQUIRED |

## Acceptance criteria

This source-of-truth review checklist is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states this is a source-of-truth review checklist only;
- it states no address is approved;
- it states no ABI is approved;
- it states no generated config is approved;
- it states no protocol client is approved;
- it states no public demo is approved;
- it states no mainnet deployment is approved;
- it defines address candidate source review requirements;
- it defines ABI candidate source review requirements;
- it defines explorer/source verification review requirements;
- it defines source-to-response drafting rules;
- it defines generated config blockers;
- it defines protocol client blockers;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

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
