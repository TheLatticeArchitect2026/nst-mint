# NST Core v0.5.2 No-Secret Package Scan Rule

Status: DRAFT RULE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-07T09:30:16Z
Current commit at creation: 322cde949b9ba3197755eda0954829d5860cbcaa

Package test strategy commit: 650020e7418c707aa93bd471e0ef87857a76563d

Read-only client implementation plan commit: 322cde949b9ba3197755eda0954829d5860cbcaa

Application infrastructure blueprint commit: 322cde949b9ba3197755eda0954829d5860cbcaa

Mainnet readiness blocker register commit: 322cde949b9ba3197755eda0954829d5860cbcaa

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

This document is a scan-rule planning artifact only.

## Purpose

This rule defines the mandatory no-secret scan boundary for future NST Core v0.5.2 apps, packages, protocol clients, config packages, governance gates, transaction rail components, infrastructure, tests, fixtures, generated files, logs, and documentation examples.

The purpose is to prevent private key, seed phrase, wallet recovery, signer, deployer, private RPC, API-token, and credential material from entering the repository or any generated package.

This rule does not create executable scan code.

This rule does not create app source.

This rule does not create package source.

This rule does not create infra source.

This rule does not create CI configuration.

This rule does not create deployment scripts.

## Current blocker

Executable app and package implementation is not approved yet.

No-secret executable scan is not implemented yet.

No-secret CI enforcement is not implemented yet.

Package test implementation is not complete.

Config package implementation plan is not complete.

Protocol client package implementation plan is not complete.

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

Public demo approval receipt is not complete.

Mainnet deployment remains blocked.

## Global no-secret rule

No private key belongs in this repository.

No seed phrase belongs in this repository.

No wallet recovery phrase belongs in this repository.

No deployer key belongs in this repository.

No wallet secret belongs in this repository.

No private RPC credential belongs in this repository.

No keystore password belongs in this repository.

No hardware wallet recovery information belongs in this repository.

No private signer material belongs in this repository.

No personal access token belongs in this repository.

No private API key belongs in this repository.

No bearer token belongs in this repository.

No production secret belongs in this repository.

No testnet secret belongs in this repository.

No secret may be added for convenience.

No secret may be added temporarily.

No secret may be added in a comment.

No secret may be added in a fixture.

No secret may be added in generated output.

No secret may be added in logs.

## Scan scope

The future no-secret scan must cover:

- apps;
- packages;
- infra;
- scripts;
- tests;
- test fixtures;
- configuration;
- generated configuration;
- generated ABI artifacts;
- generated address artifacts;
- build outputs if committed;
- documentation examples;
- environment examples;
- CI files;
- release artifacts;
- logs if committed;
- markdown files;
- JSON files;
- TypeScript files;
- JavaScript files;
- Solidity files;
- shell scripts;
- TOML files;
- lock files;
- package manifests.

## Required future scan paths

Future executable scan tooling must include these paths when they exist:

| Path | Scan required? | Notes |
| --- | --- | --- |
| apps/ | YES | Public, corporate, demo, First Nations, admin apps |
| packages/ | YES | Protocol clients, config, UI, transaction rail, governance gates |
| infra/ | YES | Hosting, deployment, CI, infrastructure |
| script/ | YES | Foundry/deployment scripts |
| scripts/ | YES | Shell/helper scripts if created |
| test/ | YES | Solidity tests |
| tests/ | YES | App/package tests if created |
| docs/ | YES | Documentation and examples |
| src/ | YES | Contract source |
| foundry.toml | YES | Build configuration |
| package.json | YES | Package manifest |
| package-lock.json | YES | Lock file |
| remappings.txt | YES | Foundry remappings |
| .github/ | YES | Future CI |
| .env.example | YES | Must contain placeholders only |

## Required secret categories

The future scan must detect and block:

- private keys;
- seed phrases;
- wallet recovery phrases;
- deployer keys;
- signer keys;
- wallet secrets;
- private RPC credentials;
- RPC URLs containing private credentials;
- keystore passwords;
- hardware wallet recovery information;
- personal access tokens;
- private API keys;
- bearer tokens;
- OAuth tokens;
- cloud provider access keys;
- SSH private keys;
- TLS private keys;
- database passwords;
- production environment secrets;
- testnet environment secrets;
- multisig signer secrets;
- custody secrets.

## Wallet secret rule

The repository must never ask a user to paste:

- a private key;
- a seed phrase;
- a recovery phrase;
- a keystore password;
- a hardware wallet recovery phrase;
- a wallet password;
- a deployer key;
- a signer key.

Future UI must not request these.

Future CLI tooling must not request these.

Future test fixtures must not contain these.

Future logs must not print these.

## RPC credential rule

Public RPC URLs may be documented only when they contain no credentials.

Private RPC credentials must be loaded only through secure local environment mechanisms outside the repository.

Future committed config must not include:

- private RPC URL with embedded credential;
- private RPC password;
- private RPC bearer token;
- private RPC project key;
- private RPC account secret.

Environment examples must use placeholders only.

## Environment file rule

The repository must not commit real environment files.

Allowed examples:

- .env.example with placeholders;
- docs explaining environment variable names;
- local-only instructions that never include values;
- CI variable names without values.

Disallowed:

- .env containing real values;
- .env.local containing real values;
- .env.production containing real values;
- copied terminal output showing secret values;
- screenshots or text containing secret values.

## Address and ABI rule

Public addresses are not secrets.

Public ABIs are not secrets.

However, public addresses and ABIs must still be evidence-backed.

No-secret scanning does not replace address evidence.

No-secret scanning does not replace ABI evidence.

No-secret scanning does not approve an address.

No-secret scanning does not approve an ABI.

No-secret scanning does not authorize deployment.

## False-positive handling rule

Future false-positive handling must be explicit.

False positives may be allowed only if:

- reviewed;
- documented;
- non-secret;
- scoped;
- committed as a receipt;
- not an actual credential;
- not a usable key;
- not a seed phrase;
- not a private token;
- not a deployer secret.

False-positive bypasses must not be silent.

False-positive bypasses must not be broad.

False-positive bypasses must not disable the scan globally.

## Placeholder rule

Placeholders must be clearly marked.

Allowed placeholder examples must use safe labels only, such as:

- PLACEHOLDER_ONLY;
- EXAMPLE_ONLY;
- TESTNET_PLACEHOLDER_ONLY;
- DO_NOT_USE;
- NOT_A_SECRET;
- SET_LOCALLY;
- PROVIDED_BY_SECURE_ENVIRONMENT.

Placeholders must not resemble real secrets.

Placeholders must not be usable credentials.

Placeholders must not be production values.

## Generated output rule

Future generated files must be scanned before commit.

Generated files include:

- generated config;
- generated ABI maps;
- generated address maps;
- generated client files;
- generated docs;
- generated type bindings;
- generated logs;
- generated reports;
- generated release evidence;
- generated JSON outputs.

Generated output containing secrets must not be committed.

Generated output containing private RPC credentials must not be committed.

Generated output containing private signer material must not be committed.

## Log safety rule

Future logs may include:

- public network name;
- public chain ID;
- public address;
- public contract label;
- public method label;
- non-secret error code;
- non-secret evidence status.

Future logs must not include:

- private keys;
- seed phrases;
- recovery phrases;
- wallet secrets;
- signer objects;
- private RPC credentials;
- bearer tokens;
- API keys;
- raw environment files;
- secret stack traces;
- authorization headers.

## CI requirement

Future CI must run no-secret scan before:

- package build;
- app build;
- package tests;
- UI tests;
- release artifact creation;
- public demo build;
- deployment candidate creation;
- mainnet candidate creation.

CI must fail closed if any secret is detected.

CI must fail closed if scan tooling fails.

CI must fail closed if scan configuration is missing.

CI must fail closed if scan scope excludes required paths.

CI must fail closed if a bypass file is unreviewed.

## Pre-commit requirement

Future development workflow should run no-secret scan before commit when executable source exists.

At minimum, future commits that modify any of the following should require no-secret review:

- apps;
- packages;
- infra;
- script;
- scripts;
- test;
- tests;
- src;
- config;
- generated artifacts;
- CI;
- environment examples.

## Scan evidence receipt

A future no-secret scan receipt should include:

| Field | Required? |
| --- | --- |
| Scan date UTC | YES |
| Branch | YES |
| Commit | YES |
| Scan command | YES |
| Scan tool or procedure | YES |
| Paths scanned | YES |
| Exclusions | YES |
| Findings count | YES |
| Findings review | YES |
| False-positive records | YES if any |
| Reviewer | YES |
| Result | PASS or FAIL |

## Required result states

Allowed scan result states:

| Status | Meaning |
| --- | --- |
| PASS | No secrets found and scan scope complete |
| FAIL | Secret or unreviewed finding detected |
| BLOCKED | Scan could not complete or scope incomplete |
| SUPERSEDED | Replaced by newer scan receipt |

Unknown result states are not allowed.

## Public demo blocker

A public Base Sepolia demo must remain blocked unless a current no-secret scan receipt exists for the demo build scope.

The no-secret scan receipt must cover:

- public site;
- Base Sepolia demo app;
- UI package;
- protocol client package;
- config package;
- generated public config;
- generated address/ABI artifacts;
- build output if committed;
- documentation shown publicly.

A demo approval receipt must not be completed without no-secret evidence.

## Mainnet blocker

Mainnet deployment must remain blocked unless a current no-secret scan receipt exists for mainnet release scope.

The no-secret scan receipt must cover:

- contract source;
- deployment scripts;
- config;
- protocol clients;
- transaction rail;
- governance gates;
- release artifacts;
- docs;
- generated files;
- CI;
- package lock files;
- environment examples.

A final human approval receipt must not be completed without no-secret evidence.

## Package gate dependency

Package gates must require no-secret review before executable package acceptance.

Affected package gates:

- protocol client package gate;
- config package gate;
- transaction rail package gate;
- governance gates package gate;
- UI package gate;
- application source tree scaffold gate.

## Read-only client dependency

Read-only client implementation must not proceed to executable code until:

- no-secret scan rule exists;
- package test strategy exists;
- config package plan exists;
- protocol client package plan exists;
- evidence-backed Base Sepolia address map exists;
- evidence-backed ABI inventory exists;
- future no-secret scan receipt process is defined.

## Transaction rail dependency

Transaction rail implementation must not proceed until:

- no-secret scan rule exists;
- transaction rail package tests exist;
- signer-handling rules exist;
- no private signer material is committed;
- no private RPC credential is committed;
- transaction broadcast remains blocked unless explicitly approved.

## Governance gates dependency

Governance gate implementation must not proceed until:

- no-secret scan rule exists;
- governance gate package tests exist;
- role ownership evidence is complete;
- no multisig signer secrets are committed;
- no governance private keys are committed;
- no emergency key material is committed.

## First Nations dependency

First Nations interface implementation must preserve:

- no private key request;
- no signer secret request;
- no seed phrase request;
- no recovery phrase request;
- no implied key-holder acceptance through repository secrets;
- no Treaty-law finalization without review.

## Corporate dependency

Corporate interface implementation must preserve:

- no API secret capture through public forms;
- no wallet secret capture;
- no operational credential capture;
- no production integration secret in repository;
- no private customer secret in examples.

## Manual review requirement

Automated scanning is required but not sufficient.

Human review must confirm:

- no secrets are present;
- placeholders are safe;
- environment examples are safe;
- generated artifacts are safe;
- logs are safe;
- docs do not contain copied secrets;
- screenshots are not committed with secrets;
- public examples cannot be mistaken for real credentials.

## Screenshot and image rule

No screenshots containing secret values may be committed.

No screenshots containing private keys may be committed.

No screenshots containing seed phrases may be committed.

No screenshots containing wallet recovery phrases may be committed.

No screenshots containing private RPC credentials may be committed.

No screenshots containing admin tokens may be committed.

If a screenshot is needed, it must be reviewed and sanitized.

## Dependency audit relationship

No-secret scanning does not replace dependency audit.

Dependency audit does not replace no-secret scanning.

Both are separate controls.

A dependency warning does not authorize secrets.

A no-secret pass does not authorize vulnerable dependencies.

## Fail-closed rule

If the scan cannot run, the result is BLOCKED.

If scan scope is incomplete, the result is BLOCKED.

If findings cannot be reviewed, the result is BLOCKED.

If a possible secret cannot be proven safe, the result is FAIL or BLOCKED.

If a bypass is unclear, the result is BLOCKED.

## No-go conditions

Do not implement executable no-secret scan tooling from this rule alone unless a future implementation gate authorizes it.

Do not implement executable app code from this rule alone.

Do not implement executable package code from this rule alone.

Do not launch a public Base Sepolia demo from this rule.

Do not launch a production interface from this rule.

Do not launch a mainnet interface from this rule.

Do not treat a no-secret scan pass as deployment authorization.

Do not treat a no-secret scan pass as public demo approval.

Do not treat a no-secret scan pass as mainnet approval.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not embed wallet secrets.

Do not embed private RPC credentials.

## Secret exclusion checklist

This rule must contain none of the following usable secret material:

| Secret type | Present? | Status |
| --- | --- | --- |
| Private key value | NO | REQUIRED |
| Seed phrase value | NO | REQUIRED |
| Wallet recovery phrase value | NO | REQUIRED |
| Deployer key value | NO | REQUIRED |
| Wallet secret value | NO | REQUIRED |
| Private RPC credential value | NO | REQUIRED |
| Keystore password value | NO | REQUIRED |
| Hardware wallet recovery value | NO | REQUIRED |
| Private signer material value | NO | REQUIRED |
| Personal access token value | NO | REQUIRED |
| Private API key value | NO | REQUIRED |

## Acceptance criteria

This rule is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states scans do not authorize deployment;
- it states scans do not authorize public demo launch;
- it states scans do not authorize mainnet approval;
- it defines scan scope;
- it defines required secret categories;
- it defines environment-file rules;
- it defines generated-output rules;
- it defines log-safety rules;
- it defines CI requirements;
- it defines pre-commit expectations;
- it defines scan evidence receipt requirements;
- it defines public demo blocker relationship;
- it defines mainnet blocker relationship;
- it defines fail-closed behavior;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 config package implementation plan reference

Reference document: docs/plans/V0_5_2_CONFIG_PACKAGE_IMPLEMENTATION_PLAN.md

Reference commit: 4f7fad4b838bab2452da5bd257fe14cf7bcd9ea2

Reference captured UTC: 2026-10-08T08:44:33Z

Reference target: no-secret package scan rule

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

Reference target: no-secret package scan rule

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

Reference target: no-secret package scan rule

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

Reference target: no-secret package scan rule

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

## v0.5.2 Base Sepolia address evidence response review checklist reference

Reference document: docs/checklists/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

Reference commit: 281809dac7f87cad3d05f27a18aa97f776c2262d

Reference captured UTC: 2026-10-08T21:40:15Z

Reference target: no-secret package scan rule

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

This reference does not approve any Base Sepolia ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address evidence response review checklist exists as a controlled response-review gate artifact.

No Base Sepolia address evidence response is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia address evidence response review checklist existence must not be treated as deployment authorization.

Base Sepolia address evidence response review checklist existence must not be treated as public demo approval.

Base Sepolia address evidence response review checklist existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Review any Base Sepolia address evidence response against the checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, or Base mainnet address evidence.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not use the checklist as deployment authorization.
- Do not use the checklist as public demo approval.
- Do not use the checklist as mainnet approval.
- Do not use the checklist as production address approval.
- Do not use the checklist as production ABI approval.
- Do not use the checklist as treasury approval.
- Do not use the checklist as governance approval.
- Do not imply this reference authorizes deployment.
