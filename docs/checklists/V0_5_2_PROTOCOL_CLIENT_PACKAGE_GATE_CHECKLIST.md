# NST Core v0.5.2 Protocol Client Package Gate Checklist

Status: DRAFT GATE CHECKLIST
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-04T15:46:40Z
Current commit at creation: 57a1c7e2576fcbbf47377f65d85d3c03149c678a

Transaction rail package gate commit: 611f97a8dbbd662412a6bdeb8713353ef0ec5a0b

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize production protocol clients.

This document does not authorize production mint transactions.

This document does not authorize production treasury routing.

This document does not authorize any public mainnet mint interface.

This document does not authorize writing executable protocol client package code yet.

This checklist is the required gate before executable source code is added to packages/protocol-clients.

## Source documents

Source application infrastructure blueprint: docs/plans/V0_5_2_APPLICATION_INFRASTRUCTURE_BLUEPRINT.md

Source application source tree scaffold record: docs/plans/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_RECORD.md

Source application source tree scaffold gate checklist: docs/checklists/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_GATE_CHECKLIST.md

Source transaction rail architecture blueprint: docs/plans/V0_5_2_TRANSACTION_RAIL_ARCHITECTURE_BLUEPRINT.md

Source transaction rail package gate checklist: docs/checklists/V0_5_2_TRANSACTION_RAIL_PACKAGE_GATE_CHECKLIST.md

Source Base Sepolia deployment inventory and public interface decision record: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source mainnet readiness blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md

Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md

Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md

Source protocol clients package scaffold: packages/protocol-clients/README.md

Source transaction rail package scaffold: packages/transaction-rail/README.md

Source config package scaffold: packages/config/README.md

Source governance gates package scaffold: packages/governance-gates/README.md

## Purpose

This checklist defines the controlled gate for the future packages/protocol-clients source package.

The package is intended to become the typed, network-aware, read-safe client layer for interacting with approved NST Lattice protocol contracts.

This checklist prevents the project from directly writing executable contract client code before ABI, address, network, testnet, production, and no-secret controls are defined.

The protocol client package must remain blocked until this gate is complete, reviewed, committed, pushed, and referenced in readiness gates.

## Current controlled status

| Area | Current result | Status |
| --- | --- | --- |
| packages/protocol-clients scaffold | README-only scaffold exists | COMPLETE |
| Protocol client executable package code | Not created | BLOCKED |
| Transaction rail package gate | Created and committed | COMPLETE |
| Approved ABI source map | Not finalized | OPEN |
| Approved Base Sepolia client map | Not finalized | OPEN |
| Approved Base mainnet client map | Not finalized | BLOCKED |
| Production addresses | Not finalized | BLOCKED |
| Production deployment config | Not finalized | BLOCKED |
| Public production protocol clients | Not built | BLOCKED |
| Mainnet deployment | Not authorized | BLOCKED |

## Package scope

The future protocol client package may eventually define typed client modules for:

- NSTSBT;
- CFT;
- ShieldRegistry;
- VaultRegistry;
- TreasuryRouter;
- YieldPool;
- RewardEscrow;
- future governance registry contracts;
- future claim modules;
- future transaction rail integration points;
- future Base Sepolia demo read helpers;
- future Base mainnet read helpers after approval.

The package may eventually provide:

- ABI imports;
- contract address resolution;
- chain ID guard helpers;
- read-only contract clients;
- write-capable client interfaces gated behind transaction rail controls;
- contract code existence checks;
- deployed bytecode presence checks;
- interface support reads;
- role read helpers;
- pause-state read helpers;
- mint-state read helpers;
- metadata-state read helpers;
- registry-state read helpers;
- treasury route read helpers;
- post-transaction read helpers.

The package must not directly contain:

- private keys;
- seed phrases;
- recovery phrases;
- wallet secrets;
- deployer keys;
- privileged signing material;
- private RPC credentials;
- unapproved production addresses;
- hardcoded production treasury routes before approval;
- Base Sepolia addresses presented as production;
- Anvil addresses presented as production;
- mock addresses presented as production.

## Contract client boundary

Every future protocol client must define:

- contract name;
- contract purpose;
- allowed networks;
- allowed chain IDs;
- ABI source;
- address source;
- read methods;
- write methods;
- write-method risk level;
- transaction rail dependency;
- required preflight checks;
- expected return shape;
- expected error shape;
- receipt dependency;
- no-secret confirmation;
- testnet limitation;
- production limitation.

No protocol client may be treated as production-ready without approved address source-of-truth evidence.

No protocol client may point to a production address before production addresses are approved.

No protocol client may use screenshots or chat text as final address evidence.

## ABI source gate

Before protocol client source code is written, ABI source rules must be complete.

Approved ABI sources may include:

- local compiled artifacts from committed contract source;
- verified explorer metadata matching committed source;
- deterministic build outputs produced from the committed build profile;
- release evidence artifacts;
- final deployment evidence bundle artifacts.

ABI sources must not include:

- pasted unverified ABI fragments;
- screenshots;
- chat text;
- unknown external files;
- stale build artifacts;
- unreviewed generated files;
- mutable remote files without checksum;
- artifacts produced from an unapproved build profile.

Every ABI source must have:

- file path;
- contract name;
- source commit;
- build profile evidence;
- checksum where required;
- reviewer;
- approval receipt;
- intended network;
- no-secret confirmation.

## Address source gate

Before protocol client source code is written, address source rules must be complete.

Approved address sources may include:

- final production address collection package;
- final production address approval receipt;
- final owner address template;
- final deployment config;
- release evidence bundle;
- deployment receipt;
- explorer verification receipt;
- read-only verification receipt.

Address sources must not include:

- screenshots;
- chat text;
- memory;
- guesses;
- placeholders;
- Anvil addresses;
- local mock addresses;
- Base Sepolia addresses presented as Base mainnet addresses;
- test-only addresses presented as production addresses.

Every address row must include:

- contract name;
- network;
- chain ID;
- final address;
- checksum confirmation;
- source document;
- source commit;
- approval evidence;
- reviewer;
- status;
- no-secret confirmation.

## Network guard gate

Every protocol client must enforce network boundaries.

Required network controls include:

- known chain ID;
- known network name;
- known contract address map;
- no fallback to production;
- no silent network switching;
- no Base Sepolia to Base mainnet substitution;
- no Anvil to Base Sepolia substitution;
- no Anvil to Base mainnet substitution;
- no mock address fallback;
- explicit unsupported-network status;
- explicit wrong-network status.

Supported future network categories:

- local Anvil development only;
- Base Sepolia testnet only;
- Base mainnet production only after final approval.

## Read-only client gate

Read-only clients may eventually support:

- owner reads;
- role reads;
- pause state reads;
- mint open reads;
- permanent close reads;
- metadata freeze reads;
- contractURI reads;
- baseURI reads;
- total supply reads;
- balance reads;
- locked token reads;
- ERC165 support reads;
- registry eligibility reads;
- banned status reads;
- treasury route reads;
- yield pool receiver reads;
- pending yield reads;
- CFT treasury split reads;
- vault credential reads;
- reward grant reads.

Read-only clients must not:

- sign transactions;
- broadcast transactions;
- mutate chain state;
- require private keys;
- require seed phrases;
- require deployer keys;
- require wallet secrets;
- imply deployment authorization;
- imply production status without approved production config.

## Write client gate

Write-capable protocol client methods are high-risk.

Write-capable client methods must not be implemented until:

- transaction rail gate is complete;
- protocol client gate is complete;
- config package gate is complete;
- governance gates package gate is complete;
- Base Sepolia demo launch gate is complete for testnet demo;
- production address approvals are complete for mainnet;
- final deployment config exists for mainnet;
- final human approval exists for mainnet.

Potential future write actions include:

- mint NST;
- process pending yield;
- set mint open;
- close mint permanently;
- set base URI;
- freeze base URI;
- set contract URI;
- freeze contract URI;
- pause;
- unpause;
- rescue ERC20;
- sweep ETH;
- CFT mint;
- CFT burn;
- treasury route update;
- registry update;
- vault issuance;
- grant creation;
- claim operation.

Each write method must have:

- explicit purpose;
- explicit contract;
- explicit method;
- explicit chain ID;
- explicit address source;
- explicit ABI source;
- required caller role;
- transaction rail preflight;
- transaction preview;
- user confirmation;
- wallet signing boundary;
- receipt model;
- post-transaction read verification;
- failure handling;
- rollback or recovery note where relevant;
- no-secret confirmation.

No write helper may auto-broadcast.

No write helper may bypass transaction rail preflight.

No write helper may bypass wallet confirmation.

No write helper may be enabled for production before final approval.

## Contract-specific client gates

| Contract or module | Required client boundary | Status |
| --- | --- | --- |
| NSTSBT | Read-only client boundary for soulbound, mint, pause, metadata, yield state | OPEN |
| NSTSBT | Write client boundary for mint and admin operations | BLOCKED |
| CFT | Read-only client boundary for token, roles, treasury split | OPEN |
| CFT | Write client boundary for mint, burn, role operations | BLOCKED |
| ShieldRegistry | Read-only eligibility and ban boundary | OPEN |
| ShieldRegistry | Write registry mutation boundary | BLOCKED |
| VaultRegistry | Read-only credential state boundary | OPEN |
| VaultRegistry | Write credential issuance boundary | BLOCKED |
| TreasuryRouter | Read-only treasury route boundary | OPEN |
| TreasuryRouter | Write route update boundary | BLOCKED |
| YieldPool | Read-only receiver and yield state boundary | OPEN |
| YieldPool | Claim or movement write boundary | BLOCKED |
| RewardEscrow | Read-only grant state boundary | OPEN |
| RewardEscrow | Grant creation or release write boundary | BLOCKED |

## Base Sepolia client gate

Base Sepolia clients may eventually be created for demo mode only.

Base Sepolia clients must:

- display testnet-only status;
- use Base Sepolia chain ID only;
- use approved Base Sepolia deployed addresses only;
- use testnet ABI evidence only;
- show no-production-value warning;
- show no-mainnet-rights warning;
- show no-production-treasury warning;
- block Base mainnet assumptions;
- block production claims;
- block First Nations legal-rights claims;
- block corporate production reliance.

Base Sepolia clients do not authorize public demo launch by themselves.

Public demo launch requires a separate launch gate.

## Base mainnet client gate

Base mainnet clients remain blocked.

Base mainnet clients require:

- final production address package;
- final address approval receipt;
- final owner address template;
- final deployment config;
- final deployment config checksum;
- final verification command receipts;
- final release evidence bundle;
- final human approval receipt;
- post-deploy read-only verification;
- legal review where required;
- public communication approval.

No Base mainnet client may exist before these items are complete unless it is a non-executable placeholder document.

## Config package dependency

Protocol clients must depend on approved public config.

Protocol clients must not own secrets.

Protocol clients must not read private keys.

Protocol clients must not read seed phrases.

Protocol clients must not read recovery phrases.

Protocol clients must not read deployer keys.

Protocol clients must not read private RPC credentials.

Protocol clients must not include production secrets.

Protocol clients must be compatible with the future packages/config boundary.

## Transaction rail dependency

Write-capable protocol clients must depend on the transaction rail.

The protocol client package must not independently manage transaction lifecycle state.

The protocol client package must not independently broadcast transactions.

The protocol client package must not bypass transaction preview.

The protocol client package must not bypass user signature confirmation.

The protocol client package must not bypass receipt capture.

The transaction rail controls user-facing state, preflight, preview, submission, confirmation, failure, and receipt normalization.

## Governance gates dependency

Privileged protocol client operations must depend on governance gates.

Governance-sensitive operations include:

- admin role actions;
- pauser actions;
- mint manager actions;
- metadata manager actions;
- treasury manager actions;
- swap operator actions;
- registry actions;
- vault actions;
- reward actions;
- route actions;
- rescue actions;
- sweep actions.

No privileged client operation may be exposed without governance gate review.

## First Nations legal review boundary

Protocol clients must not encode final First Nations governance, revenue, rights, consent, representation, or treaty-related assumptions without legal review.

The First Nations lawyer specializing in Treaty law should review any protocol client path that relates to:

- First Nations revenue routing;
- First Nations governance authority;
- First Nations multisig participation;
- First Nations key-holder design;
- First Nations consent flows;
- First Nations community onboarding;
- First Nations rights language;
- First Nations legal disclaimers.

Protocol clients must remain neutral until legal language and governance evidence are approved.

## Public and corporate interface dependency

Public and corporate interfaces must not call protocol clients in production mode until production readiness is complete.

Public interface client calls must:

- show network;
- show contract;
- show testnet or production mode;
- show user action;
- show status;
- show warnings;
- prevent unsupported actions.

Corporate interface client calls must:

- collect no secrets;
- avoid investment claims;
- avoid production claims before launch;
- avoid treasury reliance before approval;
- route production participation through source-of-truth approval processes.

## Required evidence before executable package source

Before executable protocol client source code is created, the project must complete:

| Evidence | Required state | Status |
| --- | --- | --- |
| Protocol client package gate checklist | Created and committed | OPEN |
| Transaction rail package gate checklist | Created and committed | COMPLETE |
| Config package gate checklist | Created and committed | OPEN |
| Governance gates package checklist | Created and committed | OPEN |
| ABI source policy | Created and committed | OPEN |
| Address source policy | Created and committed | OPEN |
| Base Sepolia client map | Created and committed | OPEN |
| Base mainnet client map | Blocked until production approvals | BLOCKED |
| Read-only client implementation plan | Created and committed | OPEN |
| Write client implementation plan | Created and committed | OPEN |
| Package test strategy | Created and committed | OPEN |
| No-secret package scan rule | Created and committed | OPEN |

## Approved first implementation after gates

The first future protocol client implementation should not be a production write client.

The first future implementation should be one of:

- type-only contract name map;
- type-only network mode map;
- read-only chain ID helper;
- read-only address checksum helper;
- read-only Base Sepolia contract metadata helper;
- ABI type declaration only;
- client error type declaration only.

The first implementation should not include:

- mainnet write transactions;
- mint execution;
- treasury route mutation;
- admin role mutation;
- production address hardcoding;
- wallet private key access;
- secret environment access.

## No-go conditions

Do not write protocol client package source code until this checklist is committed and referenced.

Do not create production protocol clients yet.

Do not create production write clients yet.

Do not create production mint clients yet.

Do not create production treasury route clients yet.

Do not create production governance clients yet.

Do not embed production addresses before source-of-truth approval.

Do not use Base Sepolia addresses as production addresses.

Do not use Anvil addresses as production addresses.

Do not use mock addresses as production addresses.

Do not use screenshots as address source-of-truth.

Do not use chat text as address source-of-truth.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not embed wallet secrets.

Do not embed private RPC credentials.

Do not imply this checklist authorizes deployment.

## Acceptance criteria

This checklist is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states protocol client executable code is not authorized yet;
- it defines ABI source boundaries;
- it defines address source boundaries;
- it defines network guard boundaries;
- it defines read-only client boundaries;
- it defines write client boundaries;
- it defines transaction rail dependency;
- it defines config dependency;
- it defines governance gates dependency;
- it defines Base Sepolia limitations;
- it defines Base mainnet blockers;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it includes no production address approvals;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Config package gate checklist reference

Reference document: docs/checklists/V0_5_2_CONFIG_PACKAGE_GATE_CHECKLIST.md

Reference commit: 9c152de9c889c453168846ac28ef3ad69fb10dd7

Reference captured UTC: 2026-10-04T18:17:03Z

Reference target: protocol client package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production configuration.

This reference does not authorize production contract addresses.

This reference does not authorize production treasury routing.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable config package code.

This reference does not authorize any public mainnet mint interface.

This reference records that the config package gate checklist exists as a controlled readiness artifact.

The config package remains gate-blocked until public config boundaries, secret exclusion controls, network config rules, address config rules, ABI config rules, feature flag rules, interface copy boundaries, Base Sepolia limitations, Base mainnet blockers, transaction rail dependency, protocol client dependency, governance gates dependency, package test strategy, and no-secret package scan rules are complete.

Required follow-on work:

- Create governance gates package checklist.
- Create Base Sepolia demo launch gate checklist.
- Create ABI source policy.
- Create address source policy.
- Create Base Sepolia config map.
- Create public warning copy review.
- Create First Nations legal language review placeholder.
- Create package test strategy.
- Create no-secret package scan rule.
- Reference each remaining package gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write executable config package source code until package gates are complete.
- Do not create production mainnet config yet.
- Do not create production address config yet.
- Do not create production transaction enablement flags yet.
- Do not create production mint enablement flags yet.
- Do not create production treasury route config yet.
- Do not create production governance object config yet.
- Do not embed production addresses before source-of-truth approval.
- Do not use Base Sepolia addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use mock addresses as production addresses.
- Do not use screenshots as address source-of-truth.
- Do not use chat text as address source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Governance gates package gate checklist reference

Reference document: docs/checklists/V0_5_2_GOVERNANCE_GATES_PACKAGE_GATE_CHECKLIST.md

Reference commit: c44aa902a9d83b828fdf275f5b58588f5e9f1929

Reference captured UTC: 2026-10-04T18:53:52Z

Reference target: protocol client package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production governance.

This reference does not authorize production governance objects.

This reference does not authorize production role ownership.

This reference does not authorize production multisig assignments.

This reference does not authorize First Nations governance claims.

This reference does not authorize First Nations legal conclusions.

This reference does not authorize production treasury routing.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable governance gates package code.

This reference does not authorize any public mainnet mint interface.

This reference records that the governance gates package gate checklist exists as a controlled readiness artifact.

The governance gates package remains gate-blocked until governance authority rules, multisig/key-holder rules, First Nations legal review boundaries, corporate governance boundaries, treasury governance boundaries, emergency authority boundaries, operator authority boundaries, role owner mapping, transaction rail dependency, protocol client dependency, config dependency, Base Sepolia limitations, Base mainnet blockers, governance package test strategy, and no-secret package scan rules are complete.

Required follow-on work:

- Create ABI source policy.
- Create address source policy.
- Create Base Sepolia demo launch gate checklist.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference each remaining implementation gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write executable governance-gates package source code until package gates are complete.
- Do not create production governance gates yet.
- Do not create production role owner execution logic yet.
- Do not create production treasury approval logic yet.
- Do not create production First Nations governance logic yet.
- Do not create production multisig signer logic yet.
- Do not create production emergency action logic yet.
- Do not embed production governance objects before source-of-truth approval.
- Do not embed production role owners before source-of-truth approval.
- Do not use Base Sepolia governance as production governance.
- Do not use Anvil governance as production governance.
- Do not use mock governance as production governance.
- Do not use screenshots as governance source-of-truth.
- Do not use chat text as governance source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 ABI source policy reference

Reference document: docs/audits/V0_5_2_ABI_SOURCE_POLICY.md

Reference commit: 046ed38768988e61c0f3b2537e65e51d5e87bbad

Reference captured UTC: 2026-10-04T19:10:43Z

Reference target: protocol client package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production configuration.

This reference does not authorize production governance.

This reference does not authorize writing executable ABI client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI source policy exists as a controlled readiness artifact.

ABI-dependent package work remains blocked until approved ABI source hierarchy, Foundry artifact rules, explorer verification rules, Base Sepolia ABI boundaries, Base mainnet ABI boundaries, local Anvil ABI boundaries, ABI record required fields, disallowed ABI source controls, secret exclusion controls, ABI drift controls, and ABI review workflow are complete.

Required follow-on work:

- Create address source policy.
- Create ABI evidence record template.
- Create ABI checksum receipt template.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI source policy in package gates before executable ABI client source implementation.

No-go conditions preserved:

- Do not write executable ABI client code until ABI policy gates are complete.
- Do not create production protocol clients yet.
- Do not create production transaction rail ABI bindings yet.
- Do not create production write clients yet.
- Do not create production mint clients yet.
- Do not use screenshot-derived ABIs.
- Do not use chat-derived ABIs.
- Do not use manually edited ABIs without receipt.
- Do not use Base Sepolia ABIs as production ABIs.
- Do not use Anvil ABIs as production ABIs.
- Do not use uncommitted build artifacts as approved ABIs.
- Do not use wrong-branch build artifacts as approved ABIs.
- Do not use wrong-profile build artifacts as approved ABIs.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address source policy reference

Reference document: docs/audits/V0_5_2_ADDRESS_SOURCE_POLICY.md

Reference commit: 8151b22f61901d0a0ce3fe4bd16788f6e925329c

Reference captured UTC: 2026-10-04T20:49:56Z

Reference target: protocol client package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production addresses.

This reference does not authorize production governance objects.

This reference does not authorize production treasury routes.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production configuration.

This reference does not authorize writing executable address-dependent client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the address source policy exists as a controlled readiness artifact.

Address-dependent package work remains blocked until approved address source hierarchy, production address rules, testnet address rules, local Anvil address rules, Base mainnet address boundaries, contract address source rules, governance object address rules, treasury address source rules, operator address source rules, First Nations address boundaries, corporate address boundaries, checksum rules, ownership proof rules, disallowed address source controls, secret exclusion controls, address drift controls, and address review workflow are complete.

Required follow-on work:

- Create address evidence record template.
- Create address checksum receipt template.
- Create Base Sepolia address map.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference address source policy in package gates before executable address-dependent source implementation.

No-go conditions preserved:

- Do not write executable address-dependent client code until address policy gates are complete.
- Do not create production protocol clients yet.
- Do not create production transaction rail address bindings yet.
- Do not create production write clients yet.
- Do not create production mint clients yet.
- Do not use screenshot-derived addresses.
- Do not use chat-derived addresses.
- Do not use memory-derived addresses.
- Do not use manually copied addresses without receipt.
- Do not use Base Sepolia addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use mock addresses as production addresses.
- Do not use placeholder addresses as production addresses.
- Do not use unapproved production owner addresses.
- Do not use unapproved treasury addresses.
- Do not use unapproved governance objects.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address evidence record template reference

Reference document: docs/audits/V0_5_2_ADDRESS_EVIDENCE_RECORD_TEMPLATE.md

Reference commit: 8cf842065fad396728c1230eb0310c08c6b9158b

Reference captured UTC: 2026-10-05T08:56:12Z

Reference target: protocol client package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not approve any production operator.

This reference does not approve any production role owner.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable address-dependent client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the address evidence record template exists as a controlled readiness artifact.

Address use remains blocked until completed address evidence records are created from approved source-of-truth inputs, checksum reviewed, no-secret reviewed, committed, pushed, remotely confirmed, and paired with required approval evidence.

No-go conditions preserved:

- Do not use Base Sepolia address evidence as Base mainnet evidence.
- Do not use Anvil address evidence as production evidence.
- Do not use mock address evidence as production evidence.
- Do not use screenshot address evidence as production evidence.
- Do not use chat text address evidence as production evidence.
- Do not use memory-derived address evidence as production evidence.
- Do not approve any record containing secrets.
- Do not approve any record missing checksum review.
- Do not approve any record missing approval evidence.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address checksum receipt template reference

Reference document: docs/audits/V0_5_2_ADDRESS_CHECKSUM_RECEIPT_TEMPLATE.md

Reference commit: 1382bb15914ae132061940c80a455980ad9c4e4b

Reference captured UTC: 2026-10-05T09:11:21Z

Reference target: protocol client package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not approve any production operator.

This reference does not approve any production role owner.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize any public mainnet mint interface.

This reference records that the address checksum receipt template exists as a controlled readiness artifact.

A checksum-valid address is not automatically approved.

A checksum-valid address does not prove ownership.

A checksum-valid address does not prove governance authority.

A checksum-valid address does not prove treasury authority.

A checksum-valid address does not prove deployment authorization.

Address use remains blocked until completed checksum receipts are paired with completed address evidence records, source-of-truth evidence, approval evidence, no-secret review, and final readiness approval where required.

Required follow-on work:

- Create ABI evidence record template.
- Create ABI checksum receipt template.
- Create Base Sepolia address map.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference checksum receipt template in package gates before executable address-dependent source implementation.

No-go conditions preserved:

- Do not use a checksum receipt as ownership proof.
- Do not use a checksum receipt as governance approval.
- Do not use a checksum receipt as treasury approval.
- Do not use a checksum receipt as legal approval.
- Do not use a checksum receipt as deployment authorization.
- Do not use Base Sepolia checksum evidence as Base mainnet evidence.
- Do not use Anvil checksum evidence as production evidence.
- Do not use mock checksum evidence as production evidence.
- Do not use screenshot checksum evidence as production evidence.
- Do not use chat text checksum evidence as production evidence.
- Do not use memory-derived checksum evidence as production evidence.
- Do not approve any receipt containing secrets.
- Do not approve any receipt missing reviewer identity.
- Do not approve any receipt missing source evidence.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 ABI evidence record template reference

Reference document: docs/audits/V0_5_2_ABI_EVIDENCE_RECORD_TEMPLATE.md

Reference commit: f949e4b64f85cd63e24391fa072a2d2b72aa21f2

Reference captured UTC: 2026-10-05T09:29:17Z

Reference target: protocol client package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI evidence record template exists as a controlled readiness artifact.

ABI use remains blocked until completed ABI evidence records are created from approved ABI sources, reviewed, checksum-confirmed where required, paired with address evidence where required, committed, pushed, remotely confirmed, and paired with required build, explorer, deployment, release, or approval evidence.

Required follow-on work:

- Create ABI checksum receipt template.
- Create Base Sepolia ABI inventory receipt.
- Create Base Sepolia address map.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI evidence record template in package gates before executable ABI-dependent source implementation.

No-go conditions preserved:

- Do not use an ABI evidence record outside its stated network scope.
- Do not use an ABI evidence record outside its stated chain ID.
- Do not use an ABI evidence record outside its stated contract or module.
- Do not use a Base Sepolia ABI evidence record as Base mainnet evidence.
- Do not use Anvil ABI evidence as production evidence.
- Do not use screenshot ABI evidence as production evidence.
- Do not use chat text ABI evidence as production evidence.
- Do not use memory-derived ABI evidence as production evidence.
- Do not use manually edited ABI evidence without receipt.
- Do not approve any ABI record containing secrets.
- Do not approve any ABI record missing source commit.
- Do not approve any ABI record with unresolved drift.
- Do not use write-capable ABI paths until final gates are complete.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 ABI checksum receipt template reference

Reference document: docs/audits/V0_5_2_ABI_CHECKSUM_RECEIPT_TEMPLATE.md

Reference commit: 4722469d10f94d86423632ff6fb46edf37dda16f

Reference captured UTC: 2026-10-06T08:04:02Z

Reference target: protocol client package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI checksum receipt template exists as a controlled readiness artifact.

ABI checksum confirmation is not ABI approval.

ABI checksum confirmation does not prove the ABI is correct for a deployed contract.

ABI checksum confirmation does not prove source verification.

ABI checksum confirmation does not prove address correctness.

ABI checksum confirmation does not prove governance approval.

ABI checksum confirmation does not prove treasury approval.

ABI checksum confirmation does not authorize write execution.

ABI checksum confirmation does not authorize deployment.

ABI use remains blocked until completed ABI checksum receipts are paired with completed ABI evidence records, approved ABI source evidence, address evidence where required, build evidence where required, explorer evidence where required, release evidence where required, no-secret review, and final readiness approval where required.

Required follow-on work:

- Create Base Sepolia ABI inventory receipt.
- Create Base Sepolia address map.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI checksum receipt template in package gates before executable ABI-dependent source implementation.

No-go conditions preserved:

- Do not use an ABI checksum receipt outside its stated network scope.
- Do not use an ABI checksum receipt outside its stated chain ID.
- Do not use an ABI checksum receipt outside its stated contract or module.
- Do not use a Base Sepolia ABI checksum receipt as Base mainnet evidence.
- Do not use Anvil ABI checksum evidence as production evidence.
- Do not use screenshot ABI checksum evidence as production evidence.
- Do not use chat text ABI checksum evidence as production evidence.
- Do not use memory-derived ABI checksum evidence as production evidence.
- Do not use manually edited ABI checksum evidence without receipt.
- Do not approve any ABI checksum receipt containing secrets.
- Do not approve any ABI checksum receipt missing source commit where required.
- Do not approve any ABI checksum receipt with unresolved drift.
- Do not use write-capable ABI paths until final gates are complete.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI inventory receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md

Reference commit: 82fba6d0052aa7d42d4dc86049e98cc6e7b8b48b

Reference captured UTC: 2026-10-06T08:23:58Z

Reference target: protocol client package gate checklist

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia ABI inventory receipt exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Base Sepolia ABI use remains blocked until completed ABI evidence records, ABI checksum receipts, address evidence records, address checksum receipts, explorer/source verification receipts where applicable, no-secret review, package gates, and public-demo approval are complete.

Required follow-on work:

- Create Base Sepolia address map.
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

- Do not use this receipt as production ABI approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet deployment authorization.
- Do not use this receipt as transaction rail authorization.
- Do not use this receipt as governance approval.
- Do not use this receipt as treasury approval.
- Do not use Base Sepolia ABI evidence as Base mainnet evidence.
- Do not use Base Sepolia addresses as Base mainnet addresses.
- Do not expose write-capable clients from this receipt.
- Do not create production config from this receipt.
- Do not create production public interface config from this receipt.
- Do not create production corporate interface config from this receipt.
- Do not create production First Nations interface config from this receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address map reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_MAP.md

Reference commit: c30dbdba2f141d84b36532c5d661884244dba807

Reference captured UTC: 2026-10-06T08:38:35Z

Reference target: protocol client package gate checklist

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

Reference target: protocol client package gate checklist

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

Reference target: protocol client package gate checklist

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
