# NST Core v0.5.2 Mainnet Deployment Checklist

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-09-27T11:02:06Z
Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md

## Purpose

This checklist defines the deployment-readiness gate for a future NST Core mainnet candidate package.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

The checklist exists to prove that all governance, treasury, operator, address, handoff, rollback, release, and verification artifacts are complete before any candidate deployment command is prepared.

## Source readiness documents

| Document | Required status | Current status |
| --- | --- | --- |
| Role treasury operator audit | Created and reviewed | OPEN |
| Role treasury operator matrix | Created and reviewed | OPEN |
| Mainnet owner address template | Completed with final approved addresses | OPEN |
| Operator handoff checklist | Completed with evidence references | OPEN |
| Mainnet address intake process | Completed and reviewed | OPEN |
| Mainnet readiness runbook | Created and reviewed | OPEN |
| Deployment checklist | Created and reviewed | OPEN |
| Rollback checklist | Created and reviewed | OPEN |
| Final acceptance gate checklist | Created and reviewed | OPEN |

## Deployment blocking rule

Mainnet deployment remains blocked until every item in this checklist is marked COMPLETE and committed.

Mainnet deployment also remains blocked while any TBD owner, address, route, treasury, operator, handoff, rollback, or verification field remains unresolved.

## Phase A: repository and branch readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Correct branch selected | phase/v0.5.2-mainnet-readiness | OPEN |
| Main branch baseline recorded | Commit hash receipt | OPEN |
| Current branch pushed to remote | Remote HEAD confirmation | OPEN |
| Working tree clean before candidate preparation | git status receipt | OPEN |
| No unreviewed source changes | git diff receipt | OPEN |
| No uncommitted documentation changes | git status receipt | OPEN |

## Phase B: address package readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Governance multisig final address approved | Approval record and checksum address | OPEN |
| Emergency multisig final address approved | Approval record and checksum address | OPEN |
| Treasury multisig final address approved | Approval record and checksum address | OPEN |
| Operator multisig final address approved | Approval record and checksum address | OPEN |
| Mint authority final address approved | Approval record and checksum address | OPEN |
| Metadata operator final address approved | Approval record and checksum address | OPEN |
| Vetting operator final address approved | Approval record and checksum address | OPEN |
| Credential operator final address approved | Approval record and checksum address | OPEN |
| Claim operator final address approved | Approval record and checksum address | OPEN |
| Rescue destination final address approved | Approval record and checksum address | OPEN |
| Founder receipt wallet or governance object approved | Approval record and checksum address | OPEN |
| Deployment funding wallet approved | Approval record and checksum address | OPEN |
| Bootstrap operator wallet approved as temporary only | Temporary scope record | OPEN |

## Phase C: deployment configuration readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Deployment config file exists | File path and checksum receipt | OPEN |
| Config reads final approved addresses only | Manual review receipt | OPEN |
| No local mock addresses remain | Grep receipt | OPEN |
| No Base Sepolia test-only addresses remain unless explicitly limited | Grep receipt | OPEN |
| No private keys or wallet secrets are committed | Grep receipt | OPEN |
| Role assignments match address template | Manual review receipt | OPEN |
| Treasury routes match treasury owner matrix | Manual review receipt | OPEN |
| Bootstrap role removal path is reviewed | Script review receipt | OPEN |

## Phase D: release script hardening

| Check | Evidence required | Status |
| --- | --- | --- |
| Required evidence files checked before release creation | Script or checklist receipt | OPEN |
| Release notes cannot be empty | Script or checklist receipt | OPEN |
| Missing bundle stops release creation | Script or checklist receipt | OPEN |
| Asset upload failures stop release creation | Script or checklist receipt | OPEN |
| Remote tag existence is verified | Script or checklist receipt | OPEN |
| GitHub release view is captured after publish | Receipt artifact | OPEN |
| Receipts are written deterministically | Receipt artifact | OPEN |
| Manual repair is not required for ordinary successful releases | Review receipt | OPEN |

## Phase E: preflight validation

| Check | Evidence required | Status |
| --- | --- | --- |
| Solidity build passes | forge build receipt | OPEN |
| Full test suite passes | forge test receipt | OPEN |
| Safe lint cleanup reviewed | Lint receipt or deferral note | OPEN |
| Deployment dry-run command exists | Script review receipt | OPEN |
| Read-only post-deploy audit command exists | Script review receipt | OPEN |
| Role verification command exists | Script review receipt | OPEN |
| Treasury route verification command exists | Script review receipt | OPEN |
| Emergency pause verification command exists | Script review receipt | OPEN |

## Phase F: candidate package readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Final owner address template complete | Completed document | OPEN |
| Final operator handoff checklist complete | Completed document | OPEN |
| Final deployment checklist complete | Completed document | OPEN |
| Final rollback checklist complete | Completed document | OPEN |
| Final acceptance gate checklist complete | Completed document | OPEN |
| Final release documentation updated | Release notes draft | OPEN |
| Final human approval receipt captured | Approval receipt | OPEN |

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any source code file changed without dedicated review.
- Any contract file changed without dedicated review.
- Any private key, seed phrase, API key, wallet secret, or recovery phrase appears in repository files.
- Any deployer or bootstrap wallet retains production powers without explicit approval.
- Any treasury authority is assigned to a routine operator without approval.
- Any mock, local, or test-only address is used as a production address without explicit limitation.
- Any final role assignment cannot be verified by read-only command.
- Any release evidence file is missing.
- Any rollback path is incomplete.
- Any final human approval is missing.

## Candidate package must include

- Final owner address template.
- Final operator handoff checklist.
- Final deployment checklist.
- Final rollback checklist.
- Final acceptance gate checklist.
- Final role-owner matrix.
- Final treasury-owner matrix.
- Final operator-permission matrix.
- Final release notes.
- Final read-only role audit command.
- Final deployment config review receipt.
- Final human approval receipt.

## Current status

- Deployment checklist draft created.
- No mainnet deployment has been authorized.
- No source code has been changed.
- Production owner addresses remain TBD.
- Next task: review this deployment checklist, then commit it as a docs-only readiness artifact.

## V0.5.2 Via-IR build profile adoption reference

Updated UTC: 2026-09-27T17:35:38Z

Adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md
Adoption commit: 3d28f6a70ad89262ee084980f29ab4d07a3e8f76
Foundry config commit: d0cf09d6c0399a83d870ab1b4b904b174b61bebd

The committed candidate build profile now uses Via-IR through foundry.toml.

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

| Deployment-readiness item | Required result | Status |
| --- | --- | --- |
| Approved build profile selected | Via-IR adopted in foundry.toml | COMPLETE |
| Build command uses committed build profile | forge build passes under committed Via-IR config | PASS |
| Test command uses committed build profile | forge test passes under committed Via-IR config | PASS |
| Deployment dry-run uses approved build profile | Must be confirmed before candidate deployment | OPEN |
| Contract verification command uses approved build profile | Must be confirmed before candidate deployment | OPEN |
| Role verification command uses approved build profile | Must be confirmed before candidate deployment | OPEN |
| Treasury verification command uses approved build profile | Must be confirmed before candidate deployment | OPEN |
| Release automation checks approved build evidence | Must be confirmed before release creation | OPEN |

Deployment remains blocked until production owner addresses, deployment config, verification commands, rollback readiness, release evidence, and final human approval are complete.

## V0.5.2 mainnet address intake package reference

Marker: V0_5_2_ADDRESS_INTAKE_PACKAGE_DEPLOYMENT_CHECKLIST_REFERENCE
Created UTC: 2026-09-27T18:58:50Z
Address intake package: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md
Address intake package commit: f6f33da700af62b0a6bae4d76d1b233fb583cdf1

The v0.5.2 mainnet address intake package has been created and committed as a docs-only readiness artifact.

This reference is not a deployment authorization.

No mainnet deployment is authorized by this reference.

Production owner addresses remain TBD.

The address intake package remains OPEN until every required production address category is populated from an approved source of truth, checksum reviewed, matched against the role / treasury / operator matrix, approved, and committed.

Required unresolved address categories include:

- Governance multisig or governance object.
- Emergency multisig.
- Treasury multisig.
- Operator multisig.
- Mint authority.
- Metadata operator.
- Vetting operator.
- Credential operator.
- Claim operator.
- Founder receipt wallet or governance object.
- Rescue destination.
- Deployment funding wallet.
- Bootstrap operator wallet, temporary only.
- TreasuryRouter route destinations.

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, or signing material may be placed in the repository.

Only public production addresses, governance objects, checksums, approval references, and review receipts belong in the address intake package.

Deployment remains blocked until the address intake package is complete and the final acceptance gate is updated with approved production address evidence.

## V0.5.2 Deployment Config Review Checklist Reference

Reference added UTC: 2026-09-27T19:42:02Z

Referenced artifact: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md

Referenced artifact commit: 490ddc876a2464057e32e734920c993ca46c3298

Before any future candidate deployment command is prepared, the deployment config review checklist must be completed and reviewed.

The final deployment configuration must be created only from approved public production address evidence.

The deployment checklist remains OPEN while any production owner address, governance object, treasury destination, route, role, operator authority, deployment config field, checksum, verification command, or human approval item remains OPEN or TBD.

This reference does not create a deployment configuration.

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

## v0.5.2 read-only verification commands checklist reference

Source artifact: `docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md`
Source commit: `b03d4988aa932e9e3556c8d6f950d80bab3111fe`
Referenced from: `b03d4988aa932e9e3556c8d6f950d80bab3111fe`
Recorded UTC: `2026-09-28T09:59:19Z`

This reference does not authorize mainnet deployment.

The read-only verification commands checklist defines the required non-broadcast verification command set for any future NST Core v0.5.2 mainnet candidate package.

Required before deployment:

- Verification commands must be read-only.
- Verification commands must not use `cast send`.
- Verification commands must not use `forge script --broadcast`.
- Verification commands must not require private keys, seed phrases, deployer keys, wallet secrets, or recovery phrases.
- Verification commands must use approved public production contract addresses only after those addresses are finalized.
- Chain identity, contract address, source verification, bytecode verification, owner verification, role verification, treasury route verification, yield route verification, rescue route verification, and release evidence checks must be reviewed before deployment.
- Read-only verification receipts must be captured before any release, deployment, or final approval gate can be marked COMPLETE.

Current status: OPEN until final production addresses, deployment config, verification command receipts, and final human approval are complete.

## V0.5.2 mainnet release evidence bundle checklist reference

Source checklist: `docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md`

Release evidence checklist commit: `59da1a7333700290c330d8af33e44e06e47366f9`

Reference created UTC: `2026-09-28T10:27:42Z`

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

The mainnet release evidence bundle remains a required blocker gate until every required evidence file, release note, checksum, receipt, GitHub release view, upload confirmation, verification receipt, and final human approval receipt is complete, reviewed, committed, and remotely confirmed.

The release evidence bundle must not contain private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, or private RPC credentials.

The release evidence bundle must not be treated as complete while any of the following remain missing, empty, TBD, unreviewed, uncommitted, or unconfirmed:

- production owner address approval evidence;
- deployment configuration checksum evidence;
- deployment configuration manual review receipt;
- read-only verification command receipts;
- release notes;
- release evidence directory;
- artifact upload confirmation;
- GitHub release view capture;
- rollback evidence;
- final acceptance gate receipt;
- final human approval receipt.

A release evidence bundle checklist pass is required before any future candidate release package can be considered complete.

A release evidence bundle checklist pass does not authorize deployment by itself.

## v0.5.2 final human approval receipt template reference

Reference added UTC: 2026-09-28T11:50:22Z

Source final human approval receipt template: docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md

Source template commit: 6ad106ff5eda4ec1d8bf970985ec2c2d58975ea7

This reference does not authorize deployment.

No mainnet deployment is authorized by adding this reference.

Final human approval remains missing until a completed final human approval receipt is reviewed, committed, pushed, remotely confirmed, and supported by all required readiness evidence.

A passing build does not authorize deployment.

A passing test suite does not authorize deployment.

A committed Via-IR build profile does not authorize deployment.

A completed checklist draft does not authorize deployment.

A release evidence bundle checklist does not authorize deployment.

A read-only verification commands checklist does not authorize deployment.

A no-deployment candidate plan does not authorize deployment.

Only a complete final approval package plus explicit human approval can authorize moving toward a candidate deployment command.

Required handling:

- Use docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md as the approved structure for any future final human approval receipt.
- Do not substitute chat text, screenshots, passing builds, passing tests, draft checklists, or implied approval for final approval.
- Do not include private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information in any approval receipt.
- Keep deployment blocked while any production owner address, governance object, treasury destination, operator assignment, deployment config, verification command, release evidence bundle, rollback path, or final human approval item remains OPEN or TBD.

## V0.5.2 mainnet readiness blocker register reference

Reference source: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md
Reference commit: 54ed452cc3f64cbd6ad69a2b9ed875e9fa5c8f19
Reference UTC: 2026-09-29T08:52:02Z

This document now recognizes the v0.5.2 mainnet readiness blocker register as a controlling readiness artifact.

This reference does not authorize deployment.

Mainnet deployment remains blocked until every blocker in the register is resolved, reviewed, committed, pushed, remotely confirmed, and paired with explicit final human approval.

The blocker register must be checked before any future candidate deployment command is prepared.

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

This reference connects the Mainnet deployment checklist to the final production address approval receipt template.

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

Reference target: mainnet deployment checklist

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
