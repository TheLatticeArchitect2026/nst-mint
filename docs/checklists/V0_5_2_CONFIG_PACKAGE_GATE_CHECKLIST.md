# NST Core v0.5.2 Config Package Gate Checklist

Status: DRAFT GATE CHECKLIST
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-04T18:08:48Z
Current commit at creation: 7ec5d884de7ae267572109a3a738cc2e0e309532

Protocol client package gate commit: e410e534eace03eb712f0a8cc90b7fd2cd479314

Transaction rail package gate commit: 7ec5d884de7ae267572109a3a738cc2e0e309532

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize production configuration.

This document does not authorize production contract addresses.

This document does not authorize production treasury routing.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize any public mainnet mint interface.

This document does not authorize writing executable config package code yet.

This checklist is the required gate before executable source code is added to packages/config.

## Source documents

Source application infrastructure blueprint: docs/plans/V0_5_2_APPLICATION_INFRASTRUCTURE_BLUEPRINT.md

Source application source tree scaffold record: docs/plans/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_RECORD.md

Source application source tree scaffold gate checklist: docs/checklists/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_GATE_CHECKLIST.md

Source transaction rail architecture blueprint: docs/plans/V0_5_2_TRANSACTION_RAIL_ARCHITECTURE_BLUEPRINT.md

Source transaction rail package gate checklist: docs/checklists/V0_5_2_TRANSACTION_RAIL_PACKAGE_GATE_CHECKLIST.md

Source protocol client package gate checklist: docs/checklists/V0_5_2_PROTOCOL_CLIENT_PACKAGE_GATE_CHECKLIST.md

Source public corporate interface and Base Sepolia demo plan: docs/plans/V0_5_2_PUBLIC_CORPORATE_INTERFACE_AND_BASE_SEPOLIA_DEMO_PLAN.md

Source Base Sepolia deployment inventory and public interface decision record: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source mainnet readiness blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md

Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md

Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md

Source final production address collection package: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md

Source production address source-of-truth request packet: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md

Source production address response review checklist: docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md

Source config package scaffold: packages/config/README.md

Source protocol client package scaffold: packages/protocol-clients/README.md

Source transaction rail package scaffold: packages/transaction-rail/README.md

Source governance gates package scaffold: packages/governance-gates/README.md

## Purpose

This checklist defines the controlled gate for the future packages/config source package.

The package is intended to become the public, non-secret, reviewable configuration layer for NST Lattice applications and packages.

This checklist prevents the project from writing executable configuration code before network, address, ABI, feature flag, legal language, public interface, demo, and production boundaries are defined.

The config package must remain blocked until this gate is complete, reviewed, committed, pushed, and referenced in readiness gates.

## Current controlled status

| Area | Current result | Status |
| --- | --- | --- |
| packages/config scaffold | README-only scaffold exists | COMPLETE |
| Config package executable code | Not created | BLOCKED |
| Transaction rail package gate | Created and committed | COMPLETE |
| Protocol client package gate | Created and committed | COMPLETE |
| Base Sepolia inventory | Created and committed | COMPLETE |
| Final production address collection package | Created and committed | COMPLETE |
| Final production address approvals | Not complete | OPEN |
| Production deployment config | Not finalized | BLOCKED |
| Mainnet config | Not authorized | BLOCKED |
| Public production config | Not authorized | BLOCKED |
| Mainnet deployment | Not authorized | BLOCKED |

## Config package scope

The future config package may eventually define public configuration for:

- supported chain IDs;
- supported network names;
- Base Sepolia demo mode;
- Base mainnet production mode after approval;
- local Anvil development mode;
- public contract address maps;
- ABI source references;
- explorer URL templates;
- feature flags;
- app mode flags;
- public warning language;
- testnet disclaimers;
- production disclaimers;
- corporate interface copy;
- First Nations interface boundary copy;
- public site interface copy;
- admin console read-only mode flags;
- transaction rail configuration;
- protocol client configuration;
- governance gate configuration.

The config package must not contain:

- private keys;
- seed phrases;
- wallet recovery phrases;
- deployer keys;
- wallet secrets;
- private RPC credentials;
- privileged signer material;
- production secrets;
- keystore passwords;
- hardware wallet recovery information;
- private environment values;
- hidden treasury instructions;
- unapproved production addresses;
- Base Sepolia addresses presented as production addresses;
- Anvil addresses presented as production addresses;
- mock addresses presented as production addresses.

## Public config rule

The config package may contain only public, reviewable, non-secret values.

A value is eligible for config only if it can safely be committed to the public repository.

A value is not eligible for config if disclosure would compromise:

- funds;
- deployer control;
- role ownership;
- wallet custody;
- RPC access;
- treasury routing security;
- governance authority;
- signer recovery;
- operational security.

Every config value must have:

- purpose;
- source document;
- source commit;
- reviewer;
- approval status;
- network scope;
- expiration or review condition where applicable;
- no-secret confirmation.

## Secret exclusion rule

The config package must never include:

- private keys;
- seed phrases;
- wallet recovery phrases;
- wallet secrets;
- deployer keys;
- mnemonic phrases;
- keystore passwords;
- hardware wallet recovery data;
- private RPC credentials;
- private API keys;
- personal access tokens;
- production signing material;
- treasury signing material;
- multisig signer private material;
- private legal correspondence;
- private personal information;
- bank information;
- tax information;
- identity documents.

If any secret appears in config, the config package must be rejected.

If any secret appears in a readiness document, the readiness package must be rejected.

If any secret appears in an app, package, or infra file, the working tree must be stopped and remediated.

## Network config gate

Before config package code is written, network configuration rules must be approved.

Required network config categories include:

- local Anvil development;
- Base Sepolia testnet;
- Base mainnet production;
- unsupported network;
- wrong network;
- unknown network.

Every network entry must include:

- chain ID;
- network label;
- public RPC guidance or placeholder policy;
- explorer base URL;
- currency symbol;
- demo status;
- production status;
- allowed interfaces;
- blocked interfaces;
- warning language;
- approval source.

## Local Anvil config boundary

Local Anvil config may be used only for local development.

Local Anvil config must not be used for production.

Local Anvil config must not be presented as Base Sepolia.

Local Anvil config must not be presented as Base mainnet.

Local Anvil addresses must not be used as production addresses.

Local Anvil addresses must not be used as public demo addresses.

Local Anvil values must be clearly labeled development-only.

## Base Sepolia config boundary

Base Sepolia config may be used only for testnet demo mode after demo launch approval.

Base Sepolia config must show:

- testnet-only status;
- no-production-value warning;
- no-mainnet-rights warning;
- no-production-treasury warning;
- no-investment-offer warning;
- no-operational-reliance warning;
- chain ID;
- contract addresses from approved inventory only;
- explorer links;
- demo mode status.

Base Sepolia config must not:

- imply mainnet deployment;
- imply legal rights;
- imply production ownership;
- imply treasury reliance;
- imply revenue rights;
- imply First Nations participation approval;
- imply corporate onboarding approval;
- imply production readiness.

## Base mainnet config boundary

Base mainnet config remains blocked.

Base mainnet config may only be created after:

- final production addresses are approved;
- final owner address template contains no TBD production owner values;
- final address approval receipt is complete;
- final deployment config exists;
- final deployment config checksum is captured;
- final deployment config manual review receipt is captured;
- final read-only verification commands are prepared;
- final release evidence bundle is complete;
- final human approval receipt is complete;
- deployment command is explicitly authorized.

Before those conditions are complete, Base mainnet config must remain absent or marked blocked.

## Contract address config gate

Every contract address config entry must include:

- contract name;
- module;
- network;
- chain ID;
- address;
- checksum confirmation;
- address source document;
- address source commit;
- deployment evidence;
- explorer verification evidence;
- approval receipt;
- status;
- review date;
- reviewer;
- no-secret confirmation.

No contract address may be configured from:

- screenshot;
- chat text;
- memory;
- guesswork;
- placeholder;
- local mock;
- Anvil address;
- Base Sepolia address presented as Base mainnet;
- unapproved external source.

## ABI config gate

Every ABI config entry must include:

- contract name;
- artifact source path;
- source commit;
- build profile;
- checksum where applicable;
- explorer verification match where applicable;
- release evidence reference;
- intended network;
- status;
- reviewer;
- no-secret confirmation.

ABI config must not use:

- unverified pasted ABI;
- screenshot-derived ABI;
- chat-derived ABI;
- stale build output;
- mutable remote artifact without checksum;
- unapproved build profile output.

## Feature flag gate

Feature flags must be public and non-secret.

Feature flags may include:

- public site enabled;
- corporate site enabled;
- First Nations portal enabled;
- Base Sepolia demo enabled;
- mainnet production mode enabled;
- mint interface enabled;
- read-only dashboard enabled;
- admin console read-only enabled;
- transaction rail write helpers enabled;
- protocol client write helpers enabled.

Feature flags must not silently enable:

- production mainnet transactions;
- minting;
- treasury routing;
- role mutation;
- admin controls;
- registry mutation;
- vault issuance;
- reward grant mutation;
- First Nations legal claims;
- corporate production reliance.

Any production feature flag must require explicit final approval.

## Interface copy config gate

Public warning language may be placed in config only if reviewed.

Required public copy categories include:

- testnet-only warning;
- no-production-value warning;
- no-mainnet-rights warning;
- no-investment-offer warning;
- no-legal-rights warning;
- no-operational-reliance warning;
- network mismatch warning;
- wallet safety warning;
- transaction pending warning;
- transaction confirmed language;
- transaction failed language;
- user rejection language.

Public copy must not promise:

- returns;
- profits;
- government approval;
- First Nations approval;
- treaty-law conclusions;
- tax treatment;
- securities treatment;
- guaranteed yield;
- production functionality before launch.

## First Nations config boundary

First Nations-facing config must not be finalized without specialized legal review.

The First Nations lawyer specializing in Treaty law should review config language related to:

- treaty law;
- governance framing;
- rights language;
- consent language;
- representation language;
- revenue language;
- community onboarding;
- disclaimers;
- possible multisig/key-holder role design.

The config package must not encode final First Nations authority assumptions without legal language and governance evidence.

The config package must not claim First Nations participation approval unless the approval is documented.

The config package must not configure First Nations revenue routes until production address and treasury approvals are complete.

## Corporate config boundary

Corporate-facing config must collect only non-secret business information.

Corporate config must not request:

- private keys;
- seed phrases;
- wallet recovery information;
- deployer keys;
- wallet secrets;
- bank login data;
- signing material.

Corporate config may include public intake categories only after review.

Corporate config must preserve:

- no investment solicitation;
- no production reliance until launch;
- no treasury approval until final approval;
- no legal conclusion without review;
- no deployment authorization.

## Public site config boundary

Public site config must preserve safety boundaries.

Public site config must display:

- project status;
- network status;
- demo status;
- production status;
- warnings;
- documentation links;
- source-of-truth process;
- no-deployment notice where applicable.

Public site config must not expose a production transaction flow until final approval.

Public site config must not imply Base Sepolia is production.

Public site config must not imply testnet tokens have production value.

## Admin console config boundary

Admin console config remains read-only until privileged operations are separately reviewed.

Admin console config may eventually enable display-only modules for:

- contract address status;
- role owner status;
- treasury route status;
- pause status;
- mint status;
- metadata freeze status;
- registry status;
- yield status;
- release evidence status;
- deployment readiness status.

Admin console config must not enable write operations before privileged operations review.

## Transaction rail config dependency

The transaction rail depends on config for:

- chain IDs;
- network labels;
- contract address maps;
- explorer URL templates;
- action availability;
- feature flags;
- warning language;
- testnet mode;
- production mode;
- receipt paths.

Transaction rail must not treat missing config as production-ready.

Transaction rail must fail closed when config is incomplete.

Transaction rail must block write transactions if config approval is incomplete.

## Protocol client config dependency

Protocol clients depend on config for:

- contract addresses;
- ABI source references;
- network support;
- read-only availability;
- write-method availability;
- explorer links;
- feature flags;
- testnet warnings;
- production warnings.

Protocol clients must not fall back to unapproved addresses.

Protocol clients must not silently substitute networks.

Protocol clients must not create production clients from testnet config.

Protocol clients must fail closed when config is incomplete.

## Governance gates config dependency

Governance gates depend on config for:

- approved governance owner objects;
- emergency authority;
- treasury authority;
- operator authority;
- role owner mapping;
- multisig or governance object labels;
- approval status;
- route control status.

Governance config must remain blocked until governance gates are complete.

## Required config categories

| Category | Required source | Status |
| --- | --- | --- |
| Local Anvil development config | Development-only record | OPEN |
| Base Sepolia testnet config | Base Sepolia deployment inventory | OPEN |
| Base mainnet production config | Final production address approval receipt | BLOCKED |
| Contract address config | Address source-of-truth package | OPEN |
| ABI source config | Committed build artifacts and verification receipts | OPEN |
| Explorer config | Public explorer URL review | OPEN |
| Feature flag config | Interface readiness review | OPEN |
| Public warning copy | Public interface review | OPEN |
| Corporate copy | Corporate interface review | OPEN |
| First Nations copy | Treaty-law legal review | OPEN |
| Admin console read-only config | Admin console review | OPEN |
| Transaction rail config | Transaction rail package gate | OPEN |
| Protocol client config | Protocol client package gate | OPEN |
| Governance gate config | Governance gate package checklist | OPEN |

## Required evidence before executable config source

Before executable config package source code is created, the project must complete:

| Evidence | Required state | Status |
| --- | --- | --- |
| Config package gate checklist | Created and committed | OPEN |
| Transaction rail package gate checklist | Created and committed | COMPLETE |
| Protocol client package gate checklist | Created and committed | COMPLETE |
| Governance gates package checklist | Created and committed | OPEN |
| ABI source policy | Created and committed | OPEN |
| Address source policy | Created and committed | OPEN |
| Base Sepolia config map | Created and committed | OPEN |
| Base mainnet config map | Blocked until production approvals | BLOCKED |
| Public warning copy review | Created and committed | OPEN |
| First Nations legal language review | Required before finalization | OPEN |
| Package test strategy | Created and committed | OPEN |
| No-secret package scan rule | Created and committed | OPEN |

## Approved first implementation after gates

The first future config package implementation should not be production mainnet config.

The first future implementation should be one of:

- type-only network mode enum;
- type-only chain ID constants for development and testnet;
- type-only config schema;
- no-secret config validator;
- read-only public warning copy constant;
- Base Sepolia demo config placeholder marked testnet-only;
- explorer URL template helper.

The first implementation must not include:

- production mainnet transaction enablement;
- production mint enablement;
- production treasury route enablement;
- production role owner configuration;
- production private RPC credentials;
- private keys;
- seed phrases;
- wallet recovery information;
- deployer keys;
- wallet secrets.

## No-go conditions

Do not write executable config package source code until this checklist is committed and referenced.

Do not create production mainnet config yet.

Do not create production address config yet.

Do not create production transaction enablement flags yet.

Do not create production mint enablement flags yet.

Do not create production treasury route config yet.

Do not create production governance object config yet.

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
- it states executable config package code is not authorized yet;
- it defines public config boundaries;
- it defines secret exclusion boundaries;
- it defines network config boundaries;
- it defines address config boundaries;
- it defines ABI config boundaries;
- it defines feature flag boundaries;
- it defines interface copy boundaries;
- it defines First Nations legal review boundaries;
- it defines Base Sepolia limitations;
- it defines Base mainnet blockers;
- it defines transaction rail dependency;
- it defines protocol client dependency;
- it defines governance gates dependency;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it includes no production address approvals;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Governance gates package gate checklist reference

Reference document: docs/checklists/V0_5_2_GOVERNANCE_GATES_PACKAGE_GATE_CHECKLIST.md

Reference commit: c44aa902a9d83b828fdf275f5b58588f5e9f1929

Reference captured UTC: 2026-10-04T18:53:52Z

Reference target: config package gate checklist

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

Reference target: config package gate checklist

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

Reference target: config package gate checklist

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

Reference target: config package gate checklist

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

Reference target: config package gate checklist

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

Reference target: config package gate checklist

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

Reference target: config package gate checklist

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

Reference target: config package gate checklist

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
