# NST Core v0.5.2 Base Sepolia ABI Evidence Response

Status: DRAFT_ABI_RESPONSE_PENDING_REVIEW
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T20:31:03Z
Current commit at ABI response creation: 866313465ce80cceb5f907672a92344cd1222cd4

ABI inventory receipt: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md

ABI inventory receipt commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI evidence request packet commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI evidence response review checklist commit: 866313465ce80cceb5f907672a92344cd1222cd4

Source-of-truth review receipt commit: 866313465ce80cceb5f907672a92344cd1222cd4

Base Sepolia address checksum receipts commit: bae5ee0b499d6f3db93cb941da37bbcabc40ffde

ABI source policy commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI evidence record template commit: 866313465ce80cceb5f907672a92344cd1222cd4

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

This ABI response is not an ABI evidence record.

This ABI response is not an ABI checksum receipt.

This ABI response is not a method classification receipt.

This ABI response is not a read allowlist.

This ABI response is not a write blocklist.

This ABI response is not a deployment authorization.

This ABI response does not authorize deployment.

This ABI response does not authorize mainnet deployment.

This ABI response does not authorize public production interface launch.

This ABI response does not authorize public Base Sepolia demo launch.

This ABI response does not approve executable config package source.

This ABI response does not approve generated config.

This ABI response does not approve executable protocol client package source.

This ABI response does not approve executable app source.

This ABI response does not approve executable package source.

This ABI response does not approve executable infra source.

This ABI response does not approve any production address.

This ABI response does not approve any Base Sepolia address.

This ABI response does not approve any production ABI.

This ABI response does not approve any Base Sepolia ABI.

This ABI response does not approve any Base Sepolia read method.

This ABI response does not approve any Base Sepolia write method.

This ABI response does not approve transaction rail execution.

This ABI response does not approve governance writes.

This ABI response does not approve treasury routes.

This ABI response does not authorize any public mainnet mint interface.

## Purpose

This document responds to the Base Sepolia ABI evidence request packet by listing ABI source candidates and ABI source references for review.

Raw ABI JSON values are intentionally not copied into this response.

Normalized ABI SHA-256 hashes are recorded where JSON ABI candidates are available.

No ABI in this response is approved.

No ABI in this response may be used in generated config.

No ABI in this response may be used in protocol clients.

No ABI in this response may be used in a public interface.

No ABI in this response may be used for mainnet.

## Extraction summary

| Metric | Value |
| --- | ---: |
| JSON ABI candidates extracted | 0 |
| ABI source references extracted | 3 |
| Address checksum receipts already complete | YES |
| Raw ABI JSON copied into response | NO |
| Secret-assignment-shaped source files used | NO |

## JSON ABI candidate table

No JSON ABI candidates were extracted.


## ABI source reference table

| ABI source reference ID | Source file | Source line | Label context | Response status |
| --- | --- | ---: | --- | --- |
| R1 | docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md | 162 | UNLABELED_REQUIRES_REVIEW | ABI_SOURCE_REFERENCE_NEEDS_RESPONSE_REVIEW |
| R2 | docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md | 181 | UNLABELED_REQUIRES_REVIEW | ABI_SOURCE_REFERENCE_NEEDS_RESPONSE_REVIEW |
| R3 | docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md | 229 | UNLABELED_REQUIRES_REVIEW | ABI_SOURCE_REFERENCE_NEEDS_RESPONSE_REVIEW |


## Required review

This ABI response must be reviewed against:

- docs/checklists/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

The review must decide which ABI candidates, if any, may proceed to:

- Base Sepolia ABI evidence records;
- ABI checksum receipts;
- method classification;
- read allowlist;
- write blocklist.

No ABI candidate may proceed directly to generated config.

No ABI candidate may proceed directly to protocol clients.

No ABI candidate may proceed directly to a public demo.

No ABI candidate may proceed directly to mainnet.

## Candidate acceptance requirements

An ABI candidate may proceed only if review confirms:

- the source file is committed;
- the source file is Base Sepolia scoped or contract-label scoped;
- the candidate is not a placeholder;
- the candidate is not guessed;
- the candidate is not screenshot-only;
- the candidate is not chat-only;
- the candidate is not memory-only;
- the candidate can be tied to a contract label or explicitly marked as rejected;
- the ABI can be checksum-normalized in a later receipt;
- no secret material is present;
- the final review status is explicit.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- ABI evidence response review is complete;
- accepted ABI evidence records are complete;
- ABI checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

This ABI response does not authorize generated config.

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

This ABI response does not authorize protocol client implementation.

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

This ABI response does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia ABI may be used as a Base mainnet ABI.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## No-secret confirmation

This ABI response does not request private keys.

This ABI response does not request seed phrases.

This ABI response does not request wallet recovery phrases.

This ABI response does not request deployer keys.

This ABI response does not request signer keys.

This ABI response does not request wallet secrets.

This ABI response does not request private RPC credentials.

This ABI response does not request private API keys.

This ABI response does not request bearer tokens.

This ABI response does not request private custody material.

Raw ABI JSON values are intentionally not copied into this response.

## No-go conditions

Do not treat ABI candidates as approved ABI evidence.

Do not use ABI candidates in generated config.

Do not use ABI candidates in protocol clients.

Do not use ABI candidates in public demo source.

Do not use ABI candidates for mainnet.

Do not use this ABI response as deployment authorization.

Do not use this ABI response as public demo approval.

Do not use this ABI response as mainnet approval.

Do not use this ABI response as production ABI approval.

Do not use this ABI response as treasury approval.

Do not use this ABI response as governance approval.

Do not accept guessed ABIs.

Do not accept placeholder ABIs.

Do not accept screenshot-only ABI evidence.

Do not accept chat-only ABI evidence.

Do not accept memory-only ABI evidence.

Do not accept manually edited ABIs without receipt.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not request signer keys.

Do not request wallet secrets.

Do not request private RPC credentials.

## Secret exclusion checklist

This ABI response must contain none of the following usable secret material:

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

This ABI evidence response is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states the response is pending review;
- it states no ABI is approved;
- it states no generated config is approved;
- it states no protocol client is approved;
- it states no public demo is approved;
- it states no mainnet deployment is approved;
- it does not copy raw ABI JSON values into the response;
- it records normalized ABI SHA-256 hashes where JSON ABI candidates exist;
- it defines candidate acceptance requirements;
- it defines generated config blockers;
- it defines protocol client blockers;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

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
