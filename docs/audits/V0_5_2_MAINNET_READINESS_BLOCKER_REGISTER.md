# NST Core v0.5.2 Mainnet Readiness Blocker Register

Status: DRAFT BLOCKER REGISTER
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-09-28T12:40:43Z
Current commit at creation: d45fe3c00ca533de05891298631fb91f57e145da

Foundry Via-IR config evidence:

```text
11:via_ir = true
```

## Source documents

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source release script hardening checklist: docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md
Source Via-IR hardening checklist: docs/checklists/V0_5_2_VIA_IR_BUILD_PROFILE_HARDENING_CHECKLIST.md
Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md
Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md
Source release evidence bundle checklist: docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md
Source no-deployment candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md
Source address intake package: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source role treasury operator matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source role treasury operator audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source build profile decision record: docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md
Source Via-IR adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md
Source Foundry build profile triage: docs/audits/V0_5_2_FOUNDRY_BUILD_PROFILE_TRIAGE.md
Source final human approval template: docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md

## Purpose

This document is the controlling blocker register for NST Core v0.5.2 mainnet readiness.

This document is not a deployment authorization.

No mainnet deployment is authorized by this document.

This document does not create, approve, or imply any deployment command.

This document does not approve any address, route, role, treasury destination, operator, key, deployer wallet, governance object, release package, or deployment configuration.

This document preserves the remaining blockers that must be resolved before any future candidate deployment command may be prepared.

## Current controlled state

| Area | Current result | Status |
| --- | --- | --- |
| Branch | phase/v0.5.2-mainnet-readiness | COMPLETE |
| Current commit | d45fe3c00ca533de05891298631fb91f57e145da | COMPLETE |
| Foundry build profile | Via-IR committed in foundry.toml | COMPLETE |
| Build profile decision | Via-IR candidate path documented | COMPLETE |
| Via-IR adoption | Adoption record committed | COMPLETE |
| Build evidence | Build passes under committed Via-IR profile | PASS |
| Test evidence | Test suite passes under committed Via-IR profile | PASS |
| Address intake package | Draft package created | COMPLETE |
| Address intake final values | Production owner addresses remain TBD | OPEN |
| Deployment config review checklist | Created and committed | COMPLETE |
| Deployment config final file | Not created from approved addresses yet | OPEN |
| Read-only verification checklist | Created and committed | COMPLETE |
| Final verification receipts | Not captured | OPEN |
| Release evidence bundle checklist | Created and committed | COMPLETE |
| Final release evidence bundle | Not finalized | OPEN |
| Final human approval receipt template | Created and committed | COMPLETE |
| Final human approval receipt | Not completed | OPEN |
| Mainnet deployment | Not authorized | BLOCKED |

## Primary blockers

| Blocker | Required resolution | Current status |
| --- | --- | --- |
| Production owner addresses | Final public production addresses from approved source of truth | OPEN |
| Governance object | Final governance multisig or governance object approval | OPEN |
| Emergency authority | Final emergency multisig or emergency authority approval | OPEN |
| Treasury authority | Final treasury multisig, treasury destination, and route approval | OPEN |
| Operator authority | Final operator multisig and operator assignment approval | OPEN |
| Role owners | Final role owner mapping with no TBD values | OPEN |
| Treasury routes | Final treasury route mapping with no TBD values | OPEN |
| Founder receipt wallet | Final founder custody approval or governance object approval | OPEN |
| Yield pool receiver | Final treasury approval | OPEN |
| CFT treasury destination | Final treasury approval | OPEN |
| Rescue destination | Final emergency and treasury approval | OPEN |
| Deployment funding wallet | Final funding approval | OPEN |
| Bootstrap operator | Temporary deployment-only approval or removal after handoff | OPEN |
| Final deployment config | Created only from approved production address package | OPEN |
| Deployment config checksum | Captured after final config creation | OPEN |
| Deployment config manual review | Captured after final config creation | OPEN |
| Read-only verification commands | Finalized against approved deployment config | OPEN |
| Read-only verification receipts | Captured after approved command execution | OPEN |
| Release evidence bundle | Finalized from real receipts and artifacts | OPEN |
| Rollback package | Complete and reviewed | OPEN |
| Final acceptance gate | Complete, reviewed, committed, pushed, and remotely confirmed | OPEN |
| Final human approval receipt | Completed only after all readiness blockers are resolved | OPEN |

## Mainnet authorization rule

Mainnet deployment remains blocked until every final acceptance gate item is marked COMPLETE, reviewed, committed, pushed, remotely confirmed, and paired with the required evidence receipt.

A passing build does not authorize deployment.

A passing test suite does not authorize deployment.

A committed Via-IR build profile does not authorize deployment.

A candidate plan does not authorize deployment.

An address intake draft does not authorize deployment.

A deployment config review checklist does not authorize deployment.

A read-only verification checklist does not authorize deployment.

A release evidence bundle checklist does not authorize deployment.

A final human approval receipt template does not authorize deployment.

Only a complete final approval package plus explicit human approval can authorize moving toward a candidate deployment command.

## Secret exclusion rule

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information belong in this repository.

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information belong in readiness documents.

Only public addresses, public contract addresses, public governance objects, checksums, commit IDs, evidence file names, approval references, review receipts, and non-secret operational confirmations may be documented.

## Address evidence rule

Production addresses must come only from an approved source of truth.

Do not use memory, screenshots, chat text, guesswork, mock addresses, Anvil addresses, local addresses, Base Sepolia test-only addresses, or placeholder addresses as final production values.

Any address row that remains TBD keeps mainnet deployment blocked.

Any address row that lacks approval evidence keeps mainnet deployment blocked.

Any address row that contains private material must be rejected.

## Required resolution sequence

| Phase | Required action | Status |
| --- | --- | --- |
| A | Collect final public production addresses from approved source of truth | OPEN |
| B | Complete address intake package with no TBD production owner values | OPEN |
| C | Update final owner address template with no TBD production owner values | OPEN |
| D | Update role treasury operator matrix with approved final owners | OPEN |
| E | Update operator handoff checklist with final operator evidence | OPEN |
| F | Prepare final deployment config from approved addresses only | OPEN |
| G | Capture deployment config checksum and manual review receipt | OPEN |
| H | Confirm deployment config matches address package and role matrix | OPEN |
| I | Finalize read-only verification command set against final config | OPEN |
| J | Confirm rollback checklist remains compatible | OPEN |
| K | Confirm release evidence bundle inputs exist | OPEN |
| L | Complete final acceptance gate review | OPEN |
| M | Complete final human approval receipt | OPEN |
| N | Only after explicit approval, prepare candidate deployment command | BLOCKED |

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any role owner remains TBD.
- Any treasury route remains TBD.
- Any final deployment config field remains unresolved.
- Any final deployment config checksum is missing.
- Any final deployment config review receipt is missing.
- Any final read-only verification command is missing.
- Any final read-only verification receipt is missing.
- Any rollback path is incomplete.
- Any release evidence bundle item is missing.
- Any final acceptance gate item remains OPEN.
- Any final human approval receipt is missing.
- Any private key, seed phrase, API key, wallet secret, deployer key, recovery phrase, signing material, private RPC credential, keystore password, or hardware wallet recovery information appears in repository files.
- Any deployment command is prepared before final human approval.
- Any deployment command is prepared from mock, local, test-only, or placeholder values.

## Current recommendation

Use this blocker register as the controlling no-deployment readiness status record.

Do not create a candidate deployment command yet.

Do not create final deployment config yet unless final approved production addresses are available from an approved source of truth.

Do not use mock, local, Base Sepolia, Anvil, screenshot, chat, or placeholder addresses as production values.

Next safe task: prepare the final production address collection package from the existing address intake package and collect only public production addresses plus approval evidence.

## Acceptance rule for this blocker register

This blocker register is complete only when:

- The current blockers are documented.
- The no-deployment rule is documented.
- The secret exclusion rule is documented.
- The required resolution sequence is documented.
- No source code is changed by this register.
- The register is committed and pushed to the v0.5.2 phase branch.
- Mainnet deployment remains blocked.

## v0.5.2 final production address collection package reference

Reference added UTC: 2026-09-29T20:50:39Z

Reference artifact: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md

Reference commit: efbf87cf1b199f5fe42026925aa4bdea03663179

Current branch at reference time: phase/v0.5.2-mainnet-readiness

This reference records that the v0.5.2 final production address collection package exists as a committed readiness artifact.

This reference does not approve any production address, route, role, treasury destination, operator, governance object, deployment key, release package, deployment configuration, or mainnet deployment.

This reference does not authorize deployment.

Production owner addresses remain TBD until final public production addresses are collected from an approved source of truth, reviewed, committed, pushed, and remotely confirmed.

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information belong in this repository.

Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.

Mainnet deployment remains blocked.

## V0.5.2 final production address approval receipt template reference

Reference file: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md
Reference commit: fcfaf82996a48c711d5f9537051ad5a5b91a4291
Reference UTC: 2026-09-30T09:05:59Z

This reference connects the Mainnet readiness blocker register to the final production address approval receipt template.

This reference is not a deployment authorization.

No mainnet deployment is authorized by this reference.

This reference does not approve any production address, route, role, treasury destination, operator, key, deployer wallet, governance object, release package, or deployment configuration.

Final production addresses remain blocked unless each required production address row is paired with a completed approval receipt created from the committed final production address approval receipt template or a stricter committed successor.

Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.

No private key, seed phrase, deployer key, wallet secret, API key, recovery phrase, private RPC credential, keystore password, signing material, or hardware wallet recovery information may be documented in this reference chain.

Required approval evidence before this gate can close:

- Completed final production address approval receipt.
- Final public production address values from an approved source of truth.
- Approval evidence for each required owner category.
- Checksum confirmation for each public address.
- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
- Confirmation that no private signing material or secret material is included.
- Manual review receipt.
- Commit and remote confirmation receipt.

Until this approval evidence exists, the production-address portion of this readiness gate remains OPEN and mainnet deployment remains BLOCKED.

## v0.5.2 production address source-of-truth request packet reference

Reference added UTC: 2026-10-02T08:17:08Z
Reference source packet commit: 0b9d98e712085fcbab4618360a316143fd6a7a4b
Reference source packet: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

The production address source-of-truth request packet is now part of the v0.5.2 readiness evidence chain.

Final production addresses remain unresolved until approved public source-of-truth evidence is collected, reviewed, committed, pushed, remotely confirmed, and converted into a completed final production address approval receipt.

Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.

Mainnet deployment remains blocked until every final acceptance gate item is COMPLETE, every production owner address is resolved from approved public source-of-truth evidence, and explicit final human approval is captured.

## V0.5.2 source-of-truth response review checklist reference

Reference added UTC: 2026-10-04T11:24:21Z

Source checklist: docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md

Source checklist commit: c95b21a5263e10154ca9b0aee6ac1225c6d92075

Source checklist short commit: c95b21a

This reference does not authorize deployment.

The production address source-of-truth response review checklist must be completed before any production address response can be accepted into a final owner address template, deployment configuration, verification command set, release evidence bundle, final human approval receipt, or candidate deployment command.

The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.

No private key, seed phrase, API key, deployer key, wallet secret, recovery phrase, signing material, private RPC credential, keystore password, or hardware wallet recovery information may be included in any response review artifact.

Readiness remains blocked until final public production addresses, approval evidence, deployment configuration review, read-only verification receipts, release evidence, and final human approval are complete, reviewed, committed, pushed, and remotely confirmed.

Mainnet deployment remains blocked.

## V0.5.2 Base Sepolia public interface decision reference

Reference created UTC: 2026-10-04T12:17:04Z

Source decision record: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md
Source decision commit: 02fad4ea64dde6fe74f09d06a77719634c14ce71

This readiness artifact incorporates the Base Sepolia deployment inventory and public-interface decision record.

This reference does not authorize mainnet deployment.

This reference does not authorize broad public write access to the deployed Base Sepolia system.

Current Base Sepolia public-interface rule:

- Controlled read-only viewing may be prepared.
- Controlled founder-reviewed demo interaction may be prepared.
- Broad public write access remains blocked.
- Corporate/public landing pages may be designed as education, intake, documentation, and waitlist surfaces.
- Landing pages must not imply mainnet readiness.
- Landing pages must not imply production custody, production addresses, or final governance approval.
- Any testnet interaction must clearly state that Base Sepolia is a test network.
- No production owner address may be copied from Base Sepolia, Anvil, screenshots, chat text, placeholders, or memory.
- Mainnet deployment remains blocked until final production addresses, governance, treasury, operator handoff, verification, release evidence, and explicit final human approval are complete.


## V0.5.2 application infrastructure blueprint reference

Source blueprint: `docs/plans/V0_5_2_APPLICATION_INFRASTRUCTURE_BLUEPRINT.md`

Blueprint commit: `3bc2c6b9b463dd78c7c5de6b58f098f28707083b`

This reference does not authorize deployment.

This reference does not authorize public use of any Base Sepolia or mainnet interface.

This reference does not approve an end-to-end transaction rail, public landing page, corporate landing page, First Nations interface, deployment command, production address, treasury route, operator role, or mainnet release.

The application infrastructure blueprint is now a controlled readiness artifact for the future application/interface layer.

The following workstreams remain blocked until separately built, reviewed, tested, approved, committed, pushed, and paired with evidence receipts:

- public landing page;
- corporate landing page;
- First Nations legal/review interface;
- Base Sepolia public demo boundary;
- wallet connection boundary;
- read-only protocol status interface;
- source-of-truth production address flow;
- end-to-end transaction rail;
- backend/indexer/API layer;
- admin/operator dashboard;
- monitoring and audit log layer;
- release and rollback controls for application infrastructure.

No app, frontend, backend, infrastructure, deployment, or protocol source file is approved by this reference alone.


## V0.5.2 application source tree scaffold reference

Status: CREATED AND COMMITTED

Application source tree scaffold commit: f1710989494f97154f7d9dcaeb0ece2f00aad089

Application source tree scaffold gate checklist: docs/checklists/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_GATE_CHECKLIST.md

Application source tree scaffold record: docs/plans/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_RECORD.md

Scaffolded application surfaces:

- apps/public-site/
- apps/corporate-site/
- apps/base-sepolia-demo/
- apps/first-nations-portal/
- apps/admin-console/

Scaffolded package surfaces:

- packages/transaction-rail/
- packages/protocol-clients/
- packages/governance-gates/
- packages/ui/
- packages/config/

Scaffolded infrastructure surface:

- infra/

Control rule:

- The scaffold is README-only at this stage.
- The scaffold is non-executable.
- The scaffold does not introduce production application code.
- The scaffold does not authorize deployment.
- The scaffold does not authorize public launch.
- The scaffold does not authorize public reliance.
- The scaffold does not authorize Base Sepolia public onboarding.
- The scaffold does not authorize mainnet deployment.
- Future implementation inside apps/, packages/, or infra/ must pass source-tree, security, governance, legal, address, verification, release-evidence, and final human approval controls before production use.

## v0.5.2 Transaction rail architecture blueprint reference

Reference document: docs/plans/V0_5_2_TRANSACTION_RAIL_ARCHITECTURE_BLUEPRINT.md

Reference commit: 8e779a9c160732f55e133275a316fb4b5b19f437

Reference captured UTC: 2026-10-04T15:24:37Z

Reference target: mainnet readiness blocker register

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize a production transaction rail.

This reference does not authorize production treasury routing.

This reference does not authorize any public mainnet mint interface.

This reference records that the transaction rail architecture blueprint exists as a controlled planning artifact.

The transaction rail remains not built.

The public site remains not built.

The corporate site remains not built.

The First Nations portal remains not built.

The admin console remains not built.

The Base Sepolia demo interface remains not production.

The production mainnet transaction rail remains blocked until approved production addresses, deployment configuration, verification commands, release evidence, final legal review where required, and final human approval are complete.

Required follow-on work:

- Create transaction rail package gate checklist.
- Create protocol client package gate checklist.
- Create governance gate package checklist.
- Create public non-secret config package gate.
- Create public site content architecture.
- Create corporate site content architecture.
- Create First Nations portal legal-review intake architecture.
- Create Base Sepolia demo launch gate checklist.
- Create transaction rail state machine skeleton only after source gates are approved.
- Create read-only protocol client skeleton only after package gates are approved.
- Create no-secret config skeleton only after config gates are approved.

No-go conditions preserved:

- Do not use mock addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use Base Sepolia addresses as production mainnet addresses.
- Do not use screenshots as production address source-of-truth.
- Do not use chat text as production address source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request recovery phrases.
- Do not embed wallet secrets.
- Do not embed deployer keys.
- Do not present testnet actions as production actions.
- Do not present this reference as deployment approval.

## v0.5.2 Transaction rail package gate checklist reference

Reference document: docs/checklists/V0_5_2_TRANSACTION_RAIL_PACKAGE_GATE_CHECKLIST.md

Reference commit: 611f97a8dbbd662412a6bdeb8713353ef0ec5a0b

Reference captured UTC: 2026-10-04T15:38:04Z

Reference target: mainnet readiness blocker register

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize a production transaction rail.

This reference does not authorize writing executable transaction rail package code.

This reference does not authorize production mint transactions.

This reference does not authorize production treasury routing.

This reference does not authorize any public mainnet mint interface.

This reference records that the transaction rail package gate checklist exists as a controlled readiness artifact.

The transaction rail package remains gate-blocked until all package boundaries, state models, receipt models, error classifications, no-secret controls, read-only boundaries, write-transaction boundaries, config boundaries, and implementation review steps are complete.

Required follow-on work:

- Create protocol client package gate checklist.
- Create governance gates package checklist.
- Create public config package gate checklist.
- Create Base Sepolia demo launch gate checklist.
- Create package implementation plan.
- Create no-secret package scan rule.
- Create package test strategy.
- Create read-only protocol client package boundary.
- Create write-helper package boundary.
- Reference each package gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write transaction rail package source code until package gates are complete.
- Do not create production write helpers yet.
- Do not create production mint helpers yet.
- Do not create production treasury route helpers yet.
- Do not create production deployment config yet.
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

## v0.5.2 Protocol client package gate checklist reference

Reference document: docs/checklists/V0_5_2_PROTOCOL_CLIENT_PACKAGE_GATE_CHECKLIST.md

Reference commit: e410e534eace03eb712f0a8cc90b7fd2cd479314

Reference captured UTC: 2026-10-04T17:54:18Z

Reference target: mainnet readiness blocker register

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

Reference target: mainnet readiness blocker register

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

Reference target: mainnet readiness blocker register

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

Reference target: mainnet readiness blocker register

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
