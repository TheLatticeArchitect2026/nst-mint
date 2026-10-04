# NST Core v0.5.2 Governance Gates Package Gate Checklist

Status: DRAFT GATE CHECKLIST
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-04T18:47:50Z
Current commit at creation: c013960fa525a5138aa225f9650b88577a1c5781

Config package gate commit: 9c152de9c889c453168846ac28ef3ad69fb10dd7

Protocol client package gate commit: c013960fa525a5138aa225f9650b88577a1c5781

Transaction rail package gate commit: c013960fa525a5138aa225f9650b88577a1c5781

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize production governance.

This document does not authorize production governance objects.

This document does not authorize production role ownership.

This document does not authorize production multisig assignments.

This document does not authorize First Nations governance claims.

This document does not authorize First Nations legal conclusions.

This document does not authorize production treasury routing.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize any public mainnet mint interface.

This document does not authorize writing executable governance gates package code yet.

This checklist is the required gate before executable source code is added to packages/governance-gates.

## Source documents

Source application infrastructure blueprint: docs/plans/V0_5_2_APPLICATION_INFRASTRUCTURE_BLUEPRINT.md

Source application source tree scaffold record: docs/plans/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_RECORD.md

Source application source tree scaffold gate checklist: docs/checklists/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_GATE_CHECKLIST.md

Source transaction rail architecture blueprint: docs/plans/V0_5_2_TRANSACTION_RAIL_ARCHITECTURE_BLUEPRINT.md

Source transaction rail package gate checklist: docs/checklists/V0_5_2_TRANSACTION_RAIL_PACKAGE_GATE_CHECKLIST.md

Source protocol client package gate checklist: docs/checklists/V0_5_2_PROTOCOL_CLIENT_PACKAGE_GATE_CHECKLIST.md

Source config package gate checklist: docs/checklists/V0_5_2_CONFIG_PACKAGE_GATE_CHECKLIST.md

Source public corporate interface and Base Sepolia demo plan: docs/plans/V0_5_2_PUBLIC_CORPORATE_INTERFACE_AND_BASE_SEPOLIA_DEMO_PLAN.md

Source mainnet readiness blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md

Source final production address collection package: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md

Source production address source-of-truth request packet: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md

Source production address response review checklist: docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md

Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md

Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md

Source final acceptance gate checklist: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md

Source governance gates package scaffold: packages/governance-gates/README.md

Source config package scaffold: packages/config/README.md

Source protocol clients package scaffold: packages/protocol-clients/README.md

Source transaction rail package scaffold: packages/transaction-rail/README.md

## Purpose

This checklist defines the controlled gate for the future packages/governance-gates source package.

The package is intended to become the public, non-secret, reviewable decision-gate layer for NST Lattice applications and transaction flows.

This checklist prevents the project from writing executable governance-gating code before governance roles, signer boundaries, address authority, legal review, First Nations review, treasury authority, emergency authority, role owner authority, and package dependencies are controlled.

The governance gates package must remain blocked until this checklist is complete, reviewed, committed, pushed, and referenced in readiness gates.

## Current controlled status

| Area | Current result | Status |
| --- | --- | --- |
| packages/governance-gates scaffold | README-only scaffold exists | COMPLETE |
| Governance gates executable package code | Not created | BLOCKED |
| Config package gate | Created and committed | COMPLETE |
| Protocol client package gate | Created and committed | COMPLETE |
| Transaction rail package gate | Created and committed | COMPLETE |
| Final production address collection package | Created and committed | COMPLETE |
| Final production address approvals | Not complete | OPEN |
| Final governance objects | Not approved | OPEN |
| First Nations legal language | Not finalized | OPEN |
| First Nations key-holder role | Not approved | OPEN |
| Production deployment config | Not finalized | BLOCKED |
| Mainnet governance execution | Not authorized | BLOCKED |
| Mainnet deployment | Not authorized | BLOCKED |

## Governance gates package scope

The future governance gates package may eventually define public decision rules for:

- governance authority;
- emergency authority;
- treasury authority;
- operator authority;
- role ownership;
- multisig threshold requirements;
- contract admin permissions;
- pauser permissions;
- mint manager permissions;
- metadata manager permissions;
- treasury manager permissions;
- swap operator permissions;
- registry authority;
- vault credential authority;
- claim authority;
- reward grant authority;
- First Nations legal review requirements;
- corporate participation review requirements;
- public interface launch requirements;
- Base Sepolia demo launch requirements;
- Base mainnet production launch requirements;
- transaction rail enablement;
- protocol client write enablement;
- config package enablement;
- final approval conditions.

The package must not contain:

- private keys;
- seed phrases;
- wallet recovery phrases;
- deployer keys;
- wallet secrets;
- private RPC credentials;
- privileged signing material;
- signer private material;
- keystore passwords;
- hardware wallet recovery information;
- private legal advice;
- private First Nations correspondence;
- private corporate onboarding data;
- unapproved production governance objects;
- unapproved production multisig addresses;
- unapproved production signer addresses;
- mock governance authority presented as production authority.

## Governance package rule

The governance gates package may contain only public, non-secret, reviewable governance decision rules.

A governance rule is eligible for the package only if it is:

- public;
- reviewable;
- non-secret;
- source-documented;
- approval-status documented;
- network-scoped;
- legally reviewed where required;
- treasury-reviewed where required;
- role-reviewed where required;
- not a deployment command;
- not a private signing instruction;
- not a private legal conclusion.

A governance rule is not eligible if it contains:

- signer secrets;
- wallet secrets;
- deployer secrets;
- private legal advice;
- undisclosed private agreements;
- unverifiable authority claims;
- unapproved First Nations governance assumptions;
- unapproved production treasury authority;
- unapproved role owner assignments.

## Secret exclusion rule

The governance gates package must never include:

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

Only public addresses, public governance objects, public threshold descriptions, public role labels, approval references, and non-secret review receipts may be documented.

## Governance authority gate

Before governance-gates package code is written, governance authority rules must be complete.

Governance authority rules must define:

- authority type;
- governing object;
- public address or public object identifier;
- network scope;
- chain ID;
- controlled contract or module;
- role affected;
- allowed action class;
- disallowed action class;
- approval source;
- source commit;
- reviewer;
- status;
- no-secret confirmation.

Governance authority cannot be inferred from screenshots, chat text, memory, guesswork, or placeholders.

Governance authority cannot be treated as production-final while any required value remains TBD.

## Multisig and key-holder gate

Any multisig or key-holder rule must define:

- purpose;
- signer class;
- threshold;
- authority scope;
- recovery process;
- emergency boundary;
- treasury boundary;
- operator boundary;
- legal review status;
- custody review status;
- approval evidence;
- public address evidence;
- no-secret confirmation.

This package may describe public signer-role categories.

This package must not document private signer keys.

This package must not document seed phrases.

This package must not document recovery phrases.

This package must not document private operational key custody instructions.

## First Nations governance boundary

First Nations governance language must not be finalized without specialized legal review.

The First Nations lawyer specializing in Treaty law should review and author or approve language related to:

- treaty-law language;
- rights language;
- consent language;
- governance framing;
- representation language;
- revenue participation language;
- community onboarding language;
- disclaimers;
- key-holder role design;
- multisig participation design;
- dispute and succession boundaries;
- public communication language.

The governance gates package must not claim First Nations participation approval unless the approval is documented.

The governance gates package must not configure First Nations revenue routing until production treasury approvals are complete.

The governance gates package must not treat any First Nations legal or treaty conclusion as final without legal evidence.

## Corporate governance boundary

Corporate governance gates may define public review rules for:

- corporate intake;
- enterprise participation;
- business use-case review;
- integration readiness;
- compliance review;
- legal review;
- non-secret documentation;
- demo access;
- production access.

Corporate governance gates must not request:

- private keys;
- seed phrases;
- wallet recovery information;
- deployer keys;
- wallet secrets;
- bank login data;
- signing material.

Corporate governance gates must preserve:

- no investment solicitation;
- no production reliance until launch;
- no treasury approval until final approval;
- no legal conclusion without review;
- no deployment authorization.

## Treasury governance boundary

Treasury governance gates must control any rule related to:

- founder payout wallet;
- yield pool receiver;
- CFT treasury destination;
- fee or BPS recipient controls;
- TreasuryRouter route destinations;
- rescue destination;
- deployment funding wallet;
- emergency treasury authority;
- treasury multisig;
- treasury route approvals.

No treasury route may be treated as production-final until:

- final production address package is complete;
- final production address approval receipt is complete;
- final owner address template contains no TBD production owner values;
- treasury authority is approved;
- route destination is approved;
- checksum review is complete;
- deployment config review is complete;
- final human approval is complete.

## Emergency authority boundary

Emergency authority gates must define:

- emergency multisig or governance object;
- emergency pauser authority;
- emergency rescue authority;
- emergency response boundary;
- emergency non-routine authority;
- separation from routine operators where practical;
- approval evidence;
- no-secret confirmation.

Emergency authority must not become a routine operator bypass.

Emergency authority must not bypass final human approval for mainnet deployment.

## Operator authority boundary

Operator authority gates must define:

- operator role;
- operator address or governance object;
- temporary bootstrap authority status;
- handoff requirement;
- removal requirement;
- limitation requirement;
- approval evidence;
- read-only verification requirement;
- no-secret confirmation.

Bootstrap operators must be temporary or explicitly approved.

Bootstrap operators must not retain production powers without approval.

Operator controls must not bypass governance approval.

## Role owner mapping gate

Role owner mapping must cover:

- DEFAULT_ADMIN_ROLE;
- PAUSER_ROLE;
- MINT_MANAGER_ROLE;
- METADATA_MANAGER_ROLE;
- TREASURY_MANAGER_ROLE;
- SWAP_OPERATOR_ROLE;
- CFT admin roles;
- CFT minter authority;
- CFT pauser authority;
- TreasuryRouter authority;
- ShieldRegistry authority;
- VaultRegistry authority;
- YieldPool claim authority;
- RewardEscrow grant authority.

Every role owner must map to an approved public governance object or public production address.

Every role owner must have approval evidence.

Every role owner must have source-of-truth evidence.

Every role owner must have no-secret confirmation.

## Transaction rail governance dependency

The transaction rail must depend on governance gates for:

- write-action allow or block;
- admin action allow or block;
- mint action allow or block;
- treasury action allow or block;
- registry action allow or block;
- vault action allow or block;
- reward action allow or block;
- emergency action allow or block;
- production feature enablement;
- final approval checks.

The transaction rail must fail closed when governance gates are incomplete.

The transaction rail must not broadcast a privileged transaction if governance gate status is OPEN or BLOCKED.

## Protocol client governance dependency

Protocol clients must depend on governance gates for:

- role owner reads;
- privileged write availability;
- admin method availability;
- treasury method availability;
- registry method availability;
- metadata method availability;
- pause method availability;
- rescue method availability;
- final status checks.

Protocol clients must not independently authorize privileged actions.

Protocol clients must not bypass governance gate decisions.

Protocol clients must fail closed when governance status is incomplete.

## Config governance dependency

Config must depend on governance gates for:

- production feature enablement;
- governance object addresses;
- role owner mapping;
- treasury route approvals;
- First Nations portal status;
- corporate portal status;
- admin console status;
- mainnet production status.

Config must not enable production mode until governance gates are complete.

Config must not configure First Nations authority without legal review.

Config must not configure treasury routes without treasury approval.

## Base Sepolia governance boundary

Base Sepolia governance gates may support testnet-only demo review.

Base Sepolia governance gates must show:

- testnet-only status;
- no-production-value warning;
- no-mainnet-rights warning;
- no-production-treasury warning;
- no-investment-offer warning;
- no-legal-rights warning;
- no-operational-reliance warning.

Base Sepolia governance gates must not be presented as production governance.

Base Sepolia governance gates must not imply mainnet legal rights.

Base Sepolia governance gates must not imply First Nations participation approval.

## Base mainnet governance boundary

Base mainnet governance gates remain blocked until:

- final production address package is approved;
- final owner address template contains no TBD production owner values;
- final role owner mapping contains no TBD values;
- final treasury route mapping contains no TBD values;
- final operator handoff is complete;
- First Nations legal review is complete where required;
- corporate legal review is complete where required;
- deployment config review is complete;
- read-only verification command set is complete;
- release evidence bundle is complete;
- final human approval receipt is complete.

No Base mainnet governance gate may authorize deployment by itself.

Only a complete final approval package plus explicit human approval can authorize moving toward a candidate deployment command.

## Required governance categories

| Category | Required source | Status |
| --- | --- | --- |
| Governance multisig or governance object | Final governance approval record | OPEN |
| Emergency multisig | Final emergency authority approval record | OPEN |
| Treasury multisig | Final treasury approval record | OPEN |
| Operator multisig | Final operator approval record | OPEN |
| Mint authority | Final mint authority approval record | OPEN |
| Metadata operator | Final metadata authority approval record | OPEN |
| Vetting operator | ShieldRegistry authority approval record | OPEN |
| Credential operator | VaultRegistry authority approval record | OPEN |
| Claim operator | YieldPool claim approval record | OPEN |
| Founder receipt wallet or governance object | Founder custody approval record | OPEN |
| Rescue destination | Emergency and treasury approval record | OPEN |
| Deployment funding wallet | Deployment funding approval record | OPEN |
| Bootstrap operator | Temporary deployment-only approval or removal record | OPEN |
| First Nations governance role | Treaty-law review and approval record | OPEN |
| Corporate participation gate | Corporate legal and operating review record | OPEN |

## Required evidence before executable governance gate source

Before executable governance-gates package source code is created, the project must complete:

| Evidence | Required state | Status |
| --- | --- | --- |
| Governance gates package gate checklist | Created and committed | OPEN |
| Config package gate checklist | Created and committed | COMPLETE |
| Protocol client package gate checklist | Created and committed | COMPLETE |
| Transaction rail package gate checklist | Created and committed | COMPLETE |
| Final governance approval record | Created and committed | OPEN |
| Final emergency authority approval record | Created and committed | OPEN |
| Final treasury approval record | Created and committed | OPEN |
| Final operator approval record | Created and committed | OPEN |
| Final role owner matrix | No TBD production values | OPEN |
| Final treasury route matrix | No TBD production values | OPEN |
| First Nations legal review | Required before finalization | OPEN |
| Corporate legal review | Required before production use | OPEN |
| Governance package test strategy | Created and committed | OPEN |
| No-secret package scan rule | Created and committed | OPEN |

## Approved first implementation after gates

The first future governance-gates package implementation should not be a production governance execution layer.

The first future implementation should be one of:

- type-only governance status enum;
- type-only authority category enum;
- type-only gate result type;
- type-only blocker result type;
- no-secret governance input validator;
- read-only approval status helper;
- read-only network status helper;
- read-only feature gate helper;
- local-only test fixture clearly marked non-production.

The first implementation must not include:

- production mainnet governance enablement;
- production treasury approval logic;
- production signer logic;
- production key handling;
- production private RPC credentials;
- private keys;
- seed phrases;
- wallet recovery information;
- deployer keys;
- wallet secrets.

## No-go conditions

Do not write executable governance-gates package source code until this checklist is committed and referenced.

Do not create production governance gates yet.

Do not create production role owner execution logic yet.

Do not create production treasury approval logic yet.

Do not create production First Nations governance logic yet.

Do not create production multisig signer logic yet.

Do not create production emergency action logic yet.

Do not embed production governance objects before source-of-truth approval.

Do not embed production role owners before source-of-truth approval.

Do not use Base Sepolia governance as production governance.

Do not use Anvil governance as production governance.

Do not use mock governance as production governance.

Do not use screenshots as governance source-of-truth.

Do not use chat text as governance source-of-truth.

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
- it states executable governance gates package code is not authorized yet;
- it defines governance package boundaries;
- it defines secret exclusion boundaries;
- it defines governance authority gates;
- it defines multisig and key-holder boundaries;
- it defines First Nations legal review boundaries;
- it defines corporate governance boundaries;
- it defines treasury governance boundaries;
- it defines emergency authority boundaries;
- it defines operator authority boundaries;
- it defines role owner mapping boundaries;
- it defines transaction rail dependency;
- it defines protocol client dependency;
- it defines config dependency;
- it defines Base Sepolia limitations;
- it defines Base mainnet blockers;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it includes no production governance approval;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 ABI source policy reference

Reference document: docs/audits/V0_5_2_ABI_SOURCE_POLICY.md

Reference commit: 046ed38768988e61c0f3b2537e65e51d5e87bbad

Reference captured UTC: 2026-10-04T19:10:43Z

Reference target: governance gates package gate checklist

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

Reference target: governance gates package gate checklist

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
