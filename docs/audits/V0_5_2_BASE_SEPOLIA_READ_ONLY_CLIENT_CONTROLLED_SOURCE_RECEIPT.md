# NST Core v0.5.2 Base Sepolia Read-Only Client Controlled Source Receipt

Status: READ_ONLY_CLIENT_CONTROLLED_SOURCE_CREATED_PENDING_STATIC_TEST_AND_NO_SECRET_SCAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T18:43:11Z
Current commit at controlled source creation: 291b5ecb46e9cf9383500ec445c6e46a9d577cfc

Package directory: packages/base-sepolia-read-only-client

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Implementation gate receipt commit: 291b5ecb46e9cf9383500ec445c6e46a9d577cfc

Scaffold receipt commit: 7034167037a148c75afb57fd54e388fbdbddfd28

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Controlled source result: PASS_SOURCE_CREATED_PENDING_TESTS

Runtime approval: NO

Public demo approved: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

Read methods available to controlled source: 213

Write methods blocked from controlled source: 135

Read selectors available to controlled source: 158

Write selectors blocked: 84

Read/write selector overlap: NONE

Approval selector in read methods: NO

Approval selector in write blocklist: YES

Address evidence pool entries: 43

Contract read groups: 8

No raw ABI JSON copied: PASS

No secret-shaped values detected: PASS

No signing boundary: PASS

No write boundary: PASS

No transaction boundary: PASS

No private key boundary: PASS

No seed phrase boundary: PASS

No wallet secret boundary: PASS

No private RPC credential boundary: PASS

No public demo boundary: PASS

No mainnet boundary: PASS

## Controlled source files created

- packages/base-sepolia-read-only-client/package.json
- packages/base-sepolia-read-only-client/tsconfig.json
- packages/base-sepolia-read-only-client/src/types.ts
- packages/base-sepolia-read-only-client/src/selectorGuards.ts
- packages/base-sepolia-read-only-client/src/noSignerBoundary.ts
- packages/base-sepolia-read-only-client/src/readOnlyClient.ts
- packages/base-sepolia-read-only-client/src/index.ts
- packages/base-sepolia-read-only-client/test/static-boundary.md

## Remaining blockers

Static test receipt remains required.

No-secret scan receipt remains required.

Runtime approval remains blocked.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

Demo approval receipt remains required.

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

This controlled source receipt is acceptable only if:

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
- it states runtime approval remains blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
