# NST Core v0.5.2 Base Sepolia Read-Only Client Implementation Gate Receipt

Status: READ_ONLY_CLIENT_IMPLEMENTATION_GATE_OPEN_FOR_CONTROLLED_SOURCE_ONLY
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T18:35:15Z
Current commit at implementation gate receipt creation: 7034167037a148c75afb57fd54e388fbdbddfd28

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Scaffold manifest file: packages/base-sepolia-read-only-client/SCAFFOLD_MANIFEST.json

Scaffold receipt commit: 7034167037a148c75afb57fd54e388fbdbddfd28

Scaffold gate receipt commit: 789c281d0c672746a545db2146d669a767a42b9b

Read-only client implementation plan receipt commit: be580920dc46fd6b6cc68d831e4adc6f223ad131

Protocol client package gate receipt commit: 3afca4e4f0934b5636d1dc93cb1f9e3db2261d75

Config package gate receipt commit: 3671d138558594589646a1cd22fd96730608ce84

ABI method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Address checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Gate result: PASS_FOR_CONTROLLED_READ_ONLY_CLIENT_SOURCE_GENERATION_ONLY

Controlled source generation approved: YES

Runtime approval: NO

Public demo approved: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

Read methods available for controlled implementation: 213

Write methods blocked from controlled implementation: 135

Read selectors available for controlled implementation: 158

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

## Gate decision

The Base Sepolia read-only client implementation gate is open for controlled source generation only.

This permits the next command to create controlled read-only source files inside the existing scaffold.

This does not approve runtime use.

This does not approve public demo launch.

This does not approve mainnet deployment.

This does not authorize transactions.

This does not authorize write method execution.

## Allowed controlled source scope

The next controlled source generation may create:

- package manifest for the read-only client package;
- TypeScript configuration;
- read-only config loader;
- read-only client boundary;
- write-selector guard;
- no-signing guard;
- test placeholders or static tests;
- no-secret scan placeholder or static check.

Any generated source must preserve:

- Base Sepolia only;
- chain ID 84532 only;
- read methods only;
- write selectors blocked;
- approval selector blocked from read methods;
- no signer;
- no wallet-write path;
- no transaction send path;
- no private keys;
- no seed phrases;
- no wallet secrets;
- no private RPC credentials;
- no mainnet;
- no public demo approval.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only client controlled source receipt.

That receipt must verify:

- no private keys;
- no seed phrases;
- no wallet secrets;
- no private RPC credentials;
- no signer path;
- no transaction send path;
- no write methods exposed;
- approval selector excluded from read calls;
- Base Sepolia chain ID enforced;
- mainnet blocked;
- public demo blocked.

## Remaining blockers

Runtime approval remains blocked.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

No-secret scan remains required.

Package tests remain required.

UI review remains required.

Demo approval receipt remains required.

## No-secret confirmation

This receipt does not request private keys.

This receipt does not request seed phrases.

This receipt does not request wallet recovery phrases.

This receipt does not request deployer keys.

This receipt does not request signer keys.

This receipt does not request wallet secrets.

This receipt does not request private RPC credentials.

This receipt does not request private API keys.

This receipt does not request bearer tokens.

This receipt does not request private custody material.

## No-go conditions

Do not use this receipt as runtime approval.

Do not use this receipt as public demo approval.

Do not use this receipt as mainnet approval.

Do not use this receipt as deployment authorization.

Do not use this receipt as transaction approval.

Do not use this receipt as write-method approval.

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

Do not add write selectors to read methods.

Do not execute write methods.

Do not execute transactions.

## Acceptance criteria

This implementation gate receipt is acceptable only if:

- it is docs-only;
- it changes no source code;
- it changes no runtime package file;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate SHA-256;
- it verifies the scaffold manifest;
- it verifies the scaffold receipt;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms no signing authority;
- it confirms no write authority;
- it confirms no transaction authority;
- it confirms no mainnet authority;
- it opens controlled source generation only;
- it states runtime approval remains blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
