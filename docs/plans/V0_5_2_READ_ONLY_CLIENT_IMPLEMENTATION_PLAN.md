# NST Core v0.5.2 Read-Only Client Implementation Plan

Status: DRAFT PLAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-06T09:20:48Z
Current commit at creation: a7e6fc90ecc6a1437aabc6f582cdf8b13bf59ec4

Application infrastructure blueprint commit: a7e6fc90ecc6a1437aabc6f582cdf8b13bf59ec4

Application source tree scaffold record commit: a7e6fc90ecc6a1437aabc6f582cdf8b13bf59ec4

Base Sepolia address map commit: a7e6fc90ecc6a1437aabc6f582cdf8b13bf59ec4

Base Sepolia ABI inventory receipt commit: a7e6fc90ecc6a1437aabc6f582cdf8b13bf59ec4

Base Sepolia public demo warning language receipt commit: a7e6fc90ecc6a1437aabc6f582cdf8b13bf59ec4

Base Sepolia public demo approval receipt template commit: 50507d18f6036ccada13440e88a601165f42f0f2

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize public Base Sepolia demo launch by itself.

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

This document does not create executable client source.

## Purpose

This plan defines the controlled implementation boundary for future NST Core v0.5.2 read-only clients.

The purpose is to prepare the package design, safety rules, fail-closed behavior, test expectations, and evidence requirements before any executable read-only client code is written.

The first allowed implementation target is a Base Sepolia testnet-only read-only client.

The first read-only client must not broadcast transactions.

The first read-only client must not expose write methods.

The first read-only client must not request private keys.

The first read-only client must not request seed phrases.

The first read-only client must not request wallet recovery phrases.

The first read-only client must not embed wallet secrets.

The first read-only client must not embed private RPC credentials.

## Current blocker

Read-only client implementation is not approved yet.

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

Base Sepolia explorer/source verification receipts are not complete.

Config package implementation is not complete.

No-secret package scan rule is not complete.

Package test strategy is not complete.

Public demo warning language is not implemented in UI.

Public demo approval receipt is not complete.

Mainnet deployment remains blocked.

## Implementation scope

The planned read-only client may eventually support:

- network identity checks;
- chain ID checks;
- contract address loading from approved config;
- ABI loading from approved ABI evidence;
- contract read calls;
- pause state reads;
- role reads;
- treasury route reads;
- registry reads;
- public metadata reads;
- token metadata reads;
- balance reads where applicable;
- ownership or SBT status reads where applicable;
- event query planning where applicable;
- health/status summary generation;
- public demo read-only display.

The planned read-only client must not support:

- transaction broadcast;
- mint transactions;
- treasury route changes;
- role grants;
- role revocations;
- pause or unpause calls;
- registry writes;
- metadata writes;
- rescue or sweep calls;
- upgrade calls;
- governance actions;
- signing requests;
- private key entry;
- seed phrase entry;
- recovery phrase entry;
- production key management.

## Package boundary

The future read-only client belongs in the protocol-client package boundary.

Expected future package path:

packages/protocol-clients

Expected future package purpose:

- provide safe read-only contract clients;
- provide strongly network-scoped client factories;
- provide ABI/address validation before reads;
- fail closed on missing evidence;
- provide UI-safe read methods;
- provide demo-safe Base Sepolia read methods;
- provide production-disabled defaults until mainnet gates are complete.

This plan does not create that package source.

## Base Sepolia first rule

The first read-only implementation must target Base Sepolia only.

Network: Base Sepolia

Chain ID: 84532

The client must identify Base Sepolia as testnet-only.

The client must not treat Base Sepolia as production.

The client must not treat Base Sepolia addresses as Base mainnet addresses.

The client must not treat Base Sepolia ABI evidence as Base mainnet ABI evidence.

The client must not treat Base Sepolia reads as production proof.

## Mainnet rule

Base mainnet read-only clients remain blocked until:

- production addresses are approved;
- production address evidence records are complete;
- production address checksum receipts are complete;
- production ABI evidence records are complete;
- production ABI checksum receipts are complete;
- production config package is complete;
- mainnet read-only verification command set is complete;
- release evidence is complete;
- final human approval is complete.

No Base mainnet client implementation is approved by this plan.

## Read-only client mode flags

The future client package should define explicit modes.

| Mode | Network | Writes allowed? | Status |
| --- | --- | --- | --- |
| local-dev-readonly | Local Anvil | NO | Planning only |
| base-sepolia-readonly | Base Sepolia | NO | First candidate |
| base-mainnet-readonly | Base mainnet | NO | BLOCKED |
| base-sepolia-write | Base Sepolia | YES | BLOCKED |
| base-mainnet-write | Base mainnet | YES | BLOCKED |

The default mode must be fail-closed.

No mode may enable writes by default.

## Required config inputs

The future read-only client must require explicit config inputs.

Required inputs:

- network name;
- chain ID;
- RPC URL source;
- address map path or generated config path;
- ABI source path;
- ABI checksum receipt path;
- address checksum receipt path;
- environment label;
- read-only mode flag;
- public demo flag where applicable;
- warning language acknowledgment where applicable.

Disallowed inputs:

- private key;
- seed phrase;
- recovery phrase;
- deployer key;
- wallet secret;
- private RPC credential committed to repo;
- production address copied from chat;
- production address copied from screenshot;
- unreviewed ABI copied from explorer;
- untracked local ABI file.

## RPC source rule

The future read-only client may use public or configured RPC endpoints only if:

- no private credential is committed;
- no private credential is printed;
- no private credential is logged;
- environment variable handling is documented;
- missing RPC URL fails closed;
- wrong chain ID fails closed;
- RPC chain ID is checked at runtime.

The package must not store private RPC credentials in repository.

The package must not store RPC credentials in generated public bundles.

## Chain ID enforcement

The future read-only client must verify:

- expected network name;
- expected chain ID;
- observed chain ID from provider;
- configured chain ID;
- address map chain ID;
- ABI inventory chain ID.

If any chain ID differs, the client must fail closed.

A warning is not enough.

The client must not continue after a chain ID mismatch.

## Address validation

Before reading from any contract, the future client must validate:

- address is present;
- address is not TBD;
- address is not placeholder;
- address is not zero address unless explicitly allowed for a disabled dependency;
- address matches checksum record;
- address belongs to the configured network;
- address evidence record exists;
- address checksum receipt exists;
- address map row status allows read-only use.

If address validation fails, the client must fail closed.

## ABI validation

Before reading from any contract, the future client must validate:

- ABI source is present;
- ABI is parseable JSON;
- ABI evidence record exists;
- ABI checksum receipt exists;
- ABI checksum matches expected value;
- ABI belongs to the configured network scope;
- ABI belongs to the expected contract or module;
- ABI contains only expected read methods for public demo surfaces;
- write methods are not exposed to UI by default.

If ABI validation fails, the client must fail closed.

## Read method allowlist

The future read-only client must use allowlisted methods.

Initial allowed read categories:

- contract name;
- contract symbol;
- contract metadata URI where safe;
- token URI where safe;
- total supply where safe;
- paused state where applicable;
- role membership where safe;
- role admin where safe;
- registry read state where safe;
- treasury route read state where safe;
- SBT locked status where safe;
- mint open status where safe;
- permanent close status where safe;
- pending yield value where safe;
- public config constants where safe.

Disallowed method categories:

- mint;
- transfer;
- approve;
- set approval for all;
- pause;
- unpause;
- grant role;
- revoke role;
- renounce role through public UI;
- set metadata;
- freeze metadata;
- set treasury;
- set registry;
- set router;
- set min-out;
- propose config;
- apply config;
- process pending yield;
- sweep;
- rescue;
- any payable function;
- any state-changing function.

## ABI method classification

The future client package must classify ABI functions.

| Function category | Public read client allowed? | Notes |
| --- | --- | --- |
| view | YES if allowlisted | Requires ABI/address evidence |
| pure | YES if allowlisted | Requires ABI evidence |
| nonpayable | NO | Write path blocked |
| payable | NO | Write path blocked |
| constructor | NO | Not callable |
| fallback | NO | Not callable |
| receive | NO | Not callable |

If ABI mutability is missing or unclear, the method must be blocked.

## Public demo read-only boundary

A public demo read-only surface may display only:

- Base Sepolia network badge;
- testnet-only status;
- no-production-value warning;
- contract read status;
- metadata read status;
- governance read status where safe;
- treasury route read status where safe;
- registry read status where safe;
- demo health status.

A public demo read-only surface must not display:

- production claims;
- mainnet launch claims;
- investment claims;
- yield promises;
- payout promises;
- legal rights claims;
- First Nations production approval claims;
- corporate production integration claims.

## Error handling

The future read-only client must fail closed with explicit errors.

Required error categories:

- unsupported network;
- wrong chain ID;
- missing RPC URL;
- missing address map;
- missing address row;
- missing address evidence;
- missing address checksum;
- missing ABI evidence;
- missing ABI checksum;
- checksum mismatch;
- unapproved method;
- write method blocked;
- public demo not approved;
- warning language missing;
- secret detected;
- unknown contract;
- stale config;
- stale ABI;
- stale address map.

Errors must not expose secrets.

Errors must not suggest entering private keys.

Errors must not suggest bypassing gates.

## Logging rule

The future read-only client may log:

- network name;
- chain ID;
- public contract address;
- contract label;
- read method name;
- read result category;
- non-secret error code;
- evidence status.

The future read-only client must not log:

- private keys;
- seed phrases;
- recovery phrases;
- wallet secrets;
- private RPC credentials;
- bearer tokens;
- API keys;
- raw environment files;
- signer objects.

## No-secret scan dependency

Before implementation is accepted, a no-secret scan rule must exist and cover:

- apps;
- packages;
- infra;
- config;
- generated artifacts;
- environment examples;
- test fixtures;
- logs;
- build output;
- documentation examples.

A passing no-secret scan is required before public demo approval.

## Test strategy dependency

Before implementation is accepted, package tests must cover:

- wrong chain ID fails closed;
- missing address map fails closed;
- missing address evidence fails closed;
- missing address checksum fails closed;
- missing ABI evidence fails closed;
- missing ABI checksum fails closed;
- checksum mismatch fails closed;
- write method request fails closed;
- payable method request fails closed;
- missing warning language blocks demo mode;
- no private key requested;
- no seed phrase requested;
- no recovery phrase requested;
- no private RPC credential committed;
- Base Sepolia mode cannot be promoted to mainnet;
- mainnet mode remains blocked.

## Config package dependency

The read-only client must not hardcode addresses directly in client logic.

Addresses must flow through controlled config.

Config must be generated or maintained from approved address maps.

Config must preserve network and chain ID.

Config must fail closed on missing evidence.

Config must not map Base Sepolia addresses to Base mainnet.

Config must not include private keys.

Config must not include wallet secrets.

## UI dependency

The public UI must not call read-only clients unless:

- public demo warning language is implemented;
- network badge is visible;
- Base Sepolia is clearly identified;
- no production value notice is visible;
- no investment offer notice is visible;
- no mainnet rights notice is visible;
- wallet safety notice is visible where wallet connection exists;
- demo approval receipt is complete if public demo launch is pursued.

## Governance gates dependency

Read-only governance views must not become governance actions.

Governance reads may show public role state only if safe.

Governance reads must not imply authority.

Governance reads must not imply production governance activation.

Governance write actions remain blocked.

## Transaction rail dependency

Read-only clients must not call transaction rail write paths.

Transaction rail simulation remains separate.

Transaction broadcast remains blocked.

Read-only status reads do not approve transaction rail execution.

Transaction rail package gates must remain independent.

## First Nations dependency

Any First Nations-facing read-only page must preserve:

- testnet-only warning;
- no production governance warning;
- no production revenue warning;
- no Treaty-law finalization warning;
- no consent implied warning;
- no key-holder appointment implied warning.

Treaty-law review is required before production First Nations language is finalized.

## Corporate dependency

Any corporate-facing read-only page must preserve:

- testnet-only warning;
- no production integration warning;
- no commercial commitment warning;
- no operational reliance warning;
- no investment solicitation warning.

Corporate demo usage must remain informational unless separately approved.

## Implementation sequence

The future implementation sequence should be:

1. Create package test strategy.
2. Create no-secret package scan rule.
3. Create config package implementation plan.
4. Create protocol client package implementation plan.
5. Create Base Sepolia read-only config draft.
6. Create Base Sepolia ABI/address fixture drafts from approved evidence.
7. Implement read-only client package.
8. Implement fail-closed network and evidence validation.
9. Implement read method allowlist.
10. Implement package tests.
11. Implement UI integration only after UI gates are satisfied.
12. Complete demo approval receipt only if public demo launch is pursued.

## Required files before executable implementation

Before executable client implementation begins, these planning artifacts should exist:

- package test strategy;
- no-secret package scan rule;
- config package implementation plan;
- protocol client package implementation plan;
- Base Sepolia read-only config plan;
- Base Sepolia address evidence records;
- Base Sepolia address checksum receipts;
- Base Sepolia ABI evidence records;
- Base Sepolia ABI checksum receipts;
- read-only client gate checklist;
- demo warning implementation checklist;
- demo approval receipt template.

## No-go conditions

Do not implement executable read-only client code from this plan alone.

Do not launch a public Base Sepolia demo from this plan alone.

Do not launch a production interface from this plan.

Do not launch a mainnet interface from this plan.

Do not expose write methods from this plan.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not embed wallet secrets.

Do not embed private RPC credentials.

Do not treat Base Sepolia as production.

Do not treat Base Sepolia reads as mainnet evidence.

Do not treat read-only client implementation as deployment authorization.

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
- it states read-only client implementation is not approved yet;
- it states Base Sepolia is testnet-only;
- it states Base Sepolia has no production value;
- it states Base Sepolia has no mainnet rights;
- it defines read-only scope;
- it blocks write methods;
- it requires chain ID enforcement;
- it requires address evidence;
- it requires address checksum receipts;
- it requires ABI evidence;
- it requires ABI checksum receipts;
- it requires fail-closed behavior;
- it requires no-secret scan;
- it requires package tests;
- it requires config dependency;
- it requires public warning language before demo;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 package test strategy reference

Reference document: docs/plans/V0_5_2_PACKAGE_TEST_STRATEGY.md

Reference commit: 650020e7418c707aa93bd471e0ef87857a76563d

Reference captured UTC: 2026-10-06T09:36:23Z

Reference target: read-only client implementation plan

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the package test strategy exists as a controlled planning artifact.

No executable tests are approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Passing tests must not be treated as deployment authorization.

Passing tests must not be treated as mainnet approval.

Passing tests must not be treated as public demo approval.

Required follow-on work:

- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create package test source only after package gates authorize executable test implementation.
- Keep write paths blocked until explicit package and approval gates authorize them.

No-go conditions preserved:

- Do not implement package tests from this plan alone unless the next implementation gate authorizes test source creation.
- Do not implement executable app code from this plan alone.
- Do not implement executable package code from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not treat tests as deployment authorization.
- Do not treat passing tests as mainnet approval.
- Do not treat passing tests as public demo approval.
- Do not imply this reference authorizes deployment.

## v0.5.2 no-secret package scan rule reference

Reference document: docs/checklists/V0_5_2_NO_SECRET_PACKAGE_SCAN_RULE.md

Reference commit: 77c5de04cc86e509269024407e2d007b3fd7bd83

Reference captured UTC: 2026-10-07T09:44:39Z

Reference target: read-only client implementation plan

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

Reference target: read-only client implementation plan

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

Reference target: read-only client implementation plan

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

Reference target: read-only client implementation plan

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
