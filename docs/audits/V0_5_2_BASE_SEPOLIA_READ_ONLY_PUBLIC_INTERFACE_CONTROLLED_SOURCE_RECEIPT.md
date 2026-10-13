# NST Core v0.5.2 Base Sepolia Read-Only Public Interface Controlled Source Receipt

Status: READ_ONLY_PUBLIC_INTERFACE_CONTROLLED_SOURCE_CREATED_PENDING_INTERFACE_STATIC_TEST_AND_NO_SECRET_SCAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-13T08:34:31Z
Current commit at controlled public interface source creation: 97a4d3909b8ee1419fe76a2300bd410cc080ca17

Public interface directory: apps/base-sepolia-read-only-public-interface

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Public interface implementation gate receipt commit: 97a4d3909b8ee1419fe76a2300bd410cc080ca17

Public interface scaffold receipt commit: b8d93db980376204527dc66fe8cae470db6b3382

Public interface planning receipt commit: bb407cbc5f1164b9ba0e87182b0c25c8fd9b9ce1

Runtime review receipt commit: 427d48ac436d552205fb9152327c6e6a2ab5a3f1

Package test execution receipt commit: 99873aa96266833af877683543cb639ea48ea689

Static test and no-secret scan receipt commit: e2e30dadaa9853d22e707ec3a8bbf211b220410e

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Controlled source result: PASS_PUBLIC_INTERFACE_SOURCE_CREATED_PENDING_TESTS

Public interface runtime approval: NO

Public demo approved: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

Read methods available to public interface source: 213

Write methods blocked from public interface source: 135

Read selectors available to public interface source: 158

Write selectors blocked: 84

Read/write selector overlap: NONE

Approval selector in read methods: NO

Approval selector in write blocklist: YES

No raw ABI JSON copied: PASS

No secret-shaped values detected: PASS

No signing boundary: PASS

No wallet-write boundary: PASS

No transaction boundary: PASS

No private key boundary: PASS

No seed phrase boundary: PASS

No wallet secret boundary: PASS

No private RPC credential boundary: PASS

No public demo boundary: PASS

No mainnet boundary: PASS

## Controlled public interface source files created

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

Public interface static test and no-secret scan receipt remains required.

Public interface runtime approval remains blocked.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

Demo approval receipt remains required.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only public interface static test and no-secret scan receipt.

The next artifact is not:

- public demo launch;
- mainnet deployment;
- transaction execution;
- write method execution;
- treasury route execution;
- governance write execution.

## No-go conditions

Do not use this source as public demo approval.

Do not use this source as mainnet approval.

Do not use this source as deployment authorization.

Do not execute write methods.

Do not execute transactions.

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

## Acceptance criteria

This controlled public interface source receipt is acceptable only if:

- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms no signing authority;
- it confirms no write authority;
- it confirms no transaction authority;
- it confirms no mainnet authority;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
