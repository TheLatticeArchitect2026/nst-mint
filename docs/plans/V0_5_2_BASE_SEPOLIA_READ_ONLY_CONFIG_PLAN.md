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

## v0.5.2 Base Sepolia ABI evidence request packet reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_REQUEST_PACKET.md

Reference commit: 40896fc74b347526b6dfb70f60637c36b6ae39d3

Reference captured UTC: 2026-10-10T08:19:46Z

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

This reference records that the Base Sepolia ABI evidence request packet exists as a controlled public-evidence request artifact.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No Base Sepolia method allowlist is approved by this reference alone.

No Base Sepolia write method is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia ABI evidence request packet existence must not be treated as deployment authorization.

Base Sepolia ABI evidence request packet existence must not be treated as public demo approval.

Base Sepolia ABI evidence request packet existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete Base Sepolia ABI evidence response review checklist.
- Review any Base Sepolia ABI evidence response against the review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, manually edited without receipt, or uncommitted ABI evidence.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Complete Base Sepolia address evidence records and checksum receipts.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Create executable protocol client package source only after package gates authorize implementation.
- Keep write methods blocked by default.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not complete the ABI evidence request with guessed ABIs.
- Do not complete the ABI evidence request with placeholder ABIs.
- Do not complete the ABI evidence request with screenshot-only evidence.
- Do not complete the ABI evidence request with chat-only evidence.
- Do not complete the ABI evidence request with memory-only evidence.
- Do not use manually edited ABIs without receipt.
- Do not use local uncommitted ABI artifacts.
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
- Do not use the request packet as production ABI approval.
- Do not use the request packet as production address approval.
- Do not use the request packet as treasury approval.
- Do not use the request packet as governance approval.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI evidence response review checklist reference

Reference document: docs/checklists/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

Reference commit: 16761b446bc75736dff3e27685fbf82095efb586

Reference captured UTC: 2026-10-10T09:16:06Z

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

This reference does not approve any Base Sepolia write method.

This reference does not approve any Base Sepolia read allowlist by itself.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia ABI evidence response review checklist exists as a controlled response-review gate artifact.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No Base Sepolia method classification is approved by this reference alone.

No Base Sepolia method allowlist is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia ABI evidence response review checklist existence must not be treated as deployment authorization.

Base Sepolia ABI evidence response review checklist existence must not be treated as public demo approval.

Base Sepolia ABI evidence response review checklist existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Review any Base Sepolia ABI evidence response against the checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, manually edited without receipt, or local uncommitted ABI evidence.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Complete Base Sepolia method classification only after ABI evidence review allows drafting.
- Keep write methods blocked by default.
- Complete Base Sepolia address evidence records and checksum receipts.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept memory-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not use local uncommitted ABI artifacts.
- Do not approve write methods from ABI presence.
- Do not approve transaction broadcast from ABI presence.
- Do not use Base Sepolia ABI as mainnet ABI approval.
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
- Do not use the checklist as production ABI approval.
- Do not use the checklist as production address approval.
- Do not use the checklist as treasury approval.
- Do not use the checklist as governance approval.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia evidence candidate scan receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_EVIDENCE_CANDIDATE_SCAN_RECEIPT.md

Reference commit: b2e023cb1fd4fca84da3dbabe675983787c243ae

Reference captured UTC: 2026-10-11T14:56:58Z

Reference target: Base Sepolia read-only config plan

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

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

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that a read-only Base Sepolia evidence candidate scan receipt exists.

No candidate scan hit is approved by this reference alone.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No candidate file path is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia evidence candidate scan receipt existence must not be treated as deployment authorization.

Base Sepolia evidence candidate scan receipt existence must not be treated as public demo approval.

Base Sepolia evidence candidate scan receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Do not treat scan hits as evidence.
- Review any future Base Sepolia address evidence response against the address evidence response review checklist.
- Review any future Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, Base mainnet, or manually edited evidence without receipt.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat scan hits as evidence.
- Do not treat scan hits as approved addresses.
- Do not treat scan hits as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw scan hits in protocol clients.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia evidence gap register reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_EVIDENCE_GAP_REGISTER.md

Reference commit: 31988caa283d5758dbaeb53cd8fbee77ecd07561

Reference captured UTC: 2026-10-11T15:08:20Z

Reference target: Base Sepolia read-only config plan

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

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

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia evidence gap register exists as the current gap-control artifact.

No Base Sepolia evidence gap is closed by this reference alone.

No candidate scan hit is approved by this reference alone.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia evidence gap register existence must not be treated as deployment authorization.

Base Sepolia evidence gap register existence must not be treated as public demo approval.

Base Sepolia evidence gap register existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Resolve Base Sepolia address evidence response gap.
- Resolve Base Sepolia ABI evidence response gap.
- Draft and review Base Sepolia address evidence records only after response review allows drafting.
- Draft and review Base Sepolia address checksum receipts only after response review allows drafting.
- Draft and review Base Sepolia ABI evidence records only after response review allows drafting.
- Draft and review Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Complete method classification.
- Complete read allowlist review.
- Complete write blocklist confirmation.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep protocol-client implementation blocked until package gates authorize implementation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat scan hits as evidence.
- Do not treat scan hits as approved addresses.
- Do not treat scan hits as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw scan hits in protocol clients.
- Do not use the gap register as deployment authorization.
- Do not use the gap register as public demo approval.
- Do not use the gap register as mainnet approval.
- Do not use the gap register as production address approval.
- Do not use the gap register as production ABI approval.
- Do not use the gap register as treasury approval.
- Do not use the gap register as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia source-of-truth locator receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_SOURCE_OF_TRUTH_LOCATOR_RECEIPT.md

Reference commit: ab8e27ddcb82c3c3540c27a690ef6b2ff5cb3f65

Reference captured UTC: 2026-10-11T15:30:04Z

Reference target: Base Sepolia read-only config plan

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

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

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that a read-only Base Sepolia source-of-truth locator receipt exists.

No source-of-truth locator hit is approved by this reference alone.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No candidate source file is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia source-of-truth locator receipt existence must not be treated as deployment authorization.

Base Sepolia source-of-truth locator receipt existence must not be treated as public demo approval.

Base Sepolia source-of-truth locator receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Do not treat source-of-truth locator hits as evidence.
- Review any future Base Sepolia address evidence response against the address evidence response review checklist.
- Review any future Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, Base mainnet, or manually edited evidence without receipt.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Complete source-of-truth review before generated config.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat source-of-truth locator hits as evidence.
- Do not treat source-of-truth locator hits as approved addresses.
- Do not treat source-of-truth locator hits as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw locator hits in protocol clients.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia deployment inventory read-only inspection receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_READ_ONLY_INSPECTION_RECEIPT.md

Reference commit: 075ca65054153985aee42b0a8ff0ee1ef6ad9d5e

Reference captured UTC: 2026-10-11T16:14:37Z

Reference target: Base Sepolia read-only config plan

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

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

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia deployment inventory was inspected as a read-only candidate source.

No inspected source line is approved by this reference alone.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia deployment inventory inspection receipt existence must not be treated as deployment authorization.

Base Sepolia deployment inventory inspection receipt existence must not be treated as public demo approval.

Base Sepolia deployment inventory inspection receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Do not treat inspected source lines as approved evidence.
- Review any future Base Sepolia address evidence response against the address evidence response review checklist.
- Review any future Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, Base mainnet, or manually edited evidence without receipt.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Complete source-of-truth review before generated config.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat inspected source lines as approved evidence.
- Do not treat inspected source lines as approved addresses.
- Do not treat inspected source lines as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw inspected source lines in protocol clients.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia deployment inventory source-of-truth review checklist reference

Reference document: docs/checklists/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_SOURCE_OF_TRUTH_REVIEW_CHECKLIST.md

Reference commit: c312ae18bfaf49e34f9d36662c84b5cdd2cb9514

Reference captured UTC: 2026-10-11T16:25:39Z

Reference target: Base Sepolia read-only config plan

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

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

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia deployment inventory source-of-truth review checklist exists as a review gate.

No inspected source line is approved by this reference alone.

No source-of-truth candidate is approved by this reference alone.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No Base Sepolia address evidence response is approved by this reference alone.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia deployment inventory source-of-truth review checklist existence must not be treated as deployment authorization.

Base Sepolia deployment inventory source-of-truth review checklist existence must not be treated as public demo approval.

Base Sepolia deployment inventory source-of-truth review checklist existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete source-of-truth review before drafting address evidence responses.
- Complete source-of-truth review before drafting ABI evidence responses.
- Do not treat inspected source lines as approved evidence.
- Review any future Base Sepolia address evidence response against the address evidence response review checklist.
- Review any future Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, Base mainnet, or manually edited evidence without receipt.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat inspected source lines as approved evidence.
- Do not treat inspected source lines as approved addresses.
- Do not treat inspected source lines as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw inspected source lines in protocol clients.
- Do not use this checklist as deployment authorization.
- Do not use this checklist as public demo approval.
- Do not use this checklist as mainnet approval.
- Do not use this checklist as production address approval.
- Do not use this checklist as production ABI approval.
- Do not use this checklist as treasury approval.
- Do not use this checklist as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia deployment inventory source-of-truth review receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_SOURCE_OF_TRUTH_REVIEW_RECEIPT.md

Reference commit: 177590ef7e3a192bf423bfa1f10c95f6f718a253

Reference captured UTC: 2026-10-11T17:07:41Z

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

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

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia deployment inventory source-of-truth review receipt exists.

No source-of-truth review receipt result is evidence approval by itself.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No Base Sepolia address evidence response is approved by this reference alone.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia deployment inventory source-of-truth review receipt existence must not be treated as deployment authorization.

Base Sepolia deployment inventory source-of-truth review receipt existence must not be treated as public demo approval.

Base Sepolia deployment inventory source-of-truth review receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Draft Base Sepolia address evidence response only from approved source-review boundaries.
- Draft Base Sepolia ABI evidence response only from approved source-review boundaries.
- Review any Base Sepolia address evidence response against the address evidence response review checklist.
- Review any Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Complete address evidence records only after response review allows drafting.
- Complete address checksum receipts only after response review allows drafting.
- Complete ABI evidence records only after response review allows drafting.
- Complete ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat inspected source lines as approved evidence.
- Do not treat inspected source lines as approved addresses.
- Do not treat inspected source lines as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw inspected source lines in protocol clients.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address evidence response review receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Reference commit: f6acfe1a7e4fb09d9bc9957bddd1b40e4d6643d0

Reference captured UTC: 2026-10-11T17:36:44Z

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address for use.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address evidence response review receipt exists.

No reviewed candidate ID is approved for generated config by this reference alone.

No reviewed candidate ID is approved for protocol clients by this reference alone.

No reviewed candidate ID is approved for public demo by this reference alone.

No reviewed candidate ID is approved for mainnet by this reference alone.

No raw candidate address is repeated in this reference.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia address evidence response review receipt existence must not be treated as deployment authorization.

Base Sepolia address evidence response review receipt existence must not be treated as public demo approval.

Base Sepolia address evidence response review receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Use only approved candidate IDs from the review receipt for address evidence record drafting.
- Draft Base Sepolia address evidence records only after the review receipt allows drafting.
- Draft Base Sepolia address checksum receipts only after address evidence records exist.
- Do not move reviewed candidate IDs directly into generated config.
- Do not move reviewed candidate IDs directly into protocol clients.
- Do not move reviewed candidate IDs directly into public demo source.
- Do not move reviewed candidate IDs into mainnet artifacts.
- Complete explorer/source verification receipts where applicable.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat this receipt as approved address evidence.
- Do not treat this receipt as a checksum receipt.
- Do not use reviewed candidate IDs in generated config.
- Do not use reviewed candidate IDs in protocol clients.
- Do not use reviewed candidate IDs in public demo source.
- Do not use reviewed candidate IDs for mainnet.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
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
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address checksum receipts reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_CHECKSUM_RECEIPTS.md

Reference commit: bae5ee0b499d6f3db93cb941da37bbcabc40ffde

Reference captured UTC: 2026-10-11T20:22:16Z

Network: Base Sepolia

Chain ID: 84532

Checksum method: EIP-55 via Foundry cast

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address for use outside evidence processing.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that Base Sepolia address checksum receipts exist and were remotely confirmed.

Address checksum receipt existence must not be treated as generated config approval.

Address checksum receipt existence must not be treated as protocol client approval.

Address checksum receipt existence must not be treated as public demo approval.

Address checksum receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete ABI evidence response review.
- Complete ABI evidence records.
- Complete ABI checksum receipts.
- Complete explorer/source verification receipts where applicable.
- Complete method classification.
- Complete read allowlist.
- Complete write blocklist.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep protocol client implementation blocked until generated config and ABI gates are complete.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not use these checksum receipts alone in generated config.
- Do not use these checksum receipts alone in protocol clients.
- Do not use these checksum receipts alone in public demo source.
- Do not use these checksum receipts for mainnet.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not use this reference as production address approval.
- Do not use this reference as production ABI approval.
- Do not use this reference as treasury approval.
- Do not use this reference as governance approval.
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
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI checksum receipts reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_CHECKSUM_RECEIPTS.md

Reference commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

Reference captured UTC: 2026-10-12T10:22:01Z

Network: Base Sepolia

Chain ID: 84532

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI for use outside evidence processing.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that Base Sepolia ABI checksum receipts exist and were remotely confirmed.

ABI checksum receipt existence must not be treated as generated config approval.

ABI checksum receipt existence must not be treated as protocol client approval.

ABI checksum receipt existence must not be treated as method classification approval.

ABI checksum receipt existence must not be treated as read allowlist approval.

ABI checksum receipt existence must not be treated as write blocklist approval.

ABI checksum receipt existence must not be treated as public demo approval.

ABI checksum receipt existence must not be treated as mainnet approval.

Raw ABI JSON was not copied into the checksum receipt file.

Temporary Forge artifacts were not committed.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete method classification.
- Complete read allowlist.
- Complete write blocklist.
- Complete explorer/source verification receipts where applicable.
- Complete config package gate review.
- Keep generated Base Sepolia read-only config blocked until method classification, read allowlist, write blocklist, and package gates authorize generation.
- Keep protocol client implementation blocked until generated config and protocol client gates are complete.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not use ABI checksum receipts as method classification.
- Do not use ABI checksum receipts as a read allowlist.
- Do not use ABI checksum receipts as a write blocklist.
- Do not use ABI checksum receipts alone in generated config.
- Do not use ABI checksum receipts alone in protocol clients.
- Do not use ABI checksum receipts alone in public demo source.
- Do not use ABI checksum receipts for mainnet.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not use this reference as production ABI approval.
- Do not use this reference as treasury approval.
- Do not use this reference as governance approval.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept memory-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia method-control reference

Method classification reference: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_METHOD_CLASSIFICATION.md

Method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist reference: docs/audits/V0_5_2_BASE_SEPOLIA_READ_METHOD_ALLOWLIST.md

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist reference: docs/audits/V0_5_2_BASE_SEPOLIA_WRITE_METHOD_BLOCKLIST.md

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

ABI checksum receipts commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

Address checksum receipts commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Reference captured UTC: 2026-10-12T13:38:24Z

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Method-control status:

- ABI method classification complete with safety override.
- Read method allowlist complete.
- Write method blocklist complete.
- Approval signature and approval selector are excluded from the read allowlist.
- Approval signature and approval selector are retained in the write blocklist.
- Write-like methods are excluded from generated read-only config.
- Write methods are excluded from public demo execution.
- Write methods are excluded from transaction rail execution.
- Write methods are excluded from governance writes.
- Write methods are excluded from treasury routes.
- Write methods are excluded from mainnet.

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

Generated Base Sepolia read-only config remains blocked until:

- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied;
- generated config candidate is produced and reviewed.

Protocol client implementation remains blocked until:

- generated Base Sepolia read-only config is approved;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

Public Base Sepolia demo remains blocked until:

- generated read-only config is approved;
- protocol client gate is complete;
- public warning language is implemented;
- network badge is visible;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

Mainnet remains blocked.

No Base Sepolia address, ABI, read method, write method, read-only config, or public demo may be promoted to mainnet.

No-go conditions preserved:

- Do not use method classification alone as generated config.
- Do not use read allowlist alone as generated config.
- Do not use write blocklist alone as generated config.
- Do not include write methods in generated read-only config.
- Do not execute write methods.
- Do not allow write methods in public demo.
- Do not allow write methods in transaction rail.
- Do not allow write methods in governance routes.
- Do not allow write methods in treasury routes.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
