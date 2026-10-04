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
