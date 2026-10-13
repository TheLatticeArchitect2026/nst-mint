# NST Core v0.5.2 Base Sepolia Read-Only Public Interface Static Test and No-Secret Scan Receipt

Status: READ_ONLY_PUBLIC_INTERFACE_STATIC_TEST_AND_NO_SECRET_SCAN_COMPLETE_PENDING_INTERFACE_PACKAGE_TEST_GATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-13T08:45:59Z
Current commit at public interface static test and no-secret scan: e6dcf86978aa1bee3f2efe6f1798f10b1c3e6837

Public interface directory: apps/base-sepolia-read-only-public-interface

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Public interface controlled source receipt commit: e6dcf86978aa1bee3f2efe6f1798f10b1c3e6837

Public interface implementation gate receipt commit: 97a4d3909b8ee1419fe76a2300bd410cc080ca17

Public interface scaffold receipt commit: b8d93db980376204527dc66fe8cae470db6b3382

Runtime review receipt commit: 427d48ac436d552205fb9152327c6e6a2ab5a3f1

Package test execution receipt commit: 99873aa96266833af877683543cb639ea48ea689

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Static interface test result: PASS

No-secret scan result: PASS

JSON parse test: PASS

No forbidden send/sign path test: PASS

No raw ABI JSON copy test: PASS

Boundary constants test: PASS

Public warnings test: PASS

Rejection boundary test: PASS

Package manifest boundary test: PASS

Relative import resolution test: PASS

Config selector invariant test: PASS

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

Visible testnet warning present: PASS

Visible no-mainnet warning present: PASS

Visible no-production-value warning present: PASS

Visible no-public-demo warning present: PASS

No-wallet-write rejection boundary present: PASS

Transaction rejection boundary present: PASS

Mainnet rejection boundary present: PASS

Public interface runtime approval: NO

Public demo approved: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

## Files tested

- apps/base-sepolia-read-only-public-interface/package.json
- apps/base-sepolia-read-only-public-interface/tsconfig.json
- apps/base-sepolia-read-only-public-interface/src/types.ts
- apps/base-sepolia-read-only-public-interface/src/constants.ts
- apps/base-sepolia-read-only-public-interface/src/publicInterfaceWarnings.ts
- apps/base-sepolia-read-only-public-interface/src/noWalletWriteBoundary.ts
- apps/base-sepolia-read-only-public-interface/src/readOnlyInterfaceModel.ts
- apps/base-sepolia-read-only-public-interface/src/index.ts
- apps/base-sepolia-read-only-public-interface/test/static-interface-boundary.md

## Remaining blockers

Public interface package test gate remains required.

Public interface runtime approval remains blocked.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

Demo approval receipt remains required.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only public interface package test gate receipt.

The next artifact is not:

- public demo launch;
- mainnet deployment;
- transaction execution;
- write method execution;
- treasury route execution;
- governance write execution.

## No-go conditions

Do not use this receipt as public demo approval.

Do not use this receipt as mainnet approval.

Do not use this receipt as deployment authorization.

Do not execute write methods.

Do not execute transactions.

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

## Acceptance criteria

This public interface static test and no-secret scan receipt is acceptable only if:

- it is docs-only;
- it changes no source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it verifies public interface controlled source evidence;
- it confirms public interface static tests passed;
- it confirms no secret-assignment-shaped values;
- it confirms no forbidden send/sign path;
- it confirms no raw ABI JSON copied;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms public demo remains blocked;
- it confirms mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
