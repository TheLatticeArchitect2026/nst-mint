# NST Core v0.5.2 Base Sepolia Read-Only Config Generation Gate Receipt

Status: READ_ONLY_CONFIG_GENERATION_GATE_OPEN_FOR_CANDIDATE_DRAFTING
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T13:44:52Z
Current commit at gate receipt creation: e800078973ba5f378fe794b2acad14032bd65c45

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Address checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI evidence records commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Read-only config plan commit: e800078973ba5f378fe794b2acad14032bd65c45

Config package gate checklist commit: e800078973ba5f378fe794b2acad14032bd65c45

Protocol client package gate checklist commit: e800078973ba5f378fe794b2acad14032bd65c45

Mainnet readiness blocker register commit: e800078973ba5f378fe794b2acad14032bd65c45

Mainnet readiness runbook commit: e800078973ba5f378fe794b2acad14032bd65c45

Read allowlist row count: 213

Write blocklist row count: 135

Read selector count: 158

Write selector count: 84

Read/write selector overlap: NONE

Approval signature in read allowlist: NO

Approval selector in read allowlist: NO

Approval signature in write blocklist: YES

Approval selector in write blocklist: YES

This receipt opens the gate only for drafting a generated Base Sepolia read-only config candidate.

This receipt is not a generated config.

This receipt is not a deployment authorization.

This receipt does not authorize deployment.

This receipt does not authorize mainnet deployment.

This receipt does not authorize public production interface launch.

This receipt does not authorize public Base Sepolia demo launch.

This receipt does not approve executable config package source.

This receipt does not approve executable protocol client package source.

This receipt does not approve executable app source.

This receipt does not approve executable package source.

This receipt does not approve executable infra source.

This receipt does not approve any production address.

This receipt does not approve any mainnet address.

This receipt does not approve transaction rail execution.

This receipt does not approve governance writes.

This receipt does not approve treasury routes.

This receipt does not authorize any public mainnet mint interface.

## Gate decision

The Base Sepolia read-only config generation gate is open for candidate drafting only.

Reason:

- Base Sepolia address checksum receipts are complete.
- Base Sepolia ABI evidence records exist.
- Base Sepolia ABI checksum receipts are complete.
- ABI method classification is complete with safety override.
- Repaired read method allowlist is complete.
- Write method blocklist is complete.
- Read/write selector overlap is zero.
- Approval write-like selector is absent from the read allowlist.
- Approval write-like selector is present in the write blocklist.
- Readiness documents reference the method-control artifacts.

## Candidate-generation boundary

The next permitted action is to generate a Base Sepolia read-only config candidate.

The generated candidate must be treated as a draft until reviewed.

The generated candidate must include only read allowlist selectors.

The generated candidate must exclude every write blocklist selector.

The generated candidate must preserve Base Sepolia chain ID 84532.

The generated candidate must preserve testnet-only warning language.

The generated candidate must preserve no-mainnet boundary.

The generated candidate must include no private keys.

The generated candidate must include no seed phrases.

The generated candidate must include no wallet secrets.

The generated candidate must include no private RPC credentials.

The generated candidate must include no transaction-signing configuration.

The generated candidate must include no write method execution path.

## Required generated config candidate constraints

A generated Base Sepolia read-only config candidate must contain:

- project name;
- phase;
- branch;
- created UTC;
- chain name;
- chain ID;
- network boundary;
- source evidence references;
- address evidence references;
- ABI evidence references;
- read method allowlist reference;
- write method blocklist reference;
- read method entries;
- write selector exclusions;
- no-mainnet boundary;
- no-signing boundary;
- no-private-key boundary;
- no-public-production boundary;
- no-public-demo-approval boundary.

A generated Base Sepolia read-only config candidate must not contain:

- private keys;
- seed phrases;
- wallet recovery phrases;
- deployer keys;
- signer keys;
- wallet secrets;
- private RPC credentials;
- bearer tokens;
- API keys;
- write methods in the read allowlist;
- approval write-like selectors in read methods;
- transaction signing instructions;
- mainnet deployment instructions;
- production treasury routes;
- governance execution routes.

## Remaining blockers after config candidate generation

After config candidate generation, the following blockers remain:

- config candidate review;
- config package gate review;
- protocol client package gate review;
- protocol client implementation;
- package tests;
- no-secret scan;
- public demo warning language implementation;
- UI review;
- demo approval receipt;
- final acceptance gate;
- mainnet deployment gate.

## Protocol client blocker

Protocol client implementation remains blocked until a generated Base Sepolia read-only config candidate is created, reviewed, and approved under the package gates.

This receipt does not authorize protocol client implementation.

## Public demo blocker

Public Base Sepolia demo launch remains blocked until:

- generated read-only config is approved;
- protocol client gate is complete;
- public warning language is implemented;
- network badge is visible;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

This receipt does not authorize public demo launch.

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

Do not treat this receipt as generated config.

Do not treat this receipt as config approval.

Do not treat this receipt as protocol client approval.

Do not treat this receipt as public demo approval.

Do not treat this receipt as mainnet approval.

Do not use this receipt as deployment authorization.

Do not include write methods in generated read-only config.

Do not execute write methods.

Do not allow write methods in public demo.

Do not allow write methods in transaction rail.

Do not allow write methods in governance routes.

Do not allow write methods in treasury routes.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not request signer keys.

Do not request wallet secrets.

Do not request private RPC credentials.

## Acceptance criteria

This gate receipt is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it records Base Sepolia;
- it records chain ID 84532;
- it records address checksum receipt commit;
- it records ABI checksum receipt commit;
- it records method classification commit;
- it records read allowlist commit;
- it records write blocklist commit;
- it confirms zero read/write selector overlap;
- it confirms approval selector is excluded from the read allowlist;
- it confirms approval selector is included in the write blocklist;
- it opens only candidate drafting;
- it does not approve generated config;
- it does not approve protocol client implementation;
- it does not approve public demo launch;
- it does not approve mainnet deployment;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
