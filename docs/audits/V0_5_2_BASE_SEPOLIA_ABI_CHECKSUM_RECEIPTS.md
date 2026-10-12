# NST Core v0.5.2 Base Sepolia ABI Checksum Receipts

Status: ABI_CHECKSUM_RECEIPTS_COMPLETE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T10:00:14Z
Current commit at ABI checksum receipt creation: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Supplemental ABI evidence response commit: 8d52ada1667acb31ba38b3e8ddad8337ca75ec41

Supplemental ABI evidence response review receipt commit: eb1f08e2ab269ee3712abf35dd6f4aaecb19f171

Base Sepolia address checksum receipts commit: bae5ee0b499d6f3db93cb941da37bbcabc40ffde

ABI checksum receipt template commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI source policy commit: 866313465ce80cceb5f907672a92344cd1222cd4

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

ABI checksum receipt count: 8

Temporary Forge artifact path committed: NO

Raw ABI JSON copied into this receipt file: NO

This file is not a method classification receipt.

This file is not a read allowlist.

This file is not a write blocklist.

This file is not a deployment authorization.

This file does not authorize deployment.

This file does not authorize mainnet deployment.

This file does not authorize public production interface launch.

This file does not authorize public Base Sepolia demo launch.

This file does not approve executable config package source.

This file does not approve generated config by itself.

This file does not approve executable protocol client package source.

This file does not approve executable app source.

This file does not approve executable package source.

This file does not approve executable infra source.

This file does not approve any production address.

This file does not approve any Base Sepolia address.

This file does not approve any production ABI.

This file does not approve any Base Sepolia ABI for use outside evidence processing.

This file does not approve any Base Sepolia read method.

This file does not approve any Base Sepolia write method.

This file does not approve transaction rail execution.

This file does not approve governance writes.

This file does not approve treasury routes.

This file does not authorize any public mainnet mint interface.

## Purpose

This document records ABI checksum receipts for Base Sepolia ABI evidence records.

Each receipt verifies that the ABI evidence record's normalized ABI SHA-256 can be recomputed from a temporary Forge build artifact.

Raw ABI JSON values are intentionally not copied into this receipt file.

Temporary Forge artifact paths are not committed.

These receipts do not unlock generated config by themselves.

These receipts do not unlock protocol clients.

These receipts do not unlock public demo launch.

These receipts do not unlock mainnet deployment.

## ABI checksum summary table

| Receipt ID | ABI record ID | Supplemental ABI ID | Contract name | Source file | Recorded ABI SHA-256 | Recomputed ABI SHA-256 | Mismatch status | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| base-sepolia-abi-checksum-receipt-1 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b` | `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b` | NO_MISMATCH | ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT |
| base-sepolia-abi-checksum-receipt-2 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51` | `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51` | NO_MISMATCH | ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT |
| base-sepolia-abi-checksum-receipt-3 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c` | `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c` | NO_MISMATCH | ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT |
| base-sepolia-abi-checksum-receipt-4 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25` | `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25` | NO_MISMATCH | ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT |
| base-sepolia-abi-checksum-receipt-5 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254` | `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254` | NO_MISMATCH | ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT |
| base-sepolia-abi-checksum-receipt-6 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec` | `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec` | NO_MISMATCH | ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT |
| base-sepolia-abi-checksum-receipt-7 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973` | `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973` | NO_MISMATCH | ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT |
| base-sepolia-abi-checksum-receipt-8 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe` | `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe` | NO_MISMATCH | ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT |


## ABI checksum receipt 1

Receipt ID: base-sepolia-abi-checksum-receipt-1

Status: ABI_CHECKSUM_RECEIPT_COMPLETE

ABI record ID: base-sepolia-abi-evidence-record-sa1

Supplemental ABI candidate ID: SA1

Contract name: CFTv2

Declaration type: contract

Resolved source file: src/CFTv2.sol

Source resolution: EXACT_TRACKED_SOURCE_MATCH

Contract label context: CFT, CFTv2, NST, ShieldRegistry, YieldPool

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Recorded normalized ABI SHA-256: `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b`

Recomputed normalized ABI SHA-256: `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b`

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

Checksum status: ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT

Mismatch status: NO_MISMATCH

ABI entries: 77

Functions: 46

Read functions: 31

Write functions: 15

Events: 14

Errors: 16

Constructors: 1

Temporary artifact path committed: NO

Raw ABI JSON copied into receipt: NO

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Receipt created UTC: 2026-10-12T10:00:14Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## ABI checksum receipt 2

Receipt ID: base-sepolia-abi-checksum-receipt-2

Status: ABI_CHECKSUM_RECEIPT_COMPLETE

ABI record ID: base-sepolia-abi-evidence-record-sa2

Supplemental ABI candidate ID: SA2

Contract name: NSTSBT

Declaration type: contract

Resolved source file: src/NSTSBT.sol

Source resolution: EXACT_TRACKED_SOURCE_MATCH

Contract label context: BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Recorded normalized ABI SHA-256: `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51`

Recomputed normalized ABI SHA-256: `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51`

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

Checksum status: ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT

Mismatch status: NO_MISMATCH

ABI entries: 156

Functions: 79

Read functions: 60

Write functions: 19

Events: 28

Errors: 46

Constructors: 1

Temporary artifact path committed: NO

Raw ABI JSON copied into receipt: NO

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Receipt created UTC: 2026-10-12T10:00:14Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## ABI checksum receipt 3

Receipt ID: base-sepolia-abi-checksum-receipt-3

Status: ABI_CHECKSUM_RECEIPT_COMPLETE

ABI record ID: base-sepolia-abi-evidence-record-sa3

Supplemental ABI candidate ID: SA3

Contract name: ReferralController

Declaration type: contract

Resolved source file: src/ReferralController.sol

Source resolution: EXACT_TRACKED_SOURCE_MATCH

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Recorded normalized ABI SHA-256: `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c`

Recomputed normalized ABI SHA-256: `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c`

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

Checksum status: ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT

Mismatch status: NO_MISMATCH

ABI entries: 67

Functions: 34

Read functions: 25

Write functions: 9

Events: 11

Errors: 21

Constructors: 1

Temporary artifact path committed: NO

Raw ABI JSON copied into receipt: NO

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Receipt created UTC: 2026-10-12T10:00:14Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## ABI checksum receipt 4

Receipt ID: base-sepolia-abi-checksum-receipt-4

Status: ABI_CHECKSUM_RECEIPT_COMPLETE

ABI record ID: base-sepolia-abi-evidence-record-sa4

Supplemental ABI candidate ID: SA4

Contract name: RewardEscrow

Declaration type: contract

Resolved source file: src/RewardEscrow.sol

Source resolution: EXACT_TRACKED_SOURCE_MATCH

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Recorded normalized ABI SHA-256: `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25`

Recomputed normalized ABI SHA-256: `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25`

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

Checksum status: ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT

Mismatch status: NO_MISMATCH

ABI entries: 57

Functions: 27

Read functions: 17

Write functions: 10

Events: 9

Errors: 20

Constructors: 1

Temporary artifact path committed: NO

Raw ABI JSON copied into receipt: NO

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Receipt created UTC: 2026-10-12T10:00:14Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## ABI checksum receipt 5

Receipt ID: base-sepolia-abi-checksum-receipt-5

Status: ABI_CHECKSUM_RECEIPT_COMPLETE

ABI record ID: base-sepolia-abi-evidence-record-sa5

Supplemental ABI candidate ID: SA5

Contract name: ShieldRegistry

Declaration type: contract

Resolved source file: src/ShieldRegistry.sol

Source resolution: EXACT_TRACKED_SOURCE_MATCH

Contract label context: BanRegistry, NST, ShieldRegistry, VettingRegistry

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Recorded normalized ABI SHA-256: `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254`

Recomputed normalized ABI SHA-256: `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254`

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

Checksum status: ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT

Mismatch status: NO_MISMATCH

ABI entries: 62

Functions: 39

Read functions: 25

Write functions: 14

Events: 11

Errors: 11

Constructors: 1

Temporary artifact path committed: NO

Raw ABI JSON copied into receipt: NO

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Receipt created UTC: 2026-10-12T10:00:14Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## ABI checksum receipt 6

Receipt ID: base-sepolia-abi-checksum-receipt-6

Status: ABI_CHECKSUM_RECEIPT_COMPLETE

ABI record ID: base-sepolia-abi-evidence-record-sa6

Supplemental ABI candidate ID: SA6

Contract name: TreasuryRouter

Declaration type: contract

Resolved source file: src/TreasuryRouter.sol

Source resolution: EXACT_TRACKED_SOURCE_MATCH

Contract label context: NST, TreasuryRouter

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Recorded normalized ABI SHA-256: `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec`

Recomputed normalized ABI SHA-256: `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec`

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

Checksum status: ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT

Mismatch status: NO_MISMATCH

ABI entries: 93

Functions: 49

Read functions: 30

Write functions: 19

Events: 19

Errors: 23

Constructors: 1

Temporary artifact path committed: NO

Raw ABI JSON copied into receipt: NO

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Receipt created UTC: 2026-10-12T10:00:14Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## ABI checksum receipt 7

Receipt ID: base-sepolia-abi-checksum-receipt-7

Status: ABI_CHECKSUM_RECEIPT_COMPLETE

ABI record ID: base-sepolia-abi-evidence-record-sa7

Supplemental ABI candidate ID: SA7

Contract name: VaultRegistry

Declaration type: contract

Resolved source file: src/VaultRegistry.sol

Source resolution: EXACT_TRACKED_SOURCE_MATCH

Contract label context: NST, ShieldRegistry, VaultRegistry

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Recorded normalized ABI SHA-256: `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973`

Recomputed normalized ABI SHA-256: `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973`

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

Checksum status: ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT

Mismatch status: NO_MISMATCH

ABI entries: 64

Functions: 37

Read functions: 27

Write functions: 10

Events: 10

Errors: 16

Constructors: 1

Temporary artifact path committed: NO

Raw ABI JSON copied into receipt: NO

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Receipt created UTC: 2026-10-12T10:00:14Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## ABI checksum receipt 8

Receipt ID: base-sepolia-abi-checksum-receipt-8

Status: ABI_CHECKSUM_RECEIPT_COMPLETE

ABI record ID: base-sepolia-abi-evidence-record-sa8

Supplemental ABI candidate ID: SA8

Contract name: YieldPool

Declaration type: contract

Resolved source file: src/YieldPool.sol

Source resolution: EXACT_TRACKED_SOURCE_MATCH

Contract label context: NST, YieldPool

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Recorded normalized ABI SHA-256: `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe`

Recomputed normalized ABI SHA-256: `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe`

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

Checksum status: ABI_SHA256_RECOMPUTED_FROM_TEMP_FORGE_ARTIFACT

Mismatch status: NO_MISMATCH

ABI entries: 73

Functions: 37

Read functions: 23

Write functions: 14

Events: 12

Errors: 21

Constructors: 1

Temporary artifact path committed: NO

Raw ABI JSON copied into receipt: NO

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 20cc455a114ac04f9efba9127cac7c8baec5ceb2

Receipt created UTC: 2026-10-12T10:00:14Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.



## Remaining blockers before generated config

Generated Base Sepolia read-only config remains blocked until:

- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

ABI checksum receipts alone are not enough to generate config.

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

## Protocol client blocker

Protocol-client implementation remains blocked until:

- Base Sepolia read-only config is approved;
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

Do not use these ABI checksum receipts as method classification.

Do not use these ABI checksum receipts as a read allowlist.

Do not use these ABI checksum receipts as a write blocklist.

Do not use these ABI checksum receipts alone in generated config.

Do not use these ABI checksum receipts alone in protocol clients.

Do not use these ABI checksum receipts alone in public demo source.

Do not use these ABI checksum receipts for mainnet.

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

This ABI checksum receipts file is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it records the ABI evidence records commit;
- it records Base Sepolia;
- it records chain ID 84532;
- it records recorded and recomputed normalized ABI SHA-256 for each record;
- it records no checksum mismatch;
- it does not copy raw ABI JSON values;
- it states method classification remains blocked;
- it states generated config remains blocked;
- it states protocol clients remain blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
