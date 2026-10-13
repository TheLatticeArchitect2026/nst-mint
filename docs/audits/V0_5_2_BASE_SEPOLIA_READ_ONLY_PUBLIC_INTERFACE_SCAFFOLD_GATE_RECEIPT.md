# NST Core v0.5.2 Base Sepolia Read-Only Public Interface Scaffold Gate Receipt

Status: READ_ONLY_PUBLIC_INTERFACE_SCAFFOLD_GATE_OPEN_FOR_CONTROLLED_INTERFACE_SCAFFOLD_ONLY
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-13T08:12:10Z
Current commit at public interface scaffold gate creation: bb407cbc5f1164b9ba0e87182b0c25c8fd9b9ce1

Package directory: packages/base-sepolia-read-only-client

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Public interface planning receipt commit: bb407cbc5f1164b9ba0e87182b0c25c8fd9b9ce1

Public interface gate receipt commit: 507003b85ec09f4e0bfa836f1533f312b305ace9

Runtime review receipt commit: 427d48ac436d552205fb9152327c6e6a2ab5a3f1

Package test execution receipt commit: 99873aa96266833af877683543cb639ea48ea689

Static test and no-secret scan receipt commit: e2e30dadaa9853d22e707ec3a8bbf211b220410e

Controlled source receipt commit: 05bf5caef6542361da79ea7f8d9d2d5848e207bb

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Mainnet readiness blocker register commit: e800078973ba5f378fe794b2acad14032bd65c45

Mainnet readiness runbook commit: e800078973ba5f378fe794b2acad14032bd65c45

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Gate result: PASS_FOR_CONTROLLED_PUBLIC_INTERFACE_SCAFFOLD_ONLY

Public interface scaffold approved: YES

Public interface implementation approved: NO

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

Eth-call-only request boundary present: PASS

No-signing boundary present: PASS

No-transaction boundary present: PASS

## Gate decision

The Base Sepolia read-only public interface scaffold gate is open for controlled scaffold only.

This permits the next command to create a controlled public interface scaffold.

This does not approve public interface implementation.

This does not approve public demo launch.

This does not approve mainnet deployment.

This does not authorize transactions.

This does not authorize write method execution.

## Allowed scaffold scope

The controlled public interface scaffold may create only structural files needed for a read-only interface.

Allowed scaffold files may include:

- public interface directory;
- README;
- boundary document;
- scaffold manifest;
- placeholder app shell document;
- testnet warning placeholder;
- read-only connection boundary placeholder;
- no-wallet-write boundary placeholder;
- no-secret scan placeholder.

The scaffold must not include:

- private keys;
- seed phrases;
- wallet secrets;
- private RPC credentials;
- signing code;
- transaction send code;
- write method calls;
- treasury routes;
- governance write routes;
- public demo deployment instructions;
- mainnet deployment instructions.

## Required public interface scaffold boundaries

Any public interface scaffold must preserve:

- Base Sepolia only;
- chain ID 84532 only;
- read-only calls only;
- eth_call only;
- no signer;
- no wallet-write path;
- no transaction send path;
- no write selector calls;
- approval selector blocked;
- no private keys;
- no seed phrases;
- no wallet secrets;
- no private RPC credentials;
- visible testnet-only warning;
- visible no-mainnet warning;
- visible no-production-value warning;
- no public demo launch without a later demo approval receipt.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only public interface scaffold receipt.

The next artifact is not:

- public demo launch;
- mainnet deployment;
- transaction execution;
- write method execution;
- treasury route execution;
- governance write execution.

## Remaining blockers

Public interface scaffold receipt remains required.

Public interface implementation remains blocked.

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

This public interface scaffold gate receipt is acceptable only if:

- it is docs-only;
- it changes no source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it verifies public interface planning evidence;
- it verifies runtime review evidence;
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
