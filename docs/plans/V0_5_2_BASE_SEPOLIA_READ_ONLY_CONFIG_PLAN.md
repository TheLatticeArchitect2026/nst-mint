# NST Core v0.5.2 Base Sepolia Read-Only Config Plan

Status: DRAFT PLAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-08T20:49:18Z
Current commit at creation: 649846f09deecfec9ec5bd16e5f2340e2c5c759d

Config package implementation plan commit: 649846f09deecfec9ec5bd16e5f2340e2c5c759d

Protocol client package implementation plan commit: d22b210151c1ca214154735eaedcec58675e6953

No-secret package scan rule commit: 649846f09deecfec9ec5bd16e5f2340e2c5c759d

Package test strategy commit: 649846f09deecfec9ec5bd16e5f2340e2c5c759d

Read-only client implementation plan commit: 649846f09deecfec9ec5bd16e5f2340e2c5c759d

Base Sepolia address map commit: 649846f09deecfec9ec5bd16e5f2340e2c5c759d

Base Sepolia ABI inventory receipt commit: 649846f09deecfec9ec5bd16e5f2340e2c5c759d

Base Sepolia public demo warning language receipt commit: 649846f09deecfec9ec5bd16e5f2340e2c5c759d

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize public Base Sepolia demo launch by itself.

This document does not approve executable config source.

This document does not approve generated config.

This document does not approve executable protocol client source.

This document does not approve executable app source.

This document does not approve executable package source.

This document does not approve executable infra source.

This document does not approve any production address.

This document does not approve any production ABI.

This document does not approve any production governance object.

This document does not approve any production treasury route.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize production governance gates.

This document does not authorize any public mainnet mint interface.

This document is a planning artifact only.

## Purpose

This plan defines the future Base Sepolia read-only config boundary for NST Core v0.5.2.

The future Base Sepolia read-only config will be the first controlled non-secret config target for protocol clients.

The config must be testnet-only.

The config must be read-only.

The config must be evidence-backed.

The config must be checksum-backed.

The config must be no-secret.

The config must be fail-closed.

The config must not authorize public demo launch by itself.

The config must not authorize mainnet deployment.

This plan does not create generated config.

This plan does not create executable config package source.

This plan does not create executable protocol client source.

This plan does not create application source.

## Current blocker

Base Sepolia read-only generated config is not approved yet.

Executable config package source does not exist yet.

Executable protocol client source does not exist yet.

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

Base Sepolia explorer/source verification receipts are not complete.

No-secret executable scan tooling is not complete.

Base Sepolia public demo approval receipt is not complete.

Mainnet deployment remains blocked.

## Config status

Current status: DRAFT PLAN ONLY

Allowed current use:

- planning;
- review;
- readiness gating;
- future package design reference.

Not allowed current use:

- executable config generation;
- public demo launch;
- production interface launch;
- mainnet deployment;
- transaction broadcast;
- governance writes;
- treasury writes;
- wallet signing;
- real-fund use.

## Base Sepolia read-only config objective

The future config should support only safe read-only access to Base Sepolia contracts after evidence is complete.

The future config should identify:

- network;
- chain ID;
- environment;
- contract labels;
- public addresses;
- address evidence records;
- address checksum receipts;
- ABI evidence records;
- ABI checksum receipts;
- read allowlist;
- write blocklist;
- feature flags;
- warning language references;
- status values.

The future config must not identify:

- private keys;
- seed phrases;
- recovery phrases;
- wallet secrets;
- signer secrets;
- deployer keys;
- private RPC credentials;
- production treasury secrets;
- governance private signing material.

## Required future config mode

Future mode name:

base-sepolia-readonly

Required mode properties:

| Property | Required value |
| --- | --- |
| network | Base Sepolia |
| chainId | 84532 |
| isTestnet | true |
| isProduction | false |
| isDemo | false unless separate demo approval exists |
| readAllowed | true only after evidence complete |
| writeAllowed | false |
| transactionBroadcastAllowed | false |
| governanceWritesAllowed | false |
| treasuryWritesAllowed | false |
| publicDemoAllowed | false unless completed demo approval exists |
| mainnetAllowed | false |
| failClosed | true |

Unknown or missing values must fail.

## Future config object shape

Future generated config should follow this shape conceptually:

| Field | Required? | Notes |
| --- | --- | --- |
| version | YES | Config schema version |
| phase | YES | v0.5.2 mainnet readiness |
| environment | YES | base-sepolia-readonly |
| network | YES | Base Sepolia |
| chainId | YES | 84532 |
| isTestnet | YES | true |
| isProduction | YES | false |
| isDemo | YES | false unless separately approved |
| generatedAtUtc | YES | Generation timestamp |
| generatedFromCommit | YES | Git commit |
| addressMapPath | YES | Evidence source |
| addressMapCommit | YES | Evidence source commit |
| abiInventoryPath | YES | Evidence source |
| abiInventoryCommit | YES | Evidence source commit |
| warningLanguagePath | YES if demo surfaces use it | Warning evidence |
| contracts | YES | Contract rows |
| featureFlags | YES | Fail-closed flags |
| status | YES | DRAFT, BLOCKED, TESTNET_READONLY_READY |

This shape is not executable source.

This shape is not approved config.

## Future contract config row

Each future contract row must include:

| Field | Required? |
| --- | --- |
| label | YES |
| network | YES |
| chainId | YES |
| address | YES |
| addressEvidencePath | YES |
| addressEvidenceCommit | YES |
| addressChecksumReceiptPath | YES |
| addressChecksumReceiptCommit | YES |
| abiEvidencePath | YES |
| abiEvidenceCommit | YES |
| abiChecksumReceiptPath | YES |
| abiChecksumReceiptCommit | YES |
| explorerVerificationPath | YES where applicable |
| readAllowed | YES |
| writeAllowed | YES and must be false |
| publicDemoAllowed | YES |
| productionAllowed | YES and must be false |
| status | YES |

Rows with TBD values must fail.

Rows with OPEN evidence must fail.

Rows with BLOCKED evidence must fail.

Rows with REJECTED evidence must fail.

Rows with SUPERSEDED evidence must fail unless replacement is explicit.

## Planned Base Sepolia contract labels

The future config may eventually include these labels only after evidence is complete:

| Label | Current status |
| --- | --- |
| NSTSBT | BLOCKED pending evidence |
| CFT | BLOCKED pending evidence |
| TreasuryRouter | BLOCKED pending evidence |
| ShieldRegistry | BLOCKED pending evidence |
| VaultRegistry | BLOCKED pending evidence |
| YieldPool | BLOCKED pending evidence |
| RewardEscrow | BLOCKED pending evidence |
| ClaimOrCredentialModule | BLOCKED pending evidence |
| PublicDemoInterfaceConfig | BLOCKED pending evidence |

This table does not approve any address.

This table does not approve any ABI.

## Address evidence dependency

Future Base Sepolia read-only config must not include any address unless:

- address appears in Base Sepolia address map;
- address evidence record exists;
- address checksum receipt exists;
- address evidence status permits read-only use;
- address checksum status permits read-only use;
- address network is Base Sepolia;
- address chain ID is 84532;
- address is not placeholder;
- address is not TBD;
- address is not local Anvil;
- address is not Base mainnet;
- address is not screenshot-derived;
- address is not chat-derived;
- address is not memory-derived.

## ABI evidence dependency

Future Base Sepolia read-only config must not include any ABI unless:

- ABI inventory exists;
- ABI evidence record exists;
- ABI checksum receipt exists;
- ABI evidence status permits read-only use;
- ABI checksum status permits read-only use;
- ABI network is Base Sepolia or clearly contract-source scoped for Base Sepolia use;
- ABI belongs to expected contract label;
- ABI is not screenshot-derived;
- ABI is not chat-derived;
- ABI is not memory-derived;
- ABI is not manually edited without receipt.

## Checksum dependency

Future Base Sepolia read-only config must verify:

- address checksum;
- ABI checksum;
- source commit checksum where applicable;
- generated config checksum where applicable;
- evidence receipt references.

Checksum mismatch must fail.

Missing checksum must fail.

Unknown checksum method must fail.

Checksum confirmation does not authorize deployment.

Checksum confirmation does not authorize production use.

## Feature flags

Future Base Sepolia read-only config must include fail-closed feature flags.

| Flag | Required default |
| --- | --- |
| enableReadOnlyStatus | false until evidence complete |
| enablePublicDemo | false |
| enableWalletConnection | false |
| enableWriteMethods | false |
| enableTransactionBroadcast | false |
| enableMainnet | false |
| enableProductionTreasury | false |
| enableGovernanceWrites | false |
| enableFirstNationsProduction | false |
| enableCorporateProduction | false |
| emergencyDisable | true |
| failClosed | true |

Missing flags must be treated as false or blocked.

No flag may silently default to enabled.

## Read allowlist

Future config may allow only approved read categories.

Potential read categories:

- contract name;
- symbol;
- decimals where applicable;
- totalSupply where safe;
- tokenURI where safe;
- ownerOf where safe;
- balanceOf where safe;
- locked status where safe;
- paused state where safe;
- role membership where safe;
- registry state where safe;
- treasury route view where safe;
- public constants where safe.

The read allowlist must be contract-specific.

The read allowlist must not expose writes.

The read allowlist must not imply public demo approval.

## Write blocklist

Future config must block:

- mint;
- transfer;
- approve;
- setApprovalForAll;
- pause;
- unpause;
- grantRole;
- revokeRole;
- set metadata;
- freeze metadata;
- set registry;
- set treasury;
- set router;
- propose config;
- apply config;
- process pending yield;
- sweep;
- rescue;
- any payable method;
- any nonpayable state-changing method;
- transaction broadcast;
- governance writes;
- treasury writes.

Write methods must remain blocked even on Base Sepolia unless separately approved.

## RPC rule

Future config may reference an RPC environment variable name.

Future config must not include private RPC credential values.

Allowed:

- BASE_SEPOLIA_RPC_URL_ENV_NAME;
- SET_LOCALLY;
- PROVIDED_BY_SECURE_ENVIRONMENT;
- PUBLIC_RPC_PLACEHOLDER_ONLY.

Disallowed:

- actual private RPC URL with key;
- bearer token;
- API key;
- username/password;
- private endpoint credential.

Missing RPC URL must fail closed at runtime.

Wrong chain ID from RPC must fail closed.

## Demo boundary

Base Sepolia read-only config does not authorize public demo launch.

Public demo launch requires:

- warning language implemented;
- visible network badge;
- address evidence complete;
- ABI evidence complete;
- checksum receipts complete;
- no-secret scan receipt complete;
- package tests complete;
- UI review complete;
- completed public demo approval receipt.

The approval receipt template alone is not approval.

The warning receipt alone is not approval.

The config plan alone is not approval.

## Mainnet boundary

Base Sepolia read-only config must not be reused for Base mainnet.

Base Sepolia addresses must not become Base mainnet addresses.

Base Sepolia ABIs must not be treated as final mainnet ABI evidence.

Base Sepolia config must not become production config.

Mainnet config requires separate production address evidence, ABI evidence, checksum receipts, release evidence, and final human approval.

## First Nations boundary

Base Sepolia read-only config must not activate First Nations production participation.

Base Sepolia read-only config must not activate First Nations revenue routes.

Base Sepolia read-only config must not activate First Nations governance.

Base Sepolia read-only config must not appoint any key holder.

Base Sepolia read-only config must not imply Treaty-law approval.

First Nations production language and configuration require specialized Treaty-law review.

## Corporate boundary

Base Sepolia read-only config must not activate corporate production integration.

Base Sepolia read-only config must not create enterprise commitments.

Base Sepolia read-only config must not create paid service obligations.

Base Sepolia read-only config must not authorize operational reliance.

Base Sepolia read-only config must not imply investment solicitation.

## Emergency disable boundary

Future config must include emergency disable behavior.

Emergency disable should block:

- public demo display;
- wallet connection;
- read-only calls if needed;
- write methods;
- transaction broadcast;
- governance actions;
- treasury actions;
- production-like claims.

Emergency disable must fail closed.

Emergency disable must not require committed secrets.

## Drift detection

Future Base Sepolia read-only config must detect drift from:

- address map commit;
- ABI inventory commit;
- address evidence commits;
- address checksum commits;
- ABI evidence commits;
- ABI checksum commits;
- warning language commit;
- config package implementation plan commit;
- protocol client package implementation plan commit.

If drift is detected, config must require review.

Drift must not silently pass.

## Validation tests

Future tests must prove:

- missing config fails;
- unknown mode fails;
- wrong chain ID fails;
- wrong network fails;
- missing address map fails;
- missing address evidence fails;
- missing address checksum receipt fails;
- missing ABI inventory fails;
- missing ABI evidence fails;
- missing ABI checksum receipt fails;
- checksum mismatch fails;
- Base Sepolia config cannot run as mainnet;
- mainnet config cannot run as Base Sepolia;
- write flags default false;
- transaction broadcast defaults false;
- governance writes default false;
- production treasury defaults false;
- demo mode fails without demo approval;
- private key values fail;
- seed phrase values fail;
- private RPC credential values fail.

## Implementation sequence

Future sequence should be:

1. Complete this plan.
2. Reference this plan in readiness gates.
3. Complete Base Sepolia address evidence records.
4. Complete Base Sepolia address checksum receipts.
5. Complete Base Sepolia ABI evidence records.
6. Complete Base Sepolia ABI checksum receipts.
7. Complete explorer/source verification receipts where applicable.
8. Create config evidence bundle.
9. Create generated config only after gates authorize it.
10. Implement config package source only after package gates authorize executable code.
11. Implement protocol client package source only after package gates authorize executable code.
12. Run package tests.
13. Run no-secret scan.
14. Keep public demo blocked until approval receipt is complete.

## Required files before generated config

Before generated Base Sepolia read-only config may exist, the project should have:

- this Base Sepolia read-only config plan;
- config package implementation plan;
- protocol client package implementation plan;
- package test strategy;
- no-secret package scan rule;
- Base Sepolia address evidence records;
- Base Sepolia address checksum receipts;
- Base Sepolia ABI evidence records;
- Base Sepolia ABI checksum receipts;
- config package gate approval;
- protocol client package gate approval;
- no-secret scan receipt process.

## No-go conditions

Do not create generated config from this plan alone.

Do not implement executable config package source from this plan alone.

Do not implement executable protocol client package source from this plan alone.

Do not launch a public Base Sepolia demo from this plan.

Do not launch a production interface from this plan.

Do not launch a mainnet interface from this plan.

Do not expose write methods from this plan.

Do not enable transaction broadcast from this plan.

Do not enable governance writes from this plan.

Do not enable production treasury routes from this plan.

Do not treat Base Sepolia read-only config existence as deployment authorization.

Do not treat Base Sepolia read-only config existence as public demo approval.

Do not treat Base Sepolia read-only config existence as mainnet approval.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not embed wallet secrets.

Do not embed private RPC credentials.

## Secret exclusion checklist

This plan must contain none of the following usable secret material:

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

This plan is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states Base Sepolia read-only config does not authorize deployment;
- it states Base Sepolia read-only config does not authorize public demo launch;
- it states Base Sepolia read-only config does not authorize mainnet approval;
- it defines future config mode;
- it defines future config object shape;
- it defines contract config row shape;
- it defines address evidence dependency;
- it defines ABI evidence dependency;
- it defines checksum dependency;
- it defines feature flags;
- it defines read allowlist;
- it defines write blocklist;
- it defines RPC rule;
- it defines demo boundary;
- it defines mainnet boundary;
- it defines First Nations boundary;
- it defines corporate boundary;
- it defines emergency disable boundary;
- it defines drift detection;
- it defines validation tests;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Base Sepolia address evidence request packet reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_REQUEST_PACKET.md

Reference commit: 35fc42e2b0ceee421522f9c1da24d6d692387576

Reference captured UTC: 2026-10-08T21:20:35Z

Reference target: Base Sepolia read-only config plan

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

Reference target: Base Sepolia read-only config plan

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
