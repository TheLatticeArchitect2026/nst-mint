# NST Core v0.5.2 Base Sepolia Read-Only Public Demo Gate Receipt

Status: READ_ONLY_PUBLIC_DEMO_GATE_OPEN_FOR_CONTROLLED_DEMO_READINESS_REVIEW_ONLY
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-13T09:30:19Z
Current commit at public demo gate creation: 45fb91e63c9d513ede2c503b3cf237c38770d4d3

Public interface directory: apps/base-sepolia-read-only-public-interface

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Public interface runtime review receipt commit: 45fb91e63c9d513ede2c503b3cf237c38770d4d3

Public interface package test execution receipt commit: 99ad509b7966c6be68842ae3845ad7d97a10a1a6

Public interface static test and no-secret scan receipt commit: 044154a4ad476ffe5d27b33f06bfbbd9c5cd11f8

Public interface controlled source receipt commit: e6dcf86978aa1bee3f2efe6f1798f10b1c3e6837

Client runtime review receipt commit: 427d48ac436d552205fb9152327c6e6a2ab5a3f1

Read method allowlist file: docs/audits/V0_5_2_BASE_SEPOLIA_READ_METHOD_ALLOWLIST.md

Write method blocklist file: docs/audits/V0_5_2_BASE_SEPOLIA_WRITE_METHOD_BLOCKLIST.md

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Gate result: PASS_FOR_CONTROLLED_PUBLIC_DEMO_READINESS_REVIEW_ONLY

Public demo readiness review approved: YES

Public demo launch approved: NO

Public demo approved: NO

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

Visible no-public-demo warning present: PASS

No-wallet-write rejection boundary present: PASS

Transaction rejection boundary present: PASS

Mainnet rejection boundary present: PASS

## Gate decision

The Base Sepolia read-only public demo gate is open for controlled demo-readiness review only.

This permits the next command to create a public demo readiness review receipt.

This does not approve public demo launch.

This does not approve mainnet deployment.

This does not authorize transactions.

This does not authorize write method execution.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only public demo readiness review receipt.

The next artifact is not:

- public demo launch;
- mainnet deployment;
- transaction execution;
- write method execution;
- treasury route execution;
- governance write execution.

## Remaining blockers

Public demo readiness review receipt remains required.

Public demo approval receipt remains required.

Public Base Sepolia demo launch remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

## No-go conditions

Do not use this receipt as public demo launch approval.

Do not use this receipt as mainnet approval.

Do not use this receipt as deployment authorization.

Do not execute write methods.

Do not execute transactions.

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

## Acceptance criteria

This public demo gate receipt is acceptable only if:

- it is docs-only;
- it changes no source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it verifies public interface runtime review evidence;
- it verifies public interface package test execution evidence;
- it confirms no secret-assignment-shaped values;
- it confirms no forbidden send/sign path;
- it confirms no raw ABI JSON copied;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms public demo launch remains blocked;
- it confirms mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
