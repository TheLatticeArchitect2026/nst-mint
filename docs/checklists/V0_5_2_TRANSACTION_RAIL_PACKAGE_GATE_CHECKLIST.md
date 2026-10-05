# NST Core v0.5.2 Transaction Rail Package Gate Checklist

Status: DRAFT GATE CHECKLIST
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-04T15:30:01Z
Current commit at creation: 94b32cb1d77f330e4223dc4f50e08ab1b9245a18

Transaction rail architecture blueprint commit: 8e779a9c160732f55e133275a316fb4b5b19f437

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize a production transaction rail.

This document does not authorize production treasury routing.

This document does not authorize any public mainnet mint interface.

This document does not authorize writing executable transaction rail code yet.

This checklist is the required gate before executable source code is added to packages/transaction-rail.

## Source documents

Source transaction rail architecture blueprint: docs/plans/V0_5_2_TRANSACTION_RAIL_ARCHITECTURE_BLUEPRINT.md

Source application infrastructure blueprint: docs/plans/V0_5_2_APPLICATION_INFRASTRUCTURE_BLUEPRINT.md

Source application source tree scaffold record: docs/plans/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_RECORD.md

Source application source tree scaffold gate checklist: docs/checklists/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_GATE_CHECKLIST.md

Source public corporate interface and Base Sepolia demo plan: docs/plans/V0_5_2_PUBLIC_CORPORATE_INTERFACE_AND_BASE_SEPOLIA_DEMO_PLAN.md

Source Base Sepolia deployment inventory and public interface decision record: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source mainnet readiness blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md

Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md

Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md

Source transaction rail package scaffold: packages/transaction-rail/README.md

Source protocol clients package scaffold: packages/protocol-clients/README.md

Source governance gates package scaffold: packages/governance-gates/README.md

Source config package scaffold: packages/config/README.md

## Purpose

This checklist defines the controlled gate for the future packages/transaction-rail source package.

The package is intended to become the reusable state, safety, preflight, transaction-preparation, and receipt-normalization layer for NST Lattice interfaces.

This checklist prevents the project from jumping directly from architecture into executable transaction code without safety boundaries.

The transaction rail package must remain blocked until this gate is complete, reviewed, committed, pushed, and referenced in the readiness gates.

## Current controlled status

| Area | Current result | Status |
| --- | --- | --- |
| Transaction rail architecture blueprint | Created and committed | COMPLETE |
| Application source scaffold | Created and committed | COMPLETE |
| packages/transaction-rail scaffold | README-only scaffold exists | COMPLETE |
| Transaction rail executable package code | Not created | BLOCKED |
| Production addresses | Not finalized | BLOCKED |
| Production deployment config | Not finalized | BLOCKED |
| Base Sepolia demo launch | Not authorized by this checklist | BLOCKED |
| Mainnet deployment | Not authorized | BLOCKED |
| Public production transaction rail | Not built | BLOCKED |

## Package scope

The future transaction rail package may eventually define:

- transaction state machine types;
- network guard helpers;
- chain ID validation helpers;
- contract address validation helpers;
- wallet connection status helpers;
- preflight result types;
- transaction preview result types;
- receipt normalization types;
- explorer link helpers;
- transaction error classification;
- user-facing transaction status language;
- read-only status boundary helpers;
- no-secret guard helpers;
- testnet-versus-mainnet mode helpers.

The future transaction rail package must not directly contain:

- private keys;
- seed phrases;
- wallet recovery phrases;
- deployer keys;
- wallet secrets;
- private RPC credentials;
- production secrets;
- privileged signer material;
- hardcoded production addresses before source-of-truth approval;
- unapproved treasury destination addresses;
- unapproved governance object addresses;
- unapproved operator addresses.

## Required package boundaries

| Gate | Requirement | Status |
| --- | --- | --- |
| Boundary A | Package purpose documented | OPEN |
| Boundary B | Read-only versus write boundary documented | OPEN |
| Boundary C | Network mode boundary documented | OPEN |
| Boundary D | Testnet versus production boundary documented | OPEN |
| Boundary E | No-secret rule documented | OPEN |
| Boundary F | Address source-of-truth rule documented | OPEN |
| Boundary G | Receipt model documented | OPEN |
| Boundary H | State machine vocabulary documented | OPEN |
| Boundary I | Error classification model documented | OPEN |
| Boundary J | Wallet signing boundary documented | OPEN |
| Boundary K | No automatic transaction broadcast rule documented | OPEN |
| Boundary L | No production reliance before mainnet approval documented | OPEN |

## Transaction state gate

Before package code is written, the project must approve the future state model.

Required states include:

- idle;
- wrong_network;
- wallet_disconnected;
- wallet_connected;
- preflight_loading;
- preflight_blocked;
- ready_to_preview;
- preview_ready;
- awaiting_user_signature;
- user_rejected;
- submitted;
- pending_confirmation;
- confirmed;
- failed;
- replaced;
- timed_out;
- receipt_available;
- post_action_syncing;
- complete.

Each state must have:

- a machine-readable name;
- a human-readable label;
- a user-safe description;
- allowed previous states;
- allowed next states;
- failure handling;
- no-secret confirmation;
- no-deployment disclaimer where required.

## Preflight gate

Before package code is written, the project must approve required preflight checks.

Required preflight checks include:

- app mode is known;
- chain ID is known;
- network is supported;
- wallet connection state is known;
- contract address is present;
- contract address is approved for the selected network;
- contract code exists;
- ABI source is approved;
- intended action is supported;
- user has been shown the network;
- user has been shown the contract;
- user has been shown the purpose;
- value requirement is shown;
- mint price is shown when applicable;
- eligibility status is checked when applicable;
- already-minted state is checked when applicable;
- pause state is checked when applicable;
- final disclaimer is shown;
- receipt path exists.

Preflight failure must block transaction preparation.

Preflight failure must not request wallet signature.

Preflight failure must not broadcast a transaction.

## Wallet signing boundary

The transaction rail package must never own the signing key.

The transaction rail package must never request private keys.

The transaction rail package must never request seed phrases.

The transaction rail package must never request recovery phrases.

The transaction rail package must never request deployer keys.

The transaction rail package must never store wallet secrets.

The transaction rail package may prepare a transaction request object only after all gates are satisfied.

The transaction rail package may pass a transaction request to an approved wallet provider only after deliberate user action.

The wallet must remain the signer.

The user must remain the final signer.

## Write transaction boundary

Write transaction helpers must be treated as high-risk.

Before write transaction helpers are implemented, the project must document:

- supported action name;
- contract module;
- contract method;
- chain ID;
- required contract address source;
- ABI source;
- required value;
- user-facing preview text;
- failure modes;
- receipt model;
- network guard;
- no-secret guard;
- no-auto-broadcast guard;
- testnet boundary;
- mainnet boundary.

No write helper may exist without a matching review entry.

No write helper may be enabled for production before final mainnet approval.

## Read-only boundary

Read-only helpers must be separate from write helpers.

Read-only helpers may support:

- chain ID reads;
- contract code checks;
- contract state reads;
- role reads;
- pause state reads;
- mint state reads;
- metadata state reads;
- eligibility reads;
- ownership reads;
- treasury route reads;
- explorer link creation;
- receipt verification.

Read-only helpers must not:

- sign transactions;
- broadcast transactions;
- use cast send;
- mutate chain state;
- require private keys;
- require seed phrases;
- require wallet secrets;
- treat read-only status as deployment approval.

## Receipt gate

Before package code is written, the project must approve receipt categories.

Required future receipt types include:

- NetworkCheckReceipt;
- AddressCheckReceipt;
- PreflightReceipt;
- TransactionPreviewReceipt;
- UserRejectedReceipt;
- TransactionSubmittedReceipt;
- TransactionConfirmedReceipt;
- TransactionFailedReceipt;
- PostActionReadReceipt;
- ExplorerReceipt;
- ReleaseEvidenceReceipt;
- AdminReviewReceipt.

Each receipt type must exclude:

- private keys;
- seed phrases;
- recovery phrases;
- wallet secrets;
- deployer keys;
- private RPC credentials;
- secret environment values.

Each receipt type must include only public or user-approved operational data.

## Error classification gate

Before package code is written, the project must approve the error model.

Required error categories include:

- WrongNetwork;
- WalletDisconnected;
- UnsupportedChain;
- ContractAddressMissing;
- ContractAddressUnapproved;
- ContractCodeMissing;
- AbiMissing;
- PreflightBlocked;
- UserRejected;
- InsufficientFunds;
- MintClosed;
- AlreadyMinted;
- NotEligible;
- Paused;
- TransactionReverted;
- TransactionDropped;
- TransactionReplaced;
- ReceiptTimeout;
- ExplorerUnavailable;
- UnknownSafeError.

Errors must be user-safe.

Errors must not leak secrets.

Errors must not expose private infrastructure details.

Errors must not imply success when the transaction has not confirmed.

## Config dependency gate

The transaction rail package must depend on approved public configuration.

Production configuration is not approved yet.

Production addresses are not approved yet.

Mainnet transaction rail production mode must remain blocked.

Base Sepolia configuration may be used only for approved testnet demo flows.

Local Anvil configuration may be used only for local development documentation and tests, never as production.

Mock addresses may be used only in test code after package code is authorized.

No config may include secrets.

## Base Sepolia demo gate

The transaction rail package may eventually support Base Sepolia demo mode.

Base Sepolia demo mode must:

- show testnet-only status;
- show chain ID;
- show contract addresses;
- show no-production-value warning;
- show no-mainnet-rights warning;
- block wrong-network actions;
- use public Base Sepolia addresses only from documented inventory;
- avoid collecting private information;
- avoid production claims;
- avoid treasury reliance claims;
- avoid legal-rights claims.

Base Sepolia demo support does not authorize public launch by itself.

## First Nations interface gate

The transaction rail package must not finalize First Nations participation flows without legal review.

The First Nations lawyer specializing in Treaty law should be included in review for:

- treaty-law language;
- governance language;
- rights language;
- consent language;
- representation language;
- revenue language;
- community onboarding language;
- legal disclaimers;
- possible future multisig/key-holder design.

The package must not encode final First Nations authority assumptions without approved legal language and governance evidence.

## Public interface gate

The package must support public-facing safety boundaries.

The public interface must not imply:

- mainnet is live before approval;
- production rights are created on testnet;
- investment return is offered;
- legal status is finalized without review;
- First Nations representation is approved without authority;
- treasury routing is finalized without approval.

## Corporate interface gate

The package must support corporate-facing safety boundaries.

Corporate flows must collect only non-secret business information.

Corporate flows must not collect private keys.

Corporate flows must not collect seed phrases.

Corporate flows must not collect recovery phrases.

Corporate flows must not collect deployer keys.

Corporate flows must route address or treasury requests into approved source-of-truth processes.

## Admin console gate

Admin console integration must remain read-only until privileged controls are separately reviewed.

Admin console future status displays may include:

- contract address status;
- role owner status;
- treasury route status;
- mint state;
- pause state;
- metadata freeze state;
- pending yield state;
- registry dependency state;
- release evidence status;
- deployment receipt status.

Admin console write actions require a separate privileged-operations design review.

## Required evidence before package source code

Before executable transaction rail package code is created, the project must complete:

| Evidence | Required state | Status |
| --- | --- | --- |
| Transaction rail architecture blueprint | Committed and referenced | COMPLETE |
| Transaction rail package gate checklist | Created and committed | OPEN |
| Protocol client package gate checklist | Created and committed | OPEN |
| Governance gates package checklist | Created and committed | OPEN |
| Public config package gate | Created and committed | OPEN |
| Base Sepolia demo launch gate | Created and committed | OPEN |
| Package source implementation plan | Created and committed | OPEN |
| No-secret package scan rule | Created and committed | OPEN |
| Test strategy for package | Created and committed | OPEN |
| Read-only package boundary | Created and committed | OPEN |
| Write-helper package boundary | Created and committed | OPEN |

## Approved first implementation after gates

The first future implementation should not be a production write transaction.

The first future implementation should be one of:

- package type definitions only;
- transaction state enum only;
- read-only network guard only;
- no-secret config shape only;
- Base Sepolia read-only status helper only.

The first future implementation should not include production transaction execution.

The first future implementation should not include live mainnet minting.

The first future implementation should not include admin write controls.

## No-go conditions

Do not write transaction rail package source code until this checklist is committed and referenced.

Do not create production write helpers yet.

Do not create production mint helpers yet.

Do not create production treasury route helpers yet.

Do not create production deployment config yet.

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
- it states the transaction rail package is not built yet;
- it defines package boundaries;
- it defines read-only boundaries;
- it defines write transaction boundaries;
- it defines wallet signing boundaries;
- it defines config dependency boundaries;
- it defines receipt boundaries;
- it defines error classification boundaries;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it includes no production address approvals;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Protocol client package gate checklist reference

Reference document: docs/checklists/V0_5_2_PROTOCOL_CLIENT_PACKAGE_GATE_CHECKLIST.md

Reference commit: e410e534eace03eb712f0a8cc90b7fd2cd479314

Reference captured UTC: 2026-10-04T17:54:18Z

Reference target: transaction rail package gate checklist

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production protocol clients.

This reference does not authorize writing executable protocol client package code.

This reference does not authorize production mint transactions.

This reference does not authorize production treasury routing.

This reference does not authorize production role mutation.

This reference does not authorize production registry mutation.

This reference does not authorize production governance actions.

This reference does not authorize any public mainnet mint interface.

This reference records that the protocol client package gate checklist exists as a controlled readiness artifact.

The protocol client package remains gate-blocked until ABI source controls, address source controls, network guards, read-only client boundaries, write-client boundaries, transaction rail dependency, config dependency, governance gates dependency, Base Sepolia limitations, Base mainnet blockers, package test strategy, and no-secret package scan rules are complete.

Required follow-on work:

- Create config package gate checklist.
- Create governance gates package checklist.
- Create Base Sepolia demo launch gate checklist.
- Create ABI source policy.
- Create address source policy.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create protocol client package test strategy.
- Create no-secret package scan rule.
- Reference each package gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write protocol client package source code until package gates are complete.
- Do not create production protocol clients yet.
- Do not create production write clients yet.
- Do not create production mint clients yet.
- Do not create production treasury route clients yet.
- Do not create production governance clients yet.
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

## v0.5.2 Config package gate checklist reference

Reference document: docs/checklists/V0_5_2_CONFIG_PACKAGE_GATE_CHECKLIST.md

Reference commit: 9c152de9c889c453168846ac28ef3ad69fb10dd7

Reference captured UTC: 2026-10-04T18:17:03Z

Reference target: transaction rail package gate checklist

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

Reference target: transaction rail package gate checklist

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

Reference target: transaction rail package gate checklist

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

Reference target: transaction rail package gate checklist

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

Reference target: transaction rail package gate checklist

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
