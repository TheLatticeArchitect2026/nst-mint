# NST Core v0.5.2 Base Sepolia Read-Only Config Candidate Receipt

Status: READ_ONLY_CONFIG_CANDIDATE_CREATED_PENDING_CONFIG_REVIEW
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T13:54:44Z
Current commit at config candidate creation: 3a5ce56107a0fde79d4b7efaf3e8e4df0fd4e4e7

Config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Generation gate receipt commit: 3a5ce56107a0fde79d4b7efaf3e8e4df0fd4e4e7

Address map commit: e800078973ba5f378fe794b2acad14032bd65c45

Address evidence records commit: e800078973ba5f378fe794b2acad14032bd65c45

Address checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI evidence records commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Config plan commit: e800078973ba5f378fe794b2acad14032bd65c45

Config package gate checklist commit: e800078973ba5f378fe794b2acad14032bd65c45

Protocol client package gate checklist commit: e800078973ba5f378fe794b2acad14032bd65c45

Read method count included: 213

Write method count excluded: 135

Read selector count: 158

Write selector count: 84

Read/write selector overlap: NONE

Approval selector in read methods: NO

Approval selector in write blocklist: YES

Address evidence pool count: 43

Contract read groups included: 8

This receipt is not config approval.

This receipt is not protocol client approval.

This receipt is not public demo approval.

This receipt is not mainnet approval.

This receipt does not authorize deployment.

This receipt does not authorize transactions.

This receipt does not authorize write method execution.

This receipt does not authorize governance writes.

This receipt does not authorize treasury routes.

This receipt does not authorize public production interface launch.

## Candidate boundary

The generated config candidate is candidate-only.

It is testnet-only.

It has no production value.

It has no mainnet authority.

It contains no signing authority.

It contains no transaction authority.

It contains no private keys.

It contains no seed phrases.

It contains no wallet secrets.

It contains no private RPC credentials.

It contains no raw ABI JSON.

It includes read methods only.

It excludes write selectors.

It excludes the approval selector from read methods.

It preserves the write selector blocklist.

## Required next artifact

The next required artifact is:

- Base Sepolia read-only config candidate review receipt.

The next artifact must verify:

- candidate JSON schema;
- config candidate SHA-256;
- read selector inclusion;
- write selector exclusion;
- approval selector exclusion;
- address evidence pool;
- contract-address binding status;
- no-secret status;
- no-signing status;
- no-mainnet status;
- no-public-demo-approval status.

## Remaining blockers

Protocol client implementation remains blocked.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

Generated config package use remains blocked until config candidate review and package gate review are complete.

## No-go conditions

Do not use this candidate as approved config.

Do not use this candidate in a public demo.

Do not use this candidate in protocol client implementation until review passes.

Do not use this candidate on mainnet.

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

Do not add write selectors to read methods.

Do not execute write methods.

## Acceptance criteria

This config candidate receipt is acceptable only if:

- it is docs/generated plus docs/audits only;
- it records Base Sepolia;
- it records chain ID 84532;
- it records all evidence commits;
- it records config candidate SHA-256;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in write blocklist;
- it states config review remains required;
- it states protocol clients remain blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
