# NST Core v0.5.2 Base Sepolia Read-Only Client Package Test Execution Receipt

Status: READ_ONLY_CLIENT_PACKAGE_TEST_EXECUTION_COMPLETE_PENDING_RUNTIME_REVIEW_GATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T20:16:24Z
Current commit at package test execution: ac6ff03dfc15c5eb32082bba14bc32b5a1809a4e

Package directory: packages/base-sepolia-read-only-client

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Package test gate receipt commit: ac6ff03dfc15c5eb32082bba14bc32b5a1809a4e

Static test and no-secret scan receipt commit: e2e30dadaa9853d22e707ec3a8bbf211b220410e

Controlled source receipt commit: 05bf5caef6542361da79ea7f8d9d2d5848e207bb

Implementation gate receipt commit: 291b5ecb46e9cf9383500ec445c6e46a9d577cfc

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Package test execution result: PASS

JSON parse test: PASS

No-secret scan test: PASS

Forbidden send/sign path test: PASS

Raw ABI copy test: PASS

Source boundary string test: PASS

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

Approval selector block constant present: PASS

Write selector guard present: PASS

Eth-call-only request type present: PASS

No-signing rejection boundary present: PASS

Transaction rejection boundary present: PASS

Runtime approval: NO

Public demo approved: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

## Files tested

- packages/base-sepolia-read-only-client/package.json
- packages/base-sepolia-read-only-client/tsconfig.json
- packages/base-sepolia-read-only-client/src/types.ts
- packages/base-sepolia-read-only-client/src/selectorGuards.ts
- packages/base-sepolia-read-only-client/src/noSignerBoundary.ts
- packages/base-sepolia-read-only-client/src/readOnlyClient.ts
- packages/base-sepolia-read-only-client/src/index.ts
- packages/base-sepolia-read-only-client/test/static-boundary.md

## Remaining blockers

Runtime review gate remains required.

Runtime approval remains blocked.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

Demo approval receipt remains required.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only client runtime review gate receipt.

The next artifact is not:

- public demo launch;
- mainnet deployment;
- transaction execution;
- write method execution;
- treasury route execution;
- governance write execution.

## No-go conditions

Do not use this receipt as runtime approval.

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

This package test execution receipt is acceptable only if:

- it is docs-only;
- it changes no source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it verifies package test gate approval;
- it confirms package tests passed;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms no secret-assignment-shaped values;
- it confirms no forbidden send/sign path;
- it confirms no raw ABI JSON copied;
- it confirms no runtime approval;
- it confirms no public demo approval;
- it confirms no mainnet approval;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
