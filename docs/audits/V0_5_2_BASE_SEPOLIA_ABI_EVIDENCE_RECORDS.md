# NST Core v0.5.2 Base Sepolia ABI Evidence Records

Status: DRAFT_ABI_EVIDENCE_RECORDS_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T21:57:30Z
Current commit at ABI evidence record creation: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

ABI evidence request packet commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI inventory receipt commit: 866313465ce80cceb5f907672a92344cd1222cd4

Base Sepolia address checksum receipts commit: bae5ee0b499d6f3db93cb941da37bbcabc40ffde

ABI source policy commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI evidence record template commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI checksum receipt template commit: 866313465ce80cceb5f907672a92344cd1222cd4

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Approved supplemental ABI candidate count: 8

This file contains draft Base Sepolia ABI evidence records derived only from supplemental ABI IDs approved by the supplemental ABI response review receipt.

Raw ABI JSON values are intentionally not copied into this file.

This file is not an ABI checksum receipt.

This file is not a method classification receipt.

This file is not a read allowlist.

This file is not a write blocklist.

This file is not a deployment authorization.

This file does not authorize deployment.

This file does not authorize mainnet deployment.

This file does not authorize public production interface launch.

This file does not authorize public Base Sepolia demo launch.

This file does not approve executable config package source.

This file does not approve generated config.

This file does not approve executable protocol client package source.

This file does not approve executable app source.

This file does not approve executable package source.

This file does not approve executable infra source.

This file does not approve any production address.

This file does not approve any Base Sepolia address.

This file does not approve any production ABI.

This file does not approve any Base Sepolia ABI for use.

This file does not approve any Base Sepolia read method.

This file does not approve any Base Sepolia write method.

This file does not approve transaction rail execution.

This file does not approve governance writes.

This file does not approve treasury routes.

This file does not authorize any public mainnet mint interface.

## Purpose

This document creates draft Base Sepolia ABI evidence records for approved supplemental ABI candidate IDs.

These records are evidence-processing records only.

These records still require ABI checksum receipts.

These records still require method classification.

These records still require read allowlist review.

These records still require write blocklist confirmation.

These records still require explorer/source verification receipts where applicable.

These records do not unlock generated config.

These records do not unlock protocol clients.

These records do not unlock public demo launch.

These records do not unlock mainnet deployment.

## ABI evidence record summary table

| Record ID | Supplemental ABI ID | Contract name | Source file | Label context | ABI entries | Functions | Read functions | Write functions | Normalized ABI SHA-256 | Status |
| --- | --- | --- | --- | --- | ---: | ---: | ---: | ---: | --- | --- |
| base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | CFT, CFTv2, NST, ShieldRegistry, YieldPool | 77 | 46 | 31 | 15 | `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b` | DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION |
| base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool | 156 | 79 | 60 | 19 | `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51` | DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION |
| base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | CFT, NST, RewardEscrow, ShieldRegistry | 67 | 34 | 25 | 9 | `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c` | DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION |
| base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | CFT, NST, RewardEscrow, ShieldRegistry | 57 | 27 | 17 | 10 | `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25` | DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION |
| base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | BanRegistry, NST, ShieldRegistry, VettingRegistry | 62 | 39 | 25 | 14 | `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254` | DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION |
| base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | NST, TreasuryRouter | 93 | 49 | 30 | 19 | `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec` | DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION |
| base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | NST, ShieldRegistry, VaultRegistry | 64 | 37 | 27 | 10 | `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973` | DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION |
| base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | NST, YieldPool | 73 | 37 | 23 | 14 | `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe` | DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION |


## ABI evidence record SA1

Record ID: base-sepolia-abi-evidence-record-sa1

Status: DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION

Supplemental ABI candidate ID: SA1

Contract name: CFTv2

Declaration type: contract

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Resolved source file: src/CFTv2.sol

Source resolution: BASENAME_RESOLVED_FROM_CFTv2.sol

Source file tracked: YES

Contract label context: CFT, CFTv2, NST, ShieldRegistry, YieldPool

ABI entries: 77

Functions: 46

Read functions: 31

Write functions: 15

Events: 14

Errors: 16

Constructors: 1

Normalized ABI SHA-256: `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b`

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

Review outcome: APPROVED_FOR_ABI_EVIDENCE_RECORD_DRAFTING

Review reason: Supplemental Forge artifact ABI candidate has tracked src/contracts source, contract declaration, label context, ABI hash, and parseable method statistics.

ABI checksum receipt status: PENDING

Method classification status: PENDING

Read allowlist status: PENDING

Write blocklist status: PENDING

Explorer/source verification status: PENDING_WHERE_APPLICABLE

Generated config status: BLOCKED

Protocol client status: BLOCKED

Public demo status: BLOCKED

Mainnet status: BLOCKED

This record does not copy raw ABI JSON.

This record does not authorize deployment.

This record does not authorize mainnet deployment.

This record does not authorize generated config.

This record does not authorize protocol client implementation.

This record does not authorize public demo launch.

This record does not authorize treasury actions.

This record does not authorize governance actions.

This record does not authorize transaction rail execution.

This record may proceed to ABI checksum receipt drafting and method classification drafting only.


## ABI evidence record SA2

Record ID: base-sepolia-abi-evidence-record-sa2

Status: DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION

Supplemental ABI candidate ID: SA2

Contract name: NSTSBT

Declaration type: contract

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Resolved source file: src/NSTSBT.sol

Source resolution: BASENAME_RESOLVED_FROM_NSTSBT.sol

Source file tracked: YES

Contract label context: BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool

ABI entries: 156

Functions: 79

Read functions: 60

Write functions: 19

Events: 28

Errors: 46

Constructors: 1

Normalized ABI SHA-256: `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51`

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

Review outcome: APPROVED_FOR_ABI_EVIDENCE_RECORD_DRAFTING

Review reason: Supplemental Forge artifact ABI candidate has tracked src/contracts source, contract declaration, label context, ABI hash, and parseable method statistics.

ABI checksum receipt status: PENDING

Method classification status: PENDING

Read allowlist status: PENDING

Write blocklist status: PENDING

Explorer/source verification status: PENDING_WHERE_APPLICABLE

Generated config status: BLOCKED

Protocol client status: BLOCKED

Public demo status: BLOCKED

Mainnet status: BLOCKED

This record does not copy raw ABI JSON.

This record does not authorize deployment.

This record does not authorize mainnet deployment.

This record does not authorize generated config.

This record does not authorize protocol client implementation.

This record does not authorize public demo launch.

This record does not authorize treasury actions.

This record does not authorize governance actions.

This record does not authorize transaction rail execution.

This record may proceed to ABI checksum receipt drafting and method classification drafting only.


## ABI evidence record SA3

Record ID: base-sepolia-abi-evidence-record-sa3

Status: DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION

Supplemental ABI candidate ID: SA3

Contract name: ReferralController

Declaration type: contract

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Resolved source file: src/ReferralController.sol

Source resolution: BASENAME_RESOLVED_FROM_ReferralController.sol

Source file tracked: YES

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

ABI entries: 67

Functions: 34

Read functions: 25

Write functions: 9

Events: 11

Errors: 21

Constructors: 1

Normalized ABI SHA-256: `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c`

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

Review outcome: APPROVED_FOR_ABI_EVIDENCE_RECORD_DRAFTING

Review reason: Supplemental Forge artifact ABI candidate has tracked src/contracts source, contract declaration, label context, ABI hash, and parseable method statistics.

ABI checksum receipt status: PENDING

Method classification status: PENDING

Read allowlist status: PENDING

Write blocklist status: PENDING

Explorer/source verification status: PENDING_WHERE_APPLICABLE

Generated config status: BLOCKED

Protocol client status: BLOCKED

Public demo status: BLOCKED

Mainnet status: BLOCKED

This record does not copy raw ABI JSON.

This record does not authorize deployment.

This record does not authorize mainnet deployment.

This record does not authorize generated config.

This record does not authorize protocol client implementation.

This record does not authorize public demo launch.

This record does not authorize treasury actions.

This record does not authorize governance actions.

This record does not authorize transaction rail execution.

This record may proceed to ABI checksum receipt drafting and method classification drafting only.


## ABI evidence record SA4

Record ID: base-sepolia-abi-evidence-record-sa4

Status: DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION

Supplemental ABI candidate ID: SA4

Contract name: RewardEscrow

Declaration type: contract

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Resolved source file: src/RewardEscrow.sol

Source resolution: BASENAME_RESOLVED_FROM_RewardEscrow.sol

Source file tracked: YES

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

ABI entries: 57

Functions: 27

Read functions: 17

Write functions: 10

Events: 9

Errors: 20

Constructors: 1

Normalized ABI SHA-256: `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25`

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

Review outcome: APPROVED_FOR_ABI_EVIDENCE_RECORD_DRAFTING

Review reason: Supplemental Forge artifact ABI candidate has tracked src/contracts source, contract declaration, label context, ABI hash, and parseable method statistics.

ABI checksum receipt status: PENDING

Method classification status: PENDING

Read allowlist status: PENDING

Write blocklist status: PENDING

Explorer/source verification status: PENDING_WHERE_APPLICABLE

Generated config status: BLOCKED

Protocol client status: BLOCKED

Public demo status: BLOCKED

Mainnet status: BLOCKED

This record does not copy raw ABI JSON.

This record does not authorize deployment.

This record does not authorize mainnet deployment.

This record does not authorize generated config.

This record does not authorize protocol client implementation.

This record does not authorize public demo launch.

This record does not authorize treasury actions.

This record does not authorize governance actions.

This record does not authorize transaction rail execution.

This record may proceed to ABI checksum receipt drafting and method classification drafting only.


## ABI evidence record SA5

Record ID: base-sepolia-abi-evidence-record-sa5

Status: DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION

Supplemental ABI candidate ID: SA5

Contract name: ShieldRegistry

Declaration type: contract

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Resolved source file: src/ShieldRegistry.sol

Source resolution: BASENAME_RESOLVED_FROM_ShieldRegistry.sol

Source file tracked: YES

Contract label context: BanRegistry, NST, ShieldRegistry, VettingRegistry

ABI entries: 62

Functions: 39

Read functions: 25

Write functions: 14

Events: 11

Errors: 11

Constructors: 1

Normalized ABI SHA-256: `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254`

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

Review outcome: APPROVED_FOR_ABI_EVIDENCE_RECORD_DRAFTING

Review reason: Supplemental Forge artifact ABI candidate has tracked src/contracts source, contract declaration, label context, ABI hash, and parseable method statistics.

ABI checksum receipt status: PENDING

Method classification status: PENDING

Read allowlist status: PENDING

Write blocklist status: PENDING

Explorer/source verification status: PENDING_WHERE_APPLICABLE

Generated config status: BLOCKED

Protocol client status: BLOCKED

Public demo status: BLOCKED

Mainnet status: BLOCKED

This record does not copy raw ABI JSON.

This record does not authorize deployment.

This record does not authorize mainnet deployment.

This record does not authorize generated config.

This record does not authorize protocol client implementation.

This record does not authorize public demo launch.

This record does not authorize treasury actions.

This record does not authorize governance actions.

This record does not authorize transaction rail execution.

This record may proceed to ABI checksum receipt drafting and method classification drafting only.


## ABI evidence record SA6

Record ID: base-sepolia-abi-evidence-record-sa6

Status: DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION

Supplemental ABI candidate ID: SA6

Contract name: TreasuryRouter

Declaration type: contract

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Resolved source file: src/TreasuryRouter.sol

Source resolution: BASENAME_RESOLVED_FROM_TreasuryRouter.sol

Source file tracked: YES

Contract label context: NST, TreasuryRouter

ABI entries: 93

Functions: 49

Read functions: 30

Write functions: 19

Events: 19

Errors: 23

Constructors: 1

Normalized ABI SHA-256: `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec`

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

Review outcome: APPROVED_FOR_ABI_EVIDENCE_RECORD_DRAFTING

Review reason: Supplemental Forge artifact ABI candidate has tracked src/contracts source, contract declaration, label context, ABI hash, and parseable method statistics.

ABI checksum receipt status: PENDING

Method classification status: PENDING

Read allowlist status: PENDING

Write blocklist status: PENDING

Explorer/source verification status: PENDING_WHERE_APPLICABLE

Generated config status: BLOCKED

Protocol client status: BLOCKED

Public demo status: BLOCKED

Mainnet status: BLOCKED

This record does not copy raw ABI JSON.

This record does not authorize deployment.

This record does not authorize mainnet deployment.

This record does not authorize generated config.

This record does not authorize protocol client implementation.

This record does not authorize public demo launch.

This record does not authorize treasury actions.

This record does not authorize governance actions.

This record does not authorize transaction rail execution.

This record may proceed to ABI checksum receipt drafting and method classification drafting only.


## ABI evidence record SA7

Record ID: base-sepolia-abi-evidence-record-sa7

Status: DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION

Supplemental ABI candidate ID: SA7

Contract name: VaultRegistry

Declaration type: contract

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Resolved source file: src/VaultRegistry.sol

Source resolution: BASENAME_RESOLVED_FROM_VaultRegistry.sol

Source file tracked: YES

Contract label context: NST, ShieldRegistry, VaultRegistry

ABI entries: 64

Functions: 37

Read functions: 27

Write functions: 10

Events: 10

Errors: 16

Constructors: 1

Normalized ABI SHA-256: `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973`

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

Review outcome: APPROVED_FOR_ABI_EVIDENCE_RECORD_DRAFTING

Review reason: Supplemental Forge artifact ABI candidate has tracked src/contracts source, contract declaration, label context, ABI hash, and parseable method statistics.

ABI checksum receipt status: PENDING

Method classification status: PENDING

Read allowlist status: PENDING

Write blocklist status: PENDING

Explorer/source verification status: PENDING_WHERE_APPLICABLE

Generated config status: BLOCKED

Protocol client status: BLOCKED

Public demo status: BLOCKED

Mainnet status: BLOCKED

This record does not copy raw ABI JSON.

This record does not authorize deployment.

This record does not authorize mainnet deployment.

This record does not authorize generated config.

This record does not authorize protocol client implementation.

This record does not authorize public demo launch.

This record does not authorize treasury actions.

This record does not authorize governance actions.

This record does not authorize transaction rail execution.

This record may proceed to ABI checksum receipt drafting and method classification drafting only.


## ABI evidence record SA8

Record ID: base-sepolia-abi-evidence-record-sa8

Status: DRAFT_ABI_EVIDENCE_RECORD_PENDING_CHECKSUM_AND_METHOD_CLASSIFICATION

Supplemental ABI candidate ID: SA8

Contract name: YieldPool

Declaration type: contract

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Resolved source file: src/YieldPool.sol

Source resolution: BASENAME_RESOLVED_FROM_YieldPool.sol

Source file tracked: YES

Contract label context: NST, YieldPool

ABI entries: 73

Functions: 37

Read functions: 23

Write functions: 14

Events: 12

Errors: 21

Constructors: 1

Normalized ABI SHA-256: `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe`

Supplemental ABI evidence response file: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE.md

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt: docs/audits/V0_5_2_BASE_SEPOLIA_SUPPLEMENTAL_ABI_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

Review outcome: APPROVED_FOR_ABI_EVIDENCE_RECORD_DRAFTING

Review reason: Supplemental Forge artifact ABI candidate has tracked src/contracts source, contract declaration, label context, ABI hash, and parseable method statistics.

ABI checksum receipt status: PENDING

Method classification status: PENDING

Read allowlist status: PENDING

Write blocklist status: PENDING

Explorer/source verification status: PENDING_WHERE_APPLICABLE

Generated config status: BLOCKED

Protocol client status: BLOCKED

Public demo status: BLOCKED

Mainnet status: BLOCKED

This record does not copy raw ABI JSON.

This record does not authorize deployment.

This record does not authorize mainnet deployment.

This record does not authorize generated config.

This record does not authorize protocol client implementation.

This record does not authorize public demo launch.

This record does not authorize treasury actions.

This record does not authorize governance actions.

This record does not authorize transaction rail execution.

This record may proceed to ABI checksum receipt drafting and method classification drafting only.



## Required next artifacts

The next allowed artifacts are:

- Base Sepolia ABI checksum receipt package;
- method classification package;
- read allowlist package;
- write blocklist package;
- explorer/source verification receipt package where applicable.

The next allowed artifacts are not:

- generated read-only config;
- protocol client implementation;
- app source;
- package source;
- infra source;
- public demo launch;
- mainnet deployment.

## ABI checksum blocker

ABI checksum receipts remain required.

Each approved ABI evidence record must receive an ABI checksum receipt that records:

- record ID;
- supplemental ABI candidate ID;
- contract name;
- source file;
- normalized ABI SHA-256;
- checksum method;
- supplemental ABI response commit;
- supplemental ABI review receipt commit;
- mismatch status;
- reviewer;
- review timestamp.

No ABI may be used in generated config until ABI checksum receipt is complete.

## Method classification blocker

Method classification remains required.

Each approved ABI must be classified into:

- read methods;
- write methods;
- events;
- errors;
- constructor entries.

No write method may be included in a read-only allowlist.

No method may be used in generated config until method classification is complete.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- ABI checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

This file does not authorize generated config.

## Protocol client blocker

Protocol-client implementation remains blocked until:

- Base Sepolia read-only config is approved;
- ABI checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

This file does not authorize protocol client implementation.

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

This file does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia ABI may be used as a Base mainnet ABI.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## No-secret confirmation

This file does not request private keys.

This file does not request seed phrases.

This file does not request wallet recovery phrases.

This file does not request deployer keys.

This file does not request signer keys.

This file does not request wallet secrets.

This file does not request private RPC credentials.

This file does not request private API keys.

This file does not request bearer tokens.

This file does not request private custody material.

Raw ABI JSON values are intentionally not copied into this file.

## No-go conditions

Do not use these records as ABI checksum receipts.

Do not use these records alone in generated config.

Do not use these records alone in protocol clients.

Do not use these records alone in public demo source.

Do not use these records for mainnet.

Do not use this file as deployment authorization.

Do not use this file as public demo approval.

Do not use this file as mainnet approval.

Do not use this file as production ABI approval.

Do not use this file as treasury approval.

Do not use this file as governance approval.

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

This file must contain none of the following usable secret material:

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

This ABI evidence records file is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it includes only supplemental ABI IDs approved by the supplemental ABI response review receipt;
- it records the supplemental ABI response commit;
- it records the supplemental ABI review receipt commit;
- it records tracked source files;
- it records normalized ABI SHA-256 hashes;
- it does not copy raw ABI JSON values;
- it records Base Sepolia;
- it records chain ID 84532;
- it states ABI checksum receipts are still required;
- it states method classification is still required;
- it states generated config remains blocked;
- it states protocol clients remain blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
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
