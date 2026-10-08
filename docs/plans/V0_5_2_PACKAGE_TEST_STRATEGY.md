# NST Core v0.5.2 Package Test Strategy

Status: DRAFT PLAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-06T09:32:04Z
Current commit at creation: 3ad272fbb75cb537ad682ae97375e8d3eb1daa5e

Read-only client implementation plan commit: b9c0b7fe0a9fc1e9aa0b72db40134166d757dc68

Application infrastructure blueprint commit: 3ad272fbb75cb537ad682ae97375e8d3eb1daa5e

Application source tree scaffold record commit: 3ad272fbb75cb537ad682ae97375e8d3eb1daa5e

Mainnet readiness blocker register commit: 3ad272fbb75cb537ad682ae97375e8d3eb1daa5e

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize public Base Sepolia demo launch by itself.

This document does not approve executable app source.

This document does not approve executable package source.

This document does not approve executable infra source.

This document does not approve any production address.

This document does not approve any production ABI.

This document does not approve any production governance object.

This document does not approve any production treasury route.

This document does not authorize production configuration.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize production governance gates.

This document does not authorize any public mainnet mint interface.

This document is a planning artifact only.

## Purpose

This plan defines the test strategy required before NST Core v0.5.2 application, package, client, config, governance-gate, or transaction-rail source is accepted.

The purpose is to ensure future executable work is fail-closed, evidence-backed, network-scoped, secret-safe, and aligned with the institutional readiness gates already built.

This plan does not create test files.

This plan does not create app source.

This plan does not create package source.

This plan does not create infra source.

This plan does not create client source.

This plan does not create deployment scripts.

## Current blocker

Executable app and package implementation is not approved yet.

Package test implementation is not complete.

No-secret package scan rule is not complete.

Config package implementation plan is not complete.

Protocol client package implementation plan is not complete.

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

Public demo approval receipt is not complete.

Mainnet deployment remains blocked.

## Test strategy scope

This test strategy applies to future work in:

- apps/public-site;
- apps/corporate-site;
- apps/base-sepolia-demo;
- apps/first-nations-portal;
- apps/admin-console;
- packages/transaction-rail;
- packages/protocol-clients;
- packages/governance-gates;
- packages/ui;
- packages/config;
- infra.

This strategy does not authorize any of those directories to contain executable implementation yet.

## Global test rule

Every future package must fail closed.

Every future package must reject missing evidence.

Every future package must reject wrong network.

Every future package must reject wrong chain ID.

Every future package must reject unapproved addresses.

Every future package must reject unapproved ABIs.

Every future package must reject checksum mismatch.

Every future package must reject write behavior unless explicitly approved.

Every future package must reject secret material.

Every future package must preserve Base Sepolia testnet limitations.

Every future package must preserve mainnet deployment blockers.

## Required test categories

Every package must be tested against the following categories where applicable:

- network validation;
- chain ID validation;
- address evidence validation;
- address checksum validation;
- ABI evidence validation;
- ABI checksum validation;
- config validation;
- no-secret validation;
- read-only behavior;
- write-block behavior;
- public warning behavior;
- First Nations disclaimer behavior;
- corporate disclaimer behavior;
- transaction rail disable behavior;
- governance gate disable behavior;
- emergency disable behavior;
- stale artifact rejection;
- wrong environment rejection;
- malformed input rejection;
- logging safety;
- error safety.

## Network validation tests

Future tests must confirm:

| Test | Expected result |
| --- | --- |
| Base Sepolia chain ID 84532 accepted only in testnet mode | PASS |
| Base mainnet chain ID 8453 rejected unless mainnet gates complete | PASS |
| Local Anvil accepted only in local-dev mode | PASS |
| Unknown chain ID rejected | PASS |
| Chain ID mismatch rejects client creation | PASS |
| Provider chain ID mismatch rejects reads | PASS |
| Config chain ID mismatch rejects reads | PASS |
| Address map chain ID mismatch rejects reads | PASS |
| ABI inventory chain ID mismatch rejects reads | PASS |

A warning is not enough for chain ID mismatch.

The package must stop.

## Address evidence tests

Future tests must confirm:

| Test | Expected result |
| --- | --- |
| Missing address map rejects reads | PASS |
| Missing address row rejects reads | PASS |
| Address row with TBD rejects reads | PASS |
| Placeholder address rejects reads | PASS |
| Zero address rejects reads unless explicitly allowed | PASS |
| Missing address evidence record rejects reads | PASS |
| Missing address checksum receipt rejects reads | PASS |
| Checksum mismatch rejects reads | PASS |
| Base Sepolia address used in mainnet mode rejects reads | PASS |
| Base mainnet address used in Base Sepolia mode rejects reads | PASS |
| Screenshot-derived address rejects use | PASS |
| Chat-derived address rejects use | PASS |
| Memory-derived address rejects use | PASS |

## ABI evidence tests

Future tests must confirm:

| Test | Expected result |
| --- | --- |
| Missing ABI source rejects client creation | PASS |
| Missing ABI evidence record rejects client creation | PASS |
| Missing ABI checksum receipt rejects client creation | PASS |
| ABI checksum mismatch rejects client creation | PASS |
| Malformed ABI rejects client creation | PASS |
| ABI with wrong contract label rejects client creation | PASS |
| ABI with wrong network scope rejects client creation | PASS |
| Base Sepolia ABI used in mainnet mode rejects client creation | PASS |
| Mainnet ABI used in Base Sepolia mode rejects client creation | PASS |
| Screenshot-derived ABI rejects use | PASS |
| Chat-derived ABI rejects use | PASS |
| Memory-derived ABI rejects use | PASS |
| Manually edited ABI without receipt rejects use | PASS |

## Read-only method tests

Future tests must confirm:

| Test | Expected result |
| --- | --- |
| Allowlisted view function can be called in read-only mode | PASS |
| Allowlisted pure function can be called in read-only mode | PASS |
| Non-allowlisted view function is blocked | PASS |
| Nonpayable function is blocked | PASS |
| Payable function is blocked | PASS |
| Fallback function is blocked | PASS |
| Receive function is blocked | PASS |
| Missing mutability blocks method | PASS |
| Unknown function blocks method | PASS |
| Read-only client never requests signer | PASS |
| Read-only client never prompts transaction signing | PASS |

## Write-block tests

Future tests must confirm:

| Write category | Expected result |
| --- | --- |
| Mint transaction | BLOCKED |
| Transfer transaction | BLOCKED |
| Approval transaction | BLOCKED |
| Pause transaction | BLOCKED |
| Unpause transaction | BLOCKED |
| Grant role transaction | BLOCKED |
| Revoke role transaction | BLOCKED |
| Registry write transaction | BLOCKED |
| Metadata write transaction | BLOCKED |
| Treasury route write transaction | BLOCKED |
| Rescue transaction | BLOCKED |
| Sweep transaction | BLOCKED |
| Config proposal transaction | BLOCKED |
| Config apply transaction | BLOCKED |
| Any payable call | BLOCKED |

No package may silently downgrade a write call into a read call.

No package may expose a write button because an ABI contains write methods.

## Config package tests

Future config tests must confirm:

- config fails if network is missing;
- config fails if chain ID is missing;
- config fails if environment is missing;
- config fails if address evidence is missing;
- config fails if address checksum receipt is missing;
- config fails if ABI evidence is missing;
- config fails if ABI checksum receipt is missing;
- config fails if Base Sepolia address is used for Base mainnet;
- config fails if mainnet address is used for Base Sepolia;
- config fails if production mode uses testnet-only evidence;
- config fails if private keys are present;
- config fails if wallet secrets are present;
- config fails if private RPC credentials are committed;
- config fails if unknown fields imply production approval.

## Protocol client tests

Future protocol-client tests must confirm:

- read-only clients require approved config;
- client factory rejects missing config;
- client factory rejects wrong network;
- client factory rejects wrong chain ID;
- client factory rejects missing ABI;
- client factory rejects missing address;
- client factory rejects checksum mismatch;
- client factory blocks write methods;
- client factory does not require a signer for read-only mode;
- client factory does not accept private keys;
- client factory does not accept seed phrases;
- client factory does not accept recovery phrases;
- client factory exposes safe error codes;
- client factory does not log secrets.

## Transaction rail package tests

Future transaction rail tests must confirm:

- transaction rail is disabled by default;
- transaction broadcast is blocked until gates complete;
- missing transaction rail approval blocks execution;
- missing governance gate blocks execution;
- missing config approval blocks execution;
- missing ABI checksum blocks execution;
- missing address checksum blocks execution;
- Base Sepolia demo scope does not approve production transaction rail;
- read-only client status does not approve transaction rail;
- transaction simulation cannot broadcast accidentally;
- unsupported chain ID blocks execution;
- no private key is accepted from repository config.

## Governance gates package tests

Future governance-gate tests must confirm:

- governance actions are blocked by default;
- role grants are blocked by default;
- role revocations are blocked by default;
- admin actions are blocked by default;
- treasury actions are blocked by default;
- First Nations governance actions are blocked by default;
- missing approval receipt blocks governance action;
- missing source-of-truth record blocks governance action;
- missing evidence blocks governance action;
- Base Sepolia governance views do not imply production governance;
- read-only governance display cannot invoke write methods.

## Public UI tests

Future public UI tests must confirm:

- Base Sepolia network badge is visible before user action;
- testnet-only warning is visible before user action;
- no production value warning is visible before user action;
- no investment offer warning is visible before user action;
- no mainnet rights warning is visible before user action;
- wallet safety warning appears before wallet connection;
- private keys are never requested;
- seed phrases are never requested;
- recovery phrases are never requested;
- production claims are not displayed;
- mainnet launch claims are not displayed;
- First Nations production approval is not implied;
- corporate production integration is not implied;
- write buttons are hidden or disabled unless separately approved.

## First Nations interface tests

Future First Nations interface tests must confirm:

- Treaty-law review status is displayed where required;
- no production First Nations governance is implied;
- no production First Nations revenue route is implied;
- no First Nations consent is implied;
- no key-holder appointment is implied;
- no legal finality is implied;
- testnet-only warning is visible;
- production launch warning is visible;
- contact/request path is informational only.

## Corporate interface tests

Future corporate interface tests must confirm:

- no enterprise production integration is implied;
- no paid service commitment is implied;
- no operational reliance is implied;
- no investment solicitation is implied;
- testnet-only warning is visible;
- demo scope is clear;
- contact/request path is informational only;
- no transaction rail production access is implied;
- no treasury production route is implied.

## No-secret tests

Future no-secret tests must scan:

- apps;
- packages;
- infra;
- docs examples;
- config examples;
- generated config;
- test fixtures;
- build outputs;
- logs;
- environment examples.

The scan must detect and block:

- private keys;
- seed phrases;
- recovery phrases;
- deployer keys;
- wallet secrets;
- private RPC credentials;
- keystore passwords;
- personal access tokens;
- private API keys;
- bearer tokens;
- signing material.

## Error message tests

Future error tests must confirm:

- errors do not expose secrets;
- errors do not instruct users to paste private keys;
- errors do not instruct users to paste seed phrases;
- errors do not instruct users to bypass gates;
- errors clearly identify blocked state;
- errors clearly identify missing evidence;
- errors clearly identify wrong network;
- errors clearly identify wrong chain ID;
- errors clearly identify unsupported write method;
- errors preserve public-demo and mainnet blockers.

## Logging tests

Future logging tests must confirm logs may include:

- non-secret network name;
- chain ID;
- public address;
- contract label;
- method label;
- non-secret evidence status;
- non-secret error code.

Future logging tests must confirm logs never include:

- private keys;
- seed phrases;
- recovery phrases;
- wallet secrets;
- private RPC credentials;
- bearer tokens;
- API keys;
- raw environment files;
- signer objects;
- secret stack traces.

## Build and CI tests

Future CI must run:

- lint;
- typecheck;
- unit tests;
- integration tests where safe;
- no-secret scan;
- dependency audit where configured;
- docs link check where configured;
- build check;
- fail-closed config check;
- package gate check.

CI must fail on:

- any secret detection;
- any write method exposure without approval;
- any Base Sepolia to mainnet promotion;
- any missing evidence dependency;
- any unstated network;
- any unstated chain ID;
- any public demo warning removal.

## Test fixture rule

Test fixtures must not contain:

- real private keys;
- real seed phrases;
- real recovery phrases;
- real deployer keys;
- real wallet secrets;
- real private RPC credentials;
- production-only addresses unless approved for fixture use;
- mainnet addresses mislabeled as testnet;
- Base Sepolia addresses mislabeled as mainnet.

Mock values must be clearly labeled as mock.

Mock values must not be promoted to production config.

## Regression test rule

Every resolved blocker should gain a regression test.

Every discovered bug should gain a regression test.

Every security finding should gain a regression test.

Every chain ID failure should gain a regression test.

Every checksum mismatch failure should gain a regression test.

Every public-warning failure should gain a regression test.

Every write-block bypass should gain a regression test.

## Evidence-to-test mapping

Future test plans must map evidence to tests.

| Evidence | Required test mapping |
| --- | --- |
| Address evidence record | Address validation tests |
| Address checksum receipt | Checksum validation tests |
| ABI evidence record | ABI validation tests |
| ABI checksum receipt | ABI checksum validation tests |
| Public warning language receipt | UI warning tests |
| Demo approval receipt | Demo launch gate tests |
| Read-only client plan | Read-only behavior tests |
| Transaction rail blueprint | Transaction rail disable tests |
| Governance gates checklist | Governance action block tests |
| Config package gate | Config validation tests |

## Test acceptance gate

A future package test suite is acceptable only if:

- it runs from clean checkout;
- it requires no private secrets;
- it does not require mainnet transactions;
- it does not require real funds;
- it does not broadcast transactions;
- it can run in CI;
- it fails closed on missing evidence;
- it fails closed on wrong network;
- it fails closed on wrong chain ID;
- it fails closed on checksum mismatch;
- it proves write methods are blocked;
- it proves secrets are not requested;
- it proves warnings are preserved where UI exists.

## No-go conditions

Do not implement package tests from this plan alone unless the next implementation gate authorizes test source creation.

Do not implement executable app code from this plan alone.

Do not implement executable package code from this plan alone.

Do not launch a public Base Sepolia demo from this plan.

Do not launch a production interface from this plan.

Do not launch a mainnet interface from this plan.

Do not expose write methods from this plan.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not embed wallet secrets.

Do not embed private RPC credentials.

Do not treat tests as deployment authorization.

Do not treat passing tests as mainnet approval.

Do not treat passing tests as public demo approval.

## Secret exclusion checklist

This plan must contain none of the following:

| Secret type | Present? | Status |
| --- | --- | --- |
| Private key | NO | REQUIRED |
| Seed phrase | NO | REQUIRED |
| Wallet recovery phrase | NO | REQUIRED |
| Deployer key | NO | REQUIRED |
| Wallet secret | NO | REQUIRED |
| Private RPC credential | NO | REQUIRED |
| Keystore password | NO | REQUIRED |
| Hardware wallet recovery information | NO | REQUIRED |
| Private signer material | NO | REQUIRED |
| Personal access token | NO | REQUIRED |
| Private API key | NO | REQUIRED |

## Acceptance criteria

This plan is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states tests do not authorize deployment;
- it states tests do not authorize public demo launch;
- it defines network validation tests;
- it defines chain ID tests;
- it defines address evidence tests;
- it defines ABI evidence tests;
- it defines read-only tests;
- it defines write-block tests;
- it defines config package tests;
- it defines protocol client tests;
- it defines transaction rail tests;
- it defines governance gate tests;
- it defines public UI tests;
- it defines no-secret tests;
- it defines CI expectations;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 no-secret package scan rule reference

Reference document: docs/checklists/V0_5_2_NO_SECRET_PACKAGE_SCAN_RULE.md

Reference commit: 77c5de04cc86e509269024407e2d007b3fd7bd83

Reference captured UTC: 2026-10-07T09:44:39Z

Reference target: package test strategy

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve executable no-secret scan tooling by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the no-secret package scan rule exists as a controlled planning artifact.

No executable no-secret scan tooling is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

A no-secret scan pass must not be treated as deployment authorization.

A no-secret scan pass must not be treated as mainnet approval.

A no-secret scan pass must not be treated as public demo approval.

Required follow-on work:

- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Create executable no-secret scan tooling only after implementation gates authorize source creation.
- Create no-secret scan receipt template.
- Create no-secret scan receipt process.
- Complete no-secret scan receipt before public Base Sepolia demo approval.
- Complete no-secret scan receipt before any mainnet candidate deployment package.
- Keep all private keys, seed phrases, recovery phrases, wallet secrets, signer material, deployer keys, private RPC credentials, API keys, and bearer tokens out of the repository.

No-go conditions preserved:

- Do not implement executable no-secret scan tooling from this rule alone unless a future implementation gate authorizes it.
- Do not implement executable app code from this rule alone.
- Do not implement executable package code from this rule alone.
- Do not launch a public Base Sepolia demo from this rule.
- Do not launch a production interface from this rule.
- Do not launch a mainnet interface from this rule.
- Do not treat a no-secret scan pass as deployment authorization.
- Do not treat a no-secret scan pass as public demo approval.
- Do not treat a no-secret scan pass as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 config package implementation plan reference

Reference document: docs/plans/V0_5_2_CONFIG_PACKAGE_IMPLEMENTATION_PLAN.md

Reference commit: 4f7fad4b838bab2452da5bd257fe14cf7bcd9ea2

Reference captured UTC: 2026-10-08T08:44:33Z

Reference target: package test strategy

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve generated config.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the config package implementation plan exists as a controlled planning artifact.

No executable config package source is approved by this reference alone.

No generated config is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Config package existence must not be treated as deployment authorization.

Config package existence must not be treated as public demo approval.

Config package existence must not be treated as mainnet approval.

Required follow-on work:

- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create executable config package source only after package gates authorize implementation.
- Create generated config only after evidence and package gates authorize generation.
- Keep write methods disabled by default.
- Keep transaction broadcast disabled by default.
- Keep governance writes disabled by default.
- Keep production treasury routes disabled by default.
- Keep Base mainnet config blocked until final production gates are complete.

No-go conditions preserved:

- Do not implement executable config package source from this plan alone.
- Do not create generated config from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not enable transaction broadcast from this plan.
- Do not enable governance writes from this plan.
- Do not enable production treasury routes from this plan.
- Do not treat config existence as deployment authorization.
- Do not treat config existence as public demo approval.
- Do not treat config existence as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 protocol client package implementation plan reference

Reference document: docs/plans/V0_5_2_PROTOCOL_CLIENT_PACKAGE_IMPLEMENTATION_PLAN.md

Reference commit: d22b210151c1ca214154735eaedcec58675e6953

Reference captured UTC: 2026-10-08T20:42:59Z

Reference target: package test strategy

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable config package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve generated protocol clients.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the protocol client package implementation plan exists as a controlled planning artifact.

No executable protocol client package source is approved by this reference alone.

No generated protocol client source is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Protocol client package existence must not be treated as deployment authorization.

Protocol client package existence must not be treated as public demo approval.

Protocol client package existence must not be treated as mainnet approval.

Required follow-on work:

- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create executable config package source only after package gates authorize implementation.
- Create executable protocol client package source only after package gates authorize implementation.
- Keep write methods blocked by default.
- Keep transaction broadcast disabled by default.
- Keep governance writes disabled by default.
- Keep production treasury routes disabled by default.
- Keep Base mainnet protocol clients blocked until final production gates are complete.

No-go conditions preserved:

- Do not implement executable protocol client package source from this plan alone.
- Do not create generated protocol client source from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not enable transaction broadcast from this plan.
- Do not enable governance writes from this plan.
- Do not enable production treasury routes from this plan.
- Do not treat protocol client existence as deployment authorization.
- Do not treat protocol client existence as public demo approval.
- Do not treat protocol client existence as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia read-only config plan reference

Reference document: docs/plans/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_PLAN.md

Reference commit: 3d5d608993c1bc7c3971cf9d06c30ae45afec010

Reference captured UTC: 2026-10-08T21:04:27Z

Reference target: package test strategy

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia read-only config plan exists as a controlled planning artifact.

No generated Base Sepolia read-only config is approved by this reference alone.

No executable config package source is approved by this reference alone.

No executable protocol client package source is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Base Sepolia read-only config existence must not be treated as deployment authorization.

Base Sepolia read-only config existence must not be treated as public demo approval.

Base Sepolia read-only config existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Create executable config package source only after package gates authorize implementation.
- Create executable protocol client package source only after package gates authorize implementation.
- Run package tests.
- Run no-secret scan.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet config blocked until final production gates are complete.

No-go conditions preserved:

- Do not create generated config from this plan alone.
- Do not implement executable config package source from this plan alone.
- Do not implement executable protocol client package source from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not enable transaction broadcast from this plan.
- Do not enable governance writes from this plan.
- Do not enable production treasury routes from this plan.
- Do not treat Base Sepolia read-only config existence as deployment authorization.
- Do not treat Base Sepolia read-only config existence as public demo approval.
- Do not treat Base Sepolia read-only config existence as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address evidence request packet reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_REQUEST_PACKET.md

Reference commit: 35fc42e2b0ceee421522f9c1da24d6d692387576

Reference captured UTC: 2026-10-08T21:20:35Z

Reference target: package test strategy

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address evidence request packet exists as a controlled public-evidence request artifact.

No Base Sepolia address evidence response is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia address evidence request packet existence must not be treated as deployment authorization.

Base Sepolia address evidence request packet existence must not be treated as public demo approval.

Base Sepolia address evidence request packet existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Review all responses for public-only, no-secret compliance.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, or Base mainnet address evidence.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Create executable config package source only after package gates authorize implementation.
- Create executable protocol client package source only after package gates authorize implementation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not complete the evidence request with guessed addresses.
- Do not complete the evidence request with placeholder addresses.
- Do not complete the evidence request with screenshot-only evidence.
- Do not complete the evidence request with chat-only evidence.
- Do not complete the evidence request with memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not use the request packet as deployment authorization.
- Do not use the request packet as public demo approval.
- Do not use the request packet as mainnet approval.
- Do not use the request packet as production address approval.
- Do not use the request packet as production ABI approval.
- Do not imply this reference authorizes deployment.
