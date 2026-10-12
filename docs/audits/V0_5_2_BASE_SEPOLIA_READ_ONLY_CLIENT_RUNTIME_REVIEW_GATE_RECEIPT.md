# NST Core v0.5.2 Base Sepolia Read-Only Client Runtime Review Gate Receipt

Status: READ_ONLY_CLIENT_RUNTIME_REVIEW_GATE_OPEN_FOR_CONTROLLED_RUNTIME_REVIEW_ONLY
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T21:33:42Z
Current commit at runtime review gate creation: 99873aa96266833af877683543cb639ea48ea689

Package directory: packages/base-sepolia-read-only-client

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Package test execution receipt commit: 99873aa96266833af877683543cb639ea48ea689

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

Gate result: PASS_FOR_CONTROLLED_RUNTIME_REVIEW_ONLY

Runtime review approved: YES

Runtime approval: NO

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

Approval selector block constant present: PASS

Write selector guard present: PASS

Eth-call-only request type present: PASS

No-signing rejection boundary present: PASS

Transaction rejection boundary present: PASS

## Gate decision

The Base Sepolia read-only client runtime review gate is open for controlled runtime review only.

This permits the next command to create a runtime review receipt based on the controlled source and package test evidence.

This does not approve public demo launch.

This does not approve mainnet deployment.

This does not authorize transactions.

This does not authorize write method execution.

## Required runtime review scope

The runtime review must confirm:

- Base Sepolia chain ID 84532 is enforced;
- only eth_call request construction is present;
- no signer exists;
- no transaction send path exists;
- no write selector is allowed through read calls;
- approval selector is blocked from read calls;
- no private keys exist;
- no seed phrases exist;
- no wallet secrets exist;
- no private RPC credentials exist;
- public demo remains blocked;
- mainnet remains blocked.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only client runtime review receipt.

The next artifact is not:

- public demo launch;
- mainnet deployment;
- transaction execution;
- write method execution;
- treasury route execution;
- governance write execution.

## Remaining blockers

Runtime review receipt remains required.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

Demo approval receipt remains required.

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

This runtime review gate receipt is acceptable only if:

- it is docs-only;
- it changes no source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it verifies the package test execution receipt;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms no secret-assignment-shaped values;
- it confirms no forbidden send/sign path;
- it confirms no raw ABI JSON copied;
- it confirms no public demo approval;
- it confirms no mainnet approval;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
