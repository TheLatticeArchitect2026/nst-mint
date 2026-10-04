# NST Core v0.5.2 Mainnet Candidate Plan - No Deployment

Status: DRAFT PLAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-09-27T18:22:21Z
Current commit: 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source release hardening checklist: docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md
Source Via-IR hardening checklist: docs/checklists/V0_5_2_VIA_IR_BUILD_PROFILE_HARDENING_CHECKLIST.md
Source build profile decision record: docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md
Source Via-IR adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md
Source build profile triage: docs/audits/V0_5_2_FOUNDRY_BUILD_PROFILE_TRIAGE.md
Source role audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source role matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md

Receipt file: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-candidate-plan-receipt-20260927T182203Z.txt
Forge fmt receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-candidate-plan-forge-fmt-check-20260927T182203Z.log
Forge build receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-candidate-plan-forge-build-20260927T182203Z.log
Forge test receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-candidate-plan-forge-test-20260927T182203Z.log

## Purpose

This document defines the next safe no-deployment candidate planning path for NST Core v0.5.2.

This document is not a deployment authorization.

No mainnet deployment is authorized by this plan.

This plan exists to prepare a future mainnet candidate package only after the required governance, treasury, operator, address, handoff, rollback, release, verification, and human approval artifacts are complete.

## Current controlled state

| Item | Current result | Status |
| --- | --- | --- |
| v0.5.2 branch | phase/v0.5.2-mainnet-readiness | COMPLETE |
| Current HEAD | 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8 | COMPLETE |
| Via-IR config commit | d0cf09d6c0399a83d870ab1b4b904b174b61bebd | COMPLETE |
| Build profile decision record | 27e25e3f25520ea1c71df1e0f52d09988928e6be | COMPLETE |
| Via-IR hardening checklist | 76f1eab00ed99b3ed9fb4efa65e8cbc66d49404e | COMPLETE |
| Via-IR adoption record | 3d28f6a70ad89262ee084980f29ab4d07a3e8f76 | COMPLETE |
| Final acceptance gate reference update | 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8 | COMPLETE |
| Deployment checklist reference update | 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8 | COMPLETE |
| Readiness runbook reference update | 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8 | COMPLETE |
| foundry.toml | via_ir = true | COMPLETE |
| forge fmt --check | Passed | PASS |
| forge build | Passed under committed Via-IR config | PASS |
| forge test | Passed under committed Via-IR config | PASS |
| Production owner addresses | Still TBD | OPEN |
| Final deployment config | Not finalized | OPEN |
| Final release evidence bundle | Not finalized | OPEN |
| Final human approval | Not captured | OPEN |
| Mainnet deployment | Not authorized | BLOCKED |

## Mainnet authorization rule

Mainnet deployment remains blocked until every final acceptance gate item is marked COMPLETE, reviewed, committed, and paired with the required evidence receipt.

A candidate plan does not authorize deployment.

A passing build does not authorize deployment.

A passing test suite does not authorize deployment.

A committed Via-IR build profile does not authorize deployment.

Deployment remains blocked while any production owner address, governance object, treasury destination, operator assignment, handoff requirement, rollback requirement, verification command, release artifact, or final human approval remains OPEN or TBD.

## Candidate package required contents

A future candidate package must include:

- Final approved owner address template with no TBD production owner entries.
- Final address intake package with approval evidence.
- Final governance owner record.
- Final treasury owner and destination record.
- Final operator permission record.
- Final operator handoff evidence.
- Final deployment config with checksum.
- Final deployment config review receipt.
- Final deployment checklist.
- Final rollback checklist.
- Final acceptance gate checklist.
- Final role owner matrix.
- Final treasury owner matrix.
- Final operator permission matrix.
- Final read-only role audit command.
- Final treasury route verification command.
- Final emergency pause verification command.
- Final contract verification plan.
- Final release notes.
- Final release evidence bundle.
- Final human approval receipt.

## Candidate plan sequence

| Phase | Required action | Status |
| --- | --- | --- |
| A | Collect final production owner addresses from approved source of truth | OPEN |
| B | Complete address intake package and reject placeholders | OPEN |
| C | Update final owner address template with no TBD values | OPEN |
| D | Update role, treasury, and operator matrices with final values | OPEN |
| E | Confirm operator handoff with evidence references | OPEN |
| F | Prepare deployment config using approved addresses only | OPEN |
| G | Review deployment config against approved address package | OPEN |
| H | Run deterministic forge fmt, forge build, and forge test receipts | OPEN |
| I | Prepare read-only role and treasury verification commands | OPEN |
| J | Confirm rollback checklist remains compatible | OPEN |
| K | Confirm release script hardening requirements remain satisfied | OPEN |
| L | Prepare release notes and evidence bundle | OPEN |
| M | Complete final acceptance gate review | OPEN |
| N | Capture final human approval receipt | OPEN |
| O | Only after approval, prepare candidate deployment command | BLOCKED |

## Current Via-IR build profile evidence

The current branch uses Via-IR as the committed Foundry build profile.

Observed evidence:

- foundry.toml contains via_ir = true.
- forge fmt --check passed.
- forge build passed.
- forge test passed.
- Build profile adoption was recorded in docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md.
- Readiness references were added to the final acceptance gate, deployment checklist, and runbook.

This evidence supports the build-profile decision only.

It does not authorize deployment.

## Address package blocker

Production owner addresses remain TBD.

The following address categories must be resolved before any candidate package can move toward deployment:

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

No mock, local, Base Sepolia, or test-only address may be used as a production address without explicit written limitation and final approval.

## Deployment config blocker

The final deployment config is not complete.

Before any future candidate deployment command is prepared, the config must prove:

- It uses final approved production addresses only.
- It does not contain local mock addresses.
- It does not contain Base Sepolia test-only addresses unless explicitly limited.
- It does not contain private keys, seed phrases, API keys, wallet secrets, deployer keys, or recovery phrases.
- It matches the final approved owner address template.
- It matches the final role owner matrix.
- It matches the final treasury owner matrix.
- It matches the final operator permission matrix.
- It has a checksum receipt.
- It has a manual review receipt.

## Verification command blocker

The final verification command set is not complete.

Before any future deployment, the project must have reviewed commands for:

- Contract address capture.
- Explorer/source verification.
- Read-only role verification.
- Treasury route verification.
- Emergency pause verification.
- Mint, metadata, treasury, swap, registry, claim, rescue, yield, and vault role verification.
- Post-deploy read-only audit.
- Receipt capture.

## Release evidence blocker

The final release evidence bundle is not complete.

Before release creation, the project must prove:

- Required evidence files exist.
- Release notes are not empty.
- Missing bundle stops release creation.
- Asset upload failure stops release creation.
- Remote tag existence is checked.
- GitHub release view is captured after publish.
- Receipts are written deterministically.
- Manual repair is not required for ordinary successful releases.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any final deployment config field remains unresolved.
- Any final verification command is missing.
- Any rollback path is incomplete.
- Any release evidence file is missing.
- Any release notes are empty.
- Any source or contract file changed without dedicated review.
- Any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in repository files.
- Any mock, local, Base Sepolia, or test-only address is used as a production address without explicit limitation.
- Any final human approval receipt is missing.

## Candidate decision record

| Decision field | Current value |
| --- | --- |
| Candidate deployment authorized | NO |
| Candidate plan status | DRAFT |
| Build profile | Via-IR committed in foundry.toml |
| Build status | PASS |
| Test status | PASS |
| Production address package | OPEN |
| Deployment config review | OPEN |
| Verification command review | OPEN |
| Release evidence bundle | OPEN |
| Final human approval | OPEN |
| Mainnet deployment status | BLOCKED |

## Current status

- Mainnet candidate plan created.
- No deployment command has been created.
- No deployment command has been executed.
- No mainnet deployment has been authorized.
- Via-IR build profile is committed and passing build/test.
- Production owner addresses remain TBD.
- Final acceptance remains OPEN.
- Next task: collect and validate the final production address package, or keep mainnet deployment blocked.

## V0.5.2 mainnet address intake package reference

Marker: V0_5_2_ADDRESS_INTAKE_PACKAGE_CANDIDATE_PLAN_REFERENCE
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

The no-deployment candidate plan now depends on the deployment config review checklist.

The candidate plan remains a planning artifact only.

The candidate plan does not authorize deployment.

Before any future deployment candidate can be prepared, the deployment config review checklist must confirm that the final deployment configuration uses approved public production addresses only, contains no secrets, contains no local mock values, contains no unauthorized Base Sepolia values, matches the final owner address template, matches the role and treasury matrices, and has checksum, manual review, and read-only verification receipts.

Production owner addresses remain TBD.

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

This reference connects the No-deployment mainnet candidate plan to the final production address approval receipt template.

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

Reference target: no-deployment mainnet candidate plan

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

Reference target: no-deployment mainnet candidate plan

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

Reference target: no-deployment mainnet candidate plan

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

Reference target: no-deployment mainnet candidate plan

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

Reference target: no-deployment mainnet candidate plan

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

Reference target: no-deployment mainnet candidate plan

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
