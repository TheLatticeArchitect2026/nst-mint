# NST Core v0.5.2 Base Sepolia Protocol Client Package Gate Receipt

Status: PROTOCOL_CLIENT_PACKAGE_GATE_REVIEW_COMPLETE_ACCEPTED_FOR_READ_ONLY_CLIENT_PLANNING_ONLY
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T14:50:18Z
Current commit at protocol client package gate receipt creation: 3671d138558594589646a1cd22fd96730608ce84

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Config candidate receipt commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Config candidate review receipt commit: d5d9ce14c4f939fd0a35d866fb10910a162dce2c

Config package gate receipt commit: 3671d138558594589646a1cd22fd96730608ce84

Generation gate receipt commit: 3a5ce56107a0fde79d4b7efaf3e8e4df0fd4e4e7

Address checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Read-only config plan commit: e800078973ba5f378fe794b2acad14032bd65c45

Config package implementation plan commit: e800078973ba5f378fe794b2acad14032bd65c45

Protocol client package implementation plan commit: e800078973ba5f378fe794b2acad14032bd65c45

Read-only client implementation plan commit: e800078973ba5f378fe794b2acad14032bd65c45

Config package gate checklist commit: e800078973ba5f378fe794b2acad14032bd65c45

Protocol client package gate checklist commit: e800078973ba5f378fe794b2acad14032bd65c45

Mainnet readiness blocker register commit: e800078973ba5f378fe794b2acad14032bd65c45

Mainnet readiness runbook commit: e800078973ba5f378fe794b2acad14032bd65c45

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Gate result: PASS_FOR_READ_ONLY_CLIENT_PLANNING_ONLY

Protocol client package status: CONTROLLED_READ_ONLY_CLIENT_PLANNING_ALLOWED

Protocol client implementation status: BLOCKED_PENDING_IMPLEMENTATION_PLAN_AND_NO_SECRET_SCAN

Read methods available for planning: 213

Write methods excluded from planning: 135

Read selectors available for planning: 158

Write selectors blocklisted: 84

Read/write selector overlap: NONE

Approval selector in read methods: NO

Approval selector in write blocklist: YES

Address evidence pool entries: 43

Contract read groups: 8

No raw ABI JSON in config candidate: PASS

No secret-shaped values detected: PASS

No signing boundary: PASS

No write boundary: PASS

No transaction boundary: PASS

No private key boundary: PASS

No seed phrase boundary: PASS

No wallet secret boundary: PASS

No private RPC credential boundary: PASS

No public demo approval boundary: PASS

No protocol client implementation approval boundary: PASS

No mainnet boundary: PASS

## Gate decision

The Base Sepolia protocol client package gate review is complete.

The reviewed read-only config candidate may be used for read-only client planning only.

This does not approve protocol client implementation.

This does not approve executable protocol client source.

This does not approve app source.

This does not approve package source.

This does not approve infrastructure source.

This does not approve public demo launch.

This does not approve mainnet deployment.

This does not authorize transaction execution.

This does not authorize write method execution.

This does not authorize governance writes.

This does not authorize treasury routes.

## Scope of acceptance

The acceptance is limited to:

- planning a read-only client around the controlled config candidate;
- preserving Base Sepolia testnet-only boundaries;
- preserving no-mainnet boundaries;
- preserving no-signing boundaries;
- preserving no-write boundaries;
- preserving write selector exclusions;
- preserving approval selector exclusion from read methods;
- preserving public demo blockers.

The acceptance does not include:

- writing executable client code;
- writing app source;
- writing package source;
- writing infra source;
- executing protocol clients;
- executing transaction rails;
- launching a public demo;
- using mainnet addresses;
- using production addresses;
- using private keys;
- using private RPC credentials.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only client planning receipt.

That receipt may define the controlled plan for a read-only client package, including source tree boundaries, test boundaries, no-secret scan requirements, and public demo blockers.

The next allowed artifact is not:

- protocol client implementation;
- app source;
- package source;
- infra source;
- public demo launch;
- mainnet deployment.

## Remaining blockers

Read-only client planning receipt remains required.

Protocol client implementation remains blocked.

Application source remains blocked.

Package source remains blocked.

Infrastructure source remains blocked.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.

No-secret scan remains required before any public demo.

Package tests remain required before any public demo.

UI review remains required before any public demo.

Demo approval receipt remains required before any public demo.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia address may be promoted to mainnet.

No Base Sepolia ABI may be promoted to mainnet.

No Base Sepolia read method may be promoted to mainnet.

No Base Sepolia write method may be promoted to mainnet.

No Base Sepolia read-only config may be promoted to mainnet.

No Base Sepolia public demo may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

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

Do not use this receipt as protocol client implementation approval.

Do not use this receipt as executable source approval.

Do not use this receipt as public demo approval.

Do not use this receipt as mainnet approval.

Do not use this receipt as deployment authorization.

Do not use this receipt as production config approval.

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

Do not add write selectors to read methods.

Do not execute write methods.

Do not execute transaction rail methods.

Do not execute governance writes.

Do not execute treasury routes.

## Acceptance criteria

This protocol client package gate receipt is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records the reviewed config candidate commit;
- it records the reviewed config candidate SHA-256;
- it verifies the config package gate receipt;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in the write blocklist;
- it confirms no signing authority;
- it confirms no write authority;
- it confirms no mainnet authority;
- it accepts the candidate only for read-only client planning;
- it states protocol client implementation remains blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
