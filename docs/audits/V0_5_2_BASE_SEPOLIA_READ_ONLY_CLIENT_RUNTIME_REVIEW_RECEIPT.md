# NST Core v0.5.2 Base Sepolia Read-Only Client Runtime Review Receipt

Status: READ_ONLY_CLIENT_RUNTIME_REVIEW_COMPLETE_PENDING_PUBLIC_INTERFACE_GATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-13T07:50:37Z
Current commit at runtime review: 3e4458e0bb8b8c3665073ff7aabd7a3b11289bac

Package directory: packages/base-sepolia-read-only-client

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Runtime review gate receipt commit: 3e4458e0bb8b8c3665073ff7aabd7a3b11289bac

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

Runtime review result: PASS

Read-only runtime boundary: PASS

Base Sepolia chain ID enforcement: PASS

Eth-call-only request construction: PASS

No-signer boundary: PASS

No-transaction boundary: PASS

Write-selector guard: PASS

Approval selector guard: PASS

No-secret scan: PASS

No forbidden send/sign path: PASS

No raw ABI JSON copied: PASS

Private dependency boundary: PASS

Read methods reviewed: 213

Write methods blocked: 135

Read selectors reviewed: 158

Write selectors reviewed: 84

Read/write selector overlap: NONE

Approval selector in read methods: NO

Approval selector in write blocklist: YES

Runtime approval for internal read-only use: YES

Public demo approved: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

## Runtime review decision

The Base Sepolia read-only client runtime review is complete.

The controlled source may proceed to the public interface gate as a read-only, Base Sepolia only, no-signing client boundary.

This does not approve public demo launch.

This does not approve mainnet deployment.

This does not authorize transactions.

This does not authorize write method execution.

## Confirmed runtime constraints

The reviewed package:

- enforces Base Sepolia chain ID 84532;
- creates eth_call request objects only;
- has no signer path;
- has no transaction-send path;
- blocks write selectors;
- blocks the approval selector from read calls;
- rejects non-allowlisted selectors;
- contains no private key material;
- contains no seed phrase material;
- contains no wallet-secret material;
- contains no private RPC credential;
- contains no raw ABI JSON copy;
- remains private and dependency-free at this stage.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only public interface gate receipt.

The next artifact is not:

- public demo launch;
- mainnet deployment;
- transaction execution;
- write method execution;
- treasury route execution;
- governance write execution.

## Remaining blockers

Public interface gate remains required.

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

This runtime review receipt is acceptable only if:

- it is docs-only;
- it changes no source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it verifies the runtime review gate receipt;
- it verifies package test execution evidence;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms no secret-assignment-shaped values;
- it confirms no forbidden send/sign path;
- it confirms no raw ABI JSON copied;
- it confirms public demo remains blocked;
- it confirms mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
