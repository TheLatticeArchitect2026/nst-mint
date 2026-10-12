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

## v0.5.2 Base Sepolia public demo warning language receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_PUBLIC_DEMO_WARNING_LANGUAGE_RECEIPT.md

Reference commit: 6c715e8bbacfe1c992e2c755910646450566f106

Reference captured UTC: 2026-10-06T08:54:09Z

Reference target: Base Sepolia ABI inventory receipt

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve a public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia public demo warning language receipt exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Public Base Sepolia demo launch remains blocked until warning language is implemented, address evidence is complete, ABI evidence is complete, checksum receipts are complete, no-secret review is complete, package gates are complete, UI review is complete, and demo-specific human approval is captured.

Required follow-on work:

- Create Base Sepolia address evidence records.
- Create Base Sepolia address checksum receipts.
- Create Base Sepolia ABI evidence records.
- Create Base Sepolia ABI checksum receipts.
- Create Base Sepolia explorer/source verification receipts.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.
- Create demo approval receipt template.
- Implement warning language only after app/source gates authorize implementation.

No-go conditions preserved:

- Do not launch a public Base Sepolia demo from this receipt alone.
- Do not launch a production interface from this receipt.
- Do not launch a mainnet interface from this receipt.
- Do not expose write methods from this receipt.
- Do not imply Base Sepolia has production value.
- Do not imply Base Sepolia creates mainnet rights.
- Do not imply Base Sepolia activates production governance.
- Do not imply Base Sepolia activates production treasury.
- Do not imply Base Sepolia activates First Nations production revenue.
- Do not imply Base Sepolia activates corporate production integration.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia public demo approval receipt template reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_PUBLIC_DEMO_APPROVAL_RECEIPT_TEMPLATE.md

Reference commit: 50507d18f6036ccada13440e88a601165f42f0f2

Reference captured UTC: 2026-10-06T09:15:31Z

Reference target: Base Sepolia ABI inventory receipt

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve a public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia public demo approval receipt template exists as a controlled testnet-only approval artifact.

No public Base Sepolia demo is approved by this reference.

No public Base Sepolia demo is approved by the template alone.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Public Base Sepolia demo launch remains blocked until a completed approval receipt exists, warning language is implemented, address evidence is complete, ABI evidence is complete, checksum receipts are complete, no-secret review is complete, package gates are complete, UI review is complete, and demo-specific human approval is captured.

Required follow-on work:

- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts.
- Implement Base Sepolia warning language.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.
- Complete UI review.
- Complete demo-specific human approval receipt if demo launch is pursued.

No-go conditions preserved:

- Do not launch a public Base Sepolia demo from this template.
- Do not launch a public Base Sepolia demo unless a completed approval receipt exists.
- Do not launch a production interface from this template.
- Do not launch a mainnet interface from this template.
- Do not expose write methods from this template.
- Do not imply Base Sepolia has production value.
- Do not imply Base Sepolia creates mainnet rights.
- Do not imply Base Sepolia activates production governance.
- Do not imply Base Sepolia activates production treasury.
- Do not imply Base Sepolia activates First Nations production revenue.
- Do not imply Base Sepolia activates corporate production integration.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 read-only client implementation plan reference

Reference document: docs/plans/V0_5_2_READ_ONLY_CLIENT_IMPLEMENTATION_PLAN.md

Reference commit: b9c0b7fe0a9fc1e9aa0b72db40134166d757dc68

Reference captured UTC: 2026-10-06T09:26:34Z

Reference target: Base Sepolia ABI inventory receipt

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the read-only client implementation plan exists as a controlled planning artifact.

No executable read-only client code is approved by this reference alone.

No public Base Sepolia demo is approved by this reference alone.

No write-capable client behavior is approved by this reference.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Read-only client implementation remains blocked until address evidence, address checksum receipts, ABI evidence, ABI checksum receipts, config plan, protocol-client plan, no-secret scan rule, package test strategy, and applicable demo/interface approvals are complete.

Required follow-on work:

- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Implement read-only client code only after package gates authorize executable implementation.
- Complete UI/demo review before public Base Sepolia demo launch.

No-go conditions preserved:

- Do not implement executable read-only client code from this plan alone.
- Do not launch a public Base Sepolia demo from this plan alone.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not treat Base Sepolia as production.
- Do not treat Base Sepolia reads as mainnet evidence.
- Do not treat read-only client implementation as deployment authorization.
- Do not imply this reference authorizes deployment.

## v0.5.2 package test strategy reference

Reference document: docs/plans/V0_5_2_PACKAGE_TEST_STRATEGY.md

Reference commit: 650020e7418c707aa93bd471e0ef87857a76563d

Reference captured UTC: 2026-10-06T09:36:23Z

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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

Reference target: Base Sepolia ABI inventory receipt

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
