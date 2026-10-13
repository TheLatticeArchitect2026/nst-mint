# NST Core v0.5.2 Base Sepolia Read-Only Public Launch Package Gate Receipt

Status: READ_ONLY_PUBLIC_LAUNCH_PACKAGE_GATE_OPEN_FOR_CONTROLLED_LAUNCH_PACKAGE_PREPARATION_ONLY
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-13T23:29:38Z
Current commit at public launch package gate creation: 0e09bcd8a3c227c95921c985c7dd95186603f097

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

README pilot package receipt commit: 0e09bcd8a3c227c95921c985c7dd95186603f097

Pilot README commit: 0e09bcd8a3c227c95921c985c7dd95186603f097

Pilot boundaries commit: 0e09bcd8a3c227c95921c985c7dd95186603f097

Pilot manifest commit: 0e09bcd8a3c227c95921c985c7dd95186603f097

Public demo approval receipt commit: 6b111eebbb48d73d48afde2f7a614369cb85d484

Public interface runtime review receipt commit: 45fb91e63c9d513ede2c503b3cf237c38770d4d3

Public interface package test execution receipt commit: 99ad509b7966c6be68842ae3845ad7d97a10a1a6

Public interface static test and no-secret scan receipt commit: 044154a4ad476ffe5d27b33f06bfbbd9c5cd11f8

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Mainnet readiness blocker register commit: e800078973ba5f378fe794b2acad14032bd65c45

Mainnet readiness runbook commit: e800078973ba5f378fe794b2acad14032bd65c45

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Gate result: PASS_FOR_CONTROLLED_PUBLIC_LAUNCH_PACKAGE_PREPARATION_ONLY

Public launch package preparation approved: YES

Public launch package receipt may be created: YES

External public launch approved by this receipt: NO

External public launch executed by this receipt: NO

Public URL publication approved by this receipt: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

Read methods reviewed: 213

Write methods blocked: 135

Read selectors reviewed: 158

Write selectors reviewed: 84

Read/write selector overlap: NONE

Approval selector in read methods: NO

Approval selector in write blocklist: YES

No secret-assignment-shaped values detected: PASS

No private keys detected: PASS

No seed phrases detected: PASS

No wallet secrets detected: PASS

No private RPC credentials detected: PASS

No forbidden send/sign path detected: PASS

No raw ABI JSON copied: PASS

Base Sepolia chain ID constant present: PASS

Visible Base Sepolia testnet warning present: PASS

Visible no-mainnet warning present: PASS

Visible no-production warning present: PASS

No-wallet-write rejection boundary present: PASS

Transaction rejection boundary present: PASS

Mainnet rejection boundary present: PASS

## Gate decision

The Base Sepolia read-only public launch package gate is open for controlled launch-package preparation only.

This permits the next command to create a public launch package receipt.

This does not publish an external URL.

This does not execute launch.

This does not approve mainnet.

This does not authorize transactions.

This does not authorize write method execution.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only public launch package receipt.

The next artifact is not:

- mainnet deployment;
- transaction execution;
- write method execution;
- treasury route execution;
- governance write execution.

## Remaining blockers

Public launch package receipt remains required before external publication.

External public URL publication remains blocked until launch package receipt.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

## No-go conditions

Do not use this receipt as external launch approval.

Do not use this receipt as mainnet approval.

Do not use this receipt as production-value approval.

Do not execute write methods.

Do not execute transactions.

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

## Acceptance criteria

This public launch package gate receipt is acceptable only if:

- it is docs-only;
- it changes no source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it verifies README pilot package evidence;
- it verifies public demo approval evidence;
- it verifies public interface runtime review evidence;
- it confirms no secret-assignment-shaped values;
- it confirms no forbidden send/sign path;
- it confirms no raw ABI JSON copied;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms external publication is not executed by this receipt;
- it confirms mainnet remains blocked;
- it confirms write methods remain blocked;
- it confirms transaction execution remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
