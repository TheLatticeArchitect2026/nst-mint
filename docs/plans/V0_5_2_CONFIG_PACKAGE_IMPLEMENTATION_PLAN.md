# NST Core v0.5.2 Config Package Implementation Plan

Status: DRAFT PLAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-08T08:25:36Z
Current commit at creation: 3fc5ab71eed231b1686de11d0cf2a58dc78dfbd7

No-secret package scan rule commit: 77c5de04cc86e509269024407e2d007b3fd7bd83

Package test strategy commit: 3fc5ab71eed231b1686de11d0cf2a58dc78dfbd7

Read-only client implementation plan commit: 3fc5ab71eed231b1686de11d0cf2a58dc78dfbd7

Config package gate checklist commit: 3fc5ab71eed231b1686de11d0cf2a58dc78dfbd7

Base Sepolia address map commit: 3fc5ab71eed231b1686de11d0cf2a58dc78dfbd7

Base Sepolia ABI inventory receipt commit: 3fc5ab71eed231b1686de11d0cf2a58dc78dfbd7

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize public Base Sepolia demo launch by itself.

This document does not approve executable config source.

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

This plan defines the controlled implementation boundary for the future NST Core v0.5.2 config package.

The config package is the future bridge between evidence-backed address and ABI records and executable clients or interfaces.

The config package must be fail-closed.

The config package must never promote Base Sepolia values into Base mainnet.

The config package must never treat a testnet address as production.

The config package must never embed secrets.

The config package must never authorize deployment.

This plan does not create executable config source.

This plan does not create generated config.

This plan does not create app source.

This plan does not create protocol client source.

This plan does not create transaction rail source.

This plan does not create governance gate source.

## Current blocker

Config package implementation is not approved yet.

Executable config source does not exist yet.

Config package tests do not exist yet.

No-secret executable scan tooling does not exist yet.

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

Base Sepolia explorer/source verification receipts are not complete.

Base Sepolia public demo approval receipt is not complete.

Mainnet production address evidence is not complete.

Mainnet production ABI evidence is not complete.

Mainnet deployment remains blocked.

## Future package path

Expected future package path:

packages/config

Expected future purpose:

- hold non-secret network configuration;
- hold evidence-backed address references;
- hold evidence-backed ABI references;
- enforce network identity;
- enforce chain ID identity;
- enforce environment identity;
- generate read-only safe config;
- fail closed on missing evidence;
- fail closed on wrong network;
- fail closed on wrong chain ID;
- fail closed on secret detection;
- support protocol client package only after gates pass.

This plan does not create the package path.

This plan does not create package source.

## Config package operating modes

Future config must define explicit modes.

| Mode | Network | Chain ID | Production? | Status |
| --- | --- | --- | --- | --- |
| local-dev | Local Anvil | 31337 or explicit local value | NO | Planning only |
| base-sepolia-readonly | Base Sepolia | 84532 | NO | First candidate |
| base-sepolia-demo | Base Sepolia | 84532 | NO | BLOCKED until demo approval |
| base-mainnet-readonly | Base mainnet | 8453 | YES | BLOCKED |
| base-mainnet-production | Base mainnet | 8453 | YES | BLOCKED |

Default mode must be blocked.

Unknown mode must be blocked.

Missing mode must be blocked.

## Network and chain ID rule

Future config must require:

- explicit network name;
- explicit chain ID;
- explicit environment label;
- explicit production flag;
- explicit testnet flag;
- explicit demo flag where applicable;
- explicit evidence references.

The config package must reject:

- missing network;
- missing chain ID;
- mismatched chain ID;
- Base Sepolia address in Base mainnet mode;
- Base mainnet address in Base Sepolia mode;
- local Anvil address in Base Sepolia mode;
- local Anvil address in Base mainnet mode;
- testnet ABI in mainnet mode;
- mainnet ABI in testnet mode;
- mock value in any non-local mode;
- placeholder value in any executable mode.

## Evidence-backed config rule

Future config rows must come from approved evidence.

Required evidence for each contract row:

- address map row;
- address evidence record;
- address checksum receipt;
- ABI inventory row;
- ABI evidence record;
- ABI checksum receipt;
- explorer/source verification receipt where applicable;
- reviewer;
- row status.

The config package must not accept raw addresses copied from:

- screenshots;
- chat text;
- memory;
- guesses;
- uncommitted local files;
- old terminal output;
- unstated branch artifacts.

The config package must not accept raw ABIs copied from:

- screenshots;
- chat text;
- memory;
- manually edited fragments;
- unstated explorer pages;
- uncommitted local artifacts;
- wrong-branch artifacts.

## Base Sepolia config boundary

Base Sepolia config may only be generated or accepted after:

- Base Sepolia address map exists;
- Base Sepolia address evidence records exist for selected scope;
- Base Sepolia address checksum receipts exist for selected scope;
- Base Sepolia ABI inventory exists;
- Base Sepolia ABI evidence records exist for selected scope;
- Base Sepolia ABI checksum receipts exist for selected scope;
- no-secret scan rule exists;
- package test strategy exists;
- config package gate allows implementation;
- public demo warning language exists if demo mode is enabled.

Base Sepolia config must state:

- testnet only;
- chain ID 84532;
- no production value;
- no mainnet rights;
- no production treasury;
- no investment offer;
- no operational reliance;
- no First Nations production approval;
- no corporate production approval.

## Mainnet config boundary

Base mainnet config remains blocked until:

- production addresses are approved;
- production address evidence records are complete;
- production address checksum receipts are complete;
- production ABI evidence records are complete;
- production ABI checksum receipts are complete;
- production treasury routes are approved;
- production governance objects are approved;
- production role owners are approved;
- release evidence is complete;
- mainnet read-only verification command set is complete;
- final human approval receipt is complete.

No mainnet config may be generated from this plan alone.

No mainnet config may use Base Sepolia addresses.

No mainnet config may use Base Sepolia ABIs as production evidence.

## Config object shape

Future config objects should include:

- version;
- phase;
- environment;
- network;
- chainId;
- isProduction;
- isTestnet;
- isDemo;
- evidenceBundleCommit;
- addressMapCommit;
- abiInventoryCommit;
- warningLanguageCommit where applicable;
- contracts;
- featureFlags;
- safetyFlags;
- generatedAt;
- generatedFrom;
- reviewer;
- status.

Each contract config row should include:

- label;
- address;
- addressEvidencePath;
- addressChecksumReceiptPath;
- abiEvidencePath;
- abiChecksumReceiptPath;
- explorerVerificationPath where applicable;
- readAllowed;
- writeAllowed;
- demoAllowed;
- productionAllowed;
- status.

## Feature flag rule

Future config must use explicit feature flags.

Required safety flags:

| Flag | Required default |
| --- | --- |
| enablePublicDemo | false |
| enableWalletConnection | false |
| enableWriteMethods | false |
| enableTransactionBroadcast | false |
| enableMainnet | false |
| enableProductionTreasury | false |
| enableGovernanceWrites | false |
| enableFirstNationsProduction | false |
| enableCorporateProduction | false |
| enableEmergencyDisable | true |
| failClosed | true |

Flags must not silently default to enabled.

Missing flag must be treated as false or blocked.

## Write method rule

Future config must default all write methods to disabled.

Config must not enable write methods unless:

- transaction rail package gate is complete;
- governance gates package gate is complete where applicable;
- method allowlist exists;
- method-specific evidence exists;
- method-specific tests exist;
- demo or production approval receipt explicitly allows the method.

Read-only config must never expose write methods.

## Public demo config rule

Public demo config must not be produced unless:

- warning language receipt exists;
- warning language is implemented;
- Base Sepolia address evidence is complete for demo scope;
- Base Sepolia ABI evidence is complete for demo scope;
- no-secret scan receipt exists for demo build scope;
- package tests pass for demo scope;
- public demo approval receipt is complete.

A warning language receipt alone does not authorize demo config.

An approval receipt template alone does not authorize demo config.

## Emergency disable rule

Future config must include an emergency disable path.

Emergency disable should support:

- disable public demo;
- disable wallet connection;
- disable write methods;
- disable transaction broadcast;
- disable governance actions;
- disable treasury views where necessary;
- show maintenance banner;
- force fail-closed state.

Emergency disable values must not require secrets to be committed.

## No-secret rule

Future config must not contain:

- private keys;
- seed phrases;
- recovery phrases;
- deployer keys;
- signer keys;
- wallet secrets;
- private RPC credentials;
- keystore passwords;
- personal access tokens;
- private API keys;
- bearer tokens;
- private environment values.

Future config examples must use placeholders only.

Future generated config must be scanned before commit.

## Environment variable rule

Future config may reference environment variable names.

Future config must not commit environment variable values when those values are secret.

Allowed:

- RPC_URL_ENV_NAME;
- NEXT_PUBLIC_CHAIN_ID placeholder;
- EXAMPLE_ONLY;
- SET_LOCALLY;
- PROVIDED_BY_SECURE_ENVIRONMENT.

Disallowed:

- real private RPC URL with key;
- real API token;
- real private key;
- real seed phrase;
- real deployer key.

## Config validation tests

Future config package tests must prove:

- missing mode fails;
- unknown mode fails;
- wrong chain ID fails;
- wrong network fails;
- missing address evidence fails;
- missing address checksum receipt fails;
- missing ABI evidence fails;
- missing ABI checksum receipt fails;
- checksum mismatch fails;
- Base Sepolia address in mainnet mode fails;
- Base mainnet address in Base Sepolia mode fails;
- write method flag defaults to disabled;
- transaction broadcast defaults to disabled;
- production flags default to disabled;
- secret-looking values fail;
- placeholder values fail outside local/example mode;
- demo mode fails without warning language evidence;
- demo mode fails without approval receipt.

## Config generation rule

Future generated config must record:

- generator version;
- source commit;
- source branch;
- source address map;
- source ABI inventory;
- source evidence paths;
- generation date UTC;
- reviewer;
- status;
- no-secret scan receipt reference.

Generated config must not be trusted unless committed, reviewed, and scanned.

Generated config must not be manually edited without receipt.

## Config drift rule

Future config must detect drift.

Drift examples:

- address map changed after config generated;
- ABI inventory changed after config generated;
- checksum receipt changed after config generated;
- warning language changed after config generated;
- package test strategy changed after config generated;
- no-secret scan rule changed after config generated;
- source branch changed after config generated.

Drift must require review.

Drift must not silently pass.

## Config status values

Allowed config status values:

| Status | Meaning |
| --- | --- |
| DRAFT | Not executable |
| BLOCKED | Must not be used |
| TESTNET_READONLY_READY | Testnet read-only config may be used by approved clients |
| TESTNET_DEMO_READY | Testnet demo config may be used after demo approval |
| MAINNET_READONLY_READY | Mainnet read-only config approved |
| MAINNET_PRODUCTION_READY | Mainnet production config approved |
| SUPERSEDED | Replaced by newer config |

Unknown status values must fail.

## First Nations config boundary

Future config must not activate First Nations production routes unless:

- Treaty-law review is complete;
- First Nations governance approval is complete;
- revenue route approval is complete;
- key-holder approval is complete if applicable;
- production address evidence is complete;
- production treasury evidence is complete;
- final human approval is complete.

Base Sepolia config must not imply First Nations production approval.

## Corporate config boundary

Future config must not activate corporate production integration unless:

- corporate production approval exists;
- legal review is complete where required;
- operational reliance terms are approved;
- integration scope is explicit;
- production evidence exists;
- final human approval is complete.

Base Sepolia config must not imply corporate production integration.

## Transaction rail config boundary

Future config must not enable transaction rail broadcast unless:

- transaction rail package gate is complete;
- transaction rail tests pass;
- method allowlist is approved;
- signer handling is approved;
- no secrets are committed;
- emergency disable path exists;
- approval receipt explicitly permits broadcast.

Read-only config must set transaction broadcast to false.

## Governance gates config boundary

Future config must not enable governance writes unless:

- governance gates package gate is complete;
- governance tests pass;
- role owners are approved;
- governance object is approved;
- multisig evidence is complete where applicable;
- no signer secrets are committed;
- approval receipt explicitly permits governance writes.

Read-only config must set governance writes to false.

## Acceptance gate before implementation

Before executable config package source is created, the project should have:

- this config package implementation plan;
- package test strategy;
- no-secret package scan rule;
- protocol client package implementation plan;
- Base Sepolia read-only config plan;
- address evidence records for selected scope;
- address checksum receipts for selected scope;
- ABI evidence records for selected scope;
- ABI checksum receipts for selected scope;
- package gate approval to create executable source.

## No-go conditions

Do not implement executable config package source from this plan alone.

Do not create generated config from this plan alone.

Do not launch a public Base Sepolia demo from this plan.

Do not launch a production interface from this plan.

Do not launch a mainnet interface from this plan.

Do not expose write methods from this plan.

Do not enable transaction broadcast from this plan.

Do not enable governance writes from this plan.

Do not enable production treasury routes from this plan.

Do not treat config existence as deployment authorization.

Do not treat config existence as public demo approval.

Do not treat config existence as mainnet approval.

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
- it states config does not authorize deployment;
- it states config does not authorize public demo launch;
- it states config does not authorize mainnet approval;
- it defines network and chain ID rules;
- it defines evidence-backed config rules;
- it defines Base Sepolia config boundary;
- it defines mainnet config boundary;
- it defines feature flag rules;
- it defines write method rules;
- it defines public demo config rules;
- it defines emergency disable rules;
- it defines no-secret rules;
- it defines config validation tests;
- it defines config drift rules;
- it defines First Nations config boundary;
- it defines corporate config boundary;
- it defines transaction rail config boundary;
- it defines governance gates config boundary;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
