# NST Core v0.5.2 Base Sepolia ABI Inventory Receipt

Status: DRAFT RECEIPT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-06T08:18:39Z
Current commit at creation: c0ea74327be8ae44399981242b449f49fed9fea1

ABI source policy commit: c0ea74327be8ae44399981242b449f49fed9fea1

ABI evidence record template commit: c0ea74327be8ae44399981242b449f49fed9fea1

ABI checksum receipt template commit: 4722469d10f94d86423632ff6fb46edf37dda16f

Base Sepolia deployment inventory and public interface decision record commit: c0ea74327be8ae44399981242b449f49fed9fea1

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not approve any production ABI.

This document does not approve any production contract address.

This document does not approve any production governance object.

This document does not approve any production treasury route.

This document does not authorize production configuration.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize production governance gates.

This document does not authorize any public mainnet mint interface.

This document is a Base Sepolia testnet-only inventory receipt.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

## Purpose

This receipt defines the controlled Base Sepolia ABI inventory boundary for NST Core v0.5.2.

The purpose is to prepare a safe, reviewable, testnet-only ABI inventory structure before any public Base Sepolia demo, public interface, corporate interface, First Nations interface, protocol client, config package, governance gate, or transaction rail component is allowed to consume ABI files.

This document does not create executable clients.

This document does not create app source.

This document does not create package source.

This document does not create config source.

This document does not create transaction rail source.

This document does not create governance gate source.

This document does not create production deployment configuration.

## Current blocker

Base Sepolia ABI inventory is not complete.

Base Sepolia address map is not complete.

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Protocol client implementation remains blocked.

Transaction rail implementation remains blocked.

Config package implementation remains blocked.

Governance gates implementation remains blocked.

Public production interface launch remains blocked.

Mainnet deployment remains blocked.

## Inventory scope

This inventory applies only to:

- Base Sepolia;
- chain ID 84532;
- testnet demonstration;
- read-only planning;
- controlled readiness review;
- public demo decision review;
- future testnet-only protocol client configuration.

This inventory does not apply to:

- Base mainnet;
- chain ID 8453;
- production deployment;
- production treasury routes;
- production governance;
- production First Nations participation;
- production corporate onboarding;
- production public minting;
- production transaction rail execution.

## Required inventory rule

Each Base Sepolia ABI inventory row must eventually include:

- contract or module name;
- network;
- chain ID;
- deployed address;
- address evidence record path;
- address checksum receipt path;
- ABI evidence record path;
- ABI checksum receipt path;
- ABI source type;
- ABI source commit;
- ABI artifact path;
- ABI checksum value;
- explorer verification URL where available;
- source verification status;
- public interface display status;
- read-only client status;
- write client status;
- transaction rail status;
- governance gates status;
- config status;
- reviewer;
- final status.

## Base Sepolia inventory table

| Contract or module | Network | Chain ID | Address evidence | Address checksum | ABI evidence | ABI checksum | Explorer/source verification | Public demo status | Final status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| NSTSBT | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |
| CFT | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |
| TreasuryRouter | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |
| ShieldRegistry | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |
| VaultRegistry | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |
| YieldPool | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |
| RewardEscrow | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |
| Claim or credential module | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |
| Public demo interface config | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | BLOCKED | OPEN |

## ABI source requirement

Each ABI must come from an approved source under the ABI source policy.

Allowed sources include:

- committed Foundry build artifact from approved build profile;
- source-verified explorer ABI matching deployed Base Sepolia contract;
- release evidence bundle ABI artifact with checksum;
- explicitly reviewed ABI export generated from approved build.

Disallowed sources include:

- screenshots;
- chat text;
- memory;
- guessed ABI fragments;
- manually edited ABI without receipt;
- old build artifacts from unknown commit;
- wrong-branch artifacts;
- wrong-profile artifacts;
- Anvil-only ABIs presented as Base Sepolia;
- Base mainnet ABIs presented as Base Sepolia;
- uncommitted local artifacts;
- private files containing secrets.

## ABI checksum requirement

Each ABI must have a checksum receipt before use by any package or interface.

The checksum receipt must record:

- ABI source file;
- ABI source commit;
- checksum method;
- checksum command or procedure;
- checksum output value;
- reviewer;
- review date;
- mismatch status;
- no-secret confirmation;
- no-screenshot-source confirmation;
- no-chat-source confirmation;
- no-manual-edit confirmation.

ABI checksum confirmation is not ABI approval.

ABI checksum confirmation does not authorize public demo launch.

ABI checksum confirmation does not authorize write execution.

ABI checksum confirmation does not authorize deployment.

## Address evidence requirement

Each ABI row that relates to a deployed contract must be paired with address evidence.

Address evidence must include:

- deployed address;
- network;
- chain ID;
- address source;
- address checksum receipt;
- deployment receipt if available;
- explorer URL if available;
- reviewer;
- status.

A deployed contract address must not be taken from screenshots.

A deployed contract address must not be taken from chat text.

A deployed contract address must not be taken from memory.

A deployed contract address must not be guessed.

## Explorer/source verification requirement

Each deployed Base Sepolia contract should eventually include:

- explorer URL;
- source verification status;
- verified contract name;
- verified compiler version;
- verified source match status;
- verified ABI match status;
- bytecode match status where available;
- reviewer;
- receipt status.

Explorer verification is not production approval.

Explorer verification is not mainnet deployment authorization.

Explorer verification is not treasury approval.

Explorer verification is not governance approval.

## Public demo boundary

A future public Base Sepolia demo may be considered only after:

- Base Sepolia address evidence records are complete;
- Base Sepolia address checksum receipts are complete;
- Base Sepolia ABI evidence records are complete;
- Base Sepolia ABI checksum receipts are complete;
- public interface warning language is complete;
- no-secret scan is complete;
- read-only client plan is complete;
- public demo decision is reviewed;
- human approval is captured for demo scope only.

A Base Sepolia demo must display:

- testnet-only notice;
- no production value notice;
- no investment offer notice;
- no operational reliance notice;
- no mainnet rights notice;
- no production treasury notice;
- no First Nations production approval notice;
- no corporate production approval notice.

## Read-only client boundary

Read-only protocol clients may be planned from this inventory only when:

- ABI evidence is complete;
- ABI checksum receipt is complete;
- address evidence is complete;
- address checksum receipt is complete;
- config package status allows read-only testnet use;
- no write methods are exposed in the public demo path;
- reviewer approves testnet-only read scope.

Read-only client planning does not authorize write clients.

Read-only client planning does not authorize production clients.

Read-only client planning does not authorize mainnet deployment.

## Write client boundary

Write-capable clients remain blocked.

Write-capable clients require:

- final address evidence;
- final ABI evidence;
- final checksum receipts;
- config package approval;
- governance gate approval;
- transaction rail gate approval;
- security review;
- test receipts;
- release evidence;
- final human approval.

No Base Sepolia public interface should expose write-capable behavior until the demo-specific approval gate is complete.

## Transaction rail boundary

Transaction rail execution remains blocked.

Transaction rail may not broadcast transactions using this inventory alone.

Transaction rail may not infer method safety from ABI presence.

Transaction rail may not infer address safety from checksum presence.

Transaction rail may not infer governance approval from Base Sepolia deployment.

Transaction rail package implementation requires separate package gates and test receipts.

## Governance gates boundary

Governance gates may use this inventory only for planning.

Governance gates may not treat Base Sepolia ABI inventory as production governance approval.

Governance gates may not enable privileged actions from ABI inventory alone.

Governance gates may not enable treasury route changes from ABI inventory alone.

Governance gates may not enable First Nations governance participation from ABI inventory alone.

## First Nations boundary

Base Sepolia ABI inventory does not approve First Nations governance participation.

Base Sepolia ABI inventory does not approve First Nations revenue routing.

Base Sepolia ABI inventory does not approve Treaty-law language.

Base Sepolia ABI inventory does not approve First Nations key-holder status.

Any First Nations interface, governance, revenue, representation, consent, or key-holder language must be reviewed by specialized Treaty-law counsel before production use.

## Corporate boundary

Base Sepolia ABI inventory does not approve corporate onboarding.

Base Sepolia ABI inventory does not approve enterprise production integration.

Base Sepolia ABI inventory does not approve paid service commitments.

Base Sepolia ABI inventory does not approve operational reliance.

Base Sepolia ABI inventory does not approve investment solicitation.

Corporate demo usage must remain informational and testnet-only.

## Required evidence artifacts before use

Before any app or package consumes a Base Sepolia ABI from this inventory, the project must create or complete:

- Base Sepolia address map;
- Base Sepolia address evidence records;
- Base Sepolia address checksum receipts;
- Base Sepolia ABI evidence records;
- Base Sepolia ABI checksum receipts;
- Base Sepolia explorer/source verification receipts;
- read-only client implementation plan;
- public demo warning language;
- no-secret scan rule;
- package test strategy;
- config package approval;
- protocol client package approval;
- governance gates package approval where applicable;
- transaction rail package approval where applicable.

## Inventory review checklist

| Check | Status |
| --- | --- |
| Network is Base Sepolia | COMPLETE |
| Chain ID is 84532 | COMPLETE |
| Testnet-only status documented | COMPLETE |
| No production value warning documented | COMPLETE |
| No mainnet rights warning documented | COMPLETE |
| ABI source policy referenced | COMPLETE |
| ABI evidence template referenced | COMPLETE |
| ABI checksum receipt template referenced | COMPLETE |
| Address source policy referenced | COMPLETE |
| Address evidence template referenced | COMPLETE |
| Address checksum receipt template referenced | COMPLETE |
| Actual ABI evidence records complete | OPEN |
| Actual ABI checksum receipts complete | OPEN |
| Actual address evidence records complete | OPEN |
| Actual address checksum receipts complete | OPEN |
| Public demo approval complete | OPEN |
| Mainnet deployment authorization | BLOCKED |

## No-go conditions

Do not use this receipt as production ABI approval.

Do not use this receipt as production address approval.

Do not use this receipt as public demo approval.

Do not use this receipt as mainnet deployment authorization.

Do not use this receipt as transaction rail authorization.

Do not use this receipt as governance approval.

Do not use this receipt as treasury approval.

Do not use Base Sepolia ABI evidence as Base mainnet evidence.

Do not use Base Sepolia addresses as Base mainnet addresses.

Do not expose write-capable clients from this receipt.

Do not create production config from this receipt.

Do not create production public interface config from this receipt.

Do not create production corporate interface config from this receipt.

Do not create production First Nations interface config from this receipt.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not embed wallet secrets.

Do not embed private RPC credentials.

## Secret exclusion checklist

This receipt must contain none of the following:

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

This receipt is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states Base Sepolia is testnet-only;
- it states Base Sepolia has no production value;
- it states Base Sepolia has no mainnet rights;
- it does not approve public demo launch;
- it does not approve write-capable clients;
- it does not approve transaction rail execution;
- it does not approve governance actions;
- it does not approve treasury actions;
- it defines ABI inventory fields;
- it defines ABI evidence requirements;
- it defines ABI checksum requirements;
- it defines address evidence requirements;
- it defines public demo boundary;
- it defines read-only client boundary;
- it defines write client boundary;
- it defines no-go conditions;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Base Sepolia address map reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_MAP.md

Reference commit: c30dbdba2f141d84b36532c5d661884244dba807

Reference captured UTC: 2026-10-06T08:38:35Z

Reference target: Base Sepolia ABI inventory receipt

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address map exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Base Sepolia address use remains blocked until completed address evidence records, address checksum receipts, ABI evidence records where applicable, ABI checksum receipts where applicable, explorer/source verification receipts where applicable, no-secret review, package gates, and public-demo approval are complete.

Required follow-on work:

- Create Base Sepolia address evidence records.
- Create Base Sepolia address checksum receipts.
- Create Base Sepolia ABI evidence records.
- Create Base Sepolia ABI checksum receipts.
- Create Base Sepolia explorer/source verification receipts.
- Create public demo warning-language receipt.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.

No-go conditions preserved:

- Do not use this map as production address approval.
- Do not use this map as production ABI approval.
- Do not use this map as public demo approval.
- Do not use this map as mainnet deployment authorization.
- Do not use this map as transaction rail authorization.
- Do not use this map as governance approval.
- Do not use this map as treasury approval.
- Do not use Base Sepolia addresses as Base mainnet addresses.
- Do not use Base Sepolia ABI evidence as Base mainnet evidence.
- Do not expose write-capable clients from this map.
- Do not create production config from this map.
- Do not create production public interface config from this map.
- Do not create production corporate interface config from this map.
- Do not create production First Nations interface config from this map.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.
