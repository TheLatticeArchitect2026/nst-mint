# NST Core v0.5.2 Mainnet Deployment Config Review Checklist

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-09-27T19:10:17Z
Current commit: 1c0c76cc09f1b682d6d59c5d22fd20cd0d1f0bbe

Foundry config commit: d0cf09d6c0399a83d870ab1b4b904b174b61bebd
Address intake package commit: f6f33da700af62b0a6bae4d76d1b233fb583cdf1
Via-IR adoption record commit: 3d28f6a70ad89262ee084980f29ab4d07a3e8f76
Candidate plan commit: 1c0c76cc09f1b682d6d59c5d22fd20cd0d1f0bbe

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source release hardening checklist: docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md
Source Via-IR hardening checklist: docs/checklists/V0_5_2_VIA_IR_BUILD_PROFILE_HARDENING_CHECKLIST.md
Source no-deployment candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md
Source address intake package: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source role treasury operator matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source role audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source build profile decision record: docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md
Source Via-IR adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md
Source Foundry build profile triage: docs/audits/V0_5_2_FOUNDRY_BUILD_PROFILE_TRIAGE.md

## Purpose

This checklist defines the review gate for any future NST Core v0.5.2 mainnet deployment configuration.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

This checklist does not create a deployment configuration.

This checklist does not add production addresses.

This checklist does not approve any address, route, role, treasury destination, operator, key, deployer wallet, or governance object.

This checklist exists to make sure that a future deployment configuration can only be accepted after every required production address, role, treasury route, operator authority, build profile, verification command, and review receipt has been resolved.

## Current blocker

Production owner addresses remain TBD.

The final deployment configuration is not complete.

The final deployment configuration must not be created from memory, screenshots, chat text, guesswork, mock values, local values, Base Sepolia values, or temporary placeholders.

The final deployment configuration must be created only from approved public production address evidence.

## Security rule

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, or private RPC credentials belong in this repository.

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, or private RPC credentials belong in any deployment config review receipt.

Only public production addresses, governance objects, route destinations, checksums, approval references, and review receipts may be documented.

## Build profile rule

The current branch has committed Via-IR as the Foundry build profile.

Observed current requirement:

- foundry.toml must contain via_ir = true.
- forge fmt --check must pass.
- forge build must pass under the committed Via-IR config.
- forge test must pass under the committed Via-IR config.
- Deployment scripts must use the approved build profile.
- Verification commands must be compatible with the approved build profile.
- Release scripts must check the approved build profile evidence.

A passing build does not authorize deployment.

A passing test suite does not authorize deployment.

A committed Via-IR build profile does not authorize deployment.

## Deployment config acceptance rule

A future mainnet deployment configuration may be accepted only when all of the following are true:

- The final address intake package contains no TBD production owner values.
- The final owner address template contains no TBD production owner values.
- Every public address is checksum reviewed.
- Every address category has approval evidence.
- Every address matches the role treasury operator matrix.
- Every treasury route matches the treasury owner matrix.
- Every operator permission matches the operator handoff checklist.
- No local, mock, Base Sepolia, or test-only address is used as a production address without explicit written limitation and final approval.
- No private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in any repository file.
- The final deployment config has a checksum receipt.
- The final deployment config has a manual review receipt.
- The final deployment config has a read-only verification plan.
- The final acceptance gate references the completed config review.
- Final human approval is captured.

## Required source artifacts

| Artifact | Required state | Current status |
| --- | --- | --- |
| Mainnet address intake package | Created and committed | COMPLETE |
| Mainnet address intake package final values | No TBD production owner values | OPEN |
| Mainnet owner address template | Created and committed | COMPLETE |
| Mainnet owner address template final values | No TBD production owner values | OPEN |
| Role treasury operator matrix | Created and committed | COMPLETE |
| Role treasury operator matrix final values | Updated from approved addresses | OPEN |
| Operator handoff checklist | Created and committed | COMPLETE |
| Operator handoff final evidence | Updated from approved operators | OPEN |
| Via-IR build profile adoption record | Created and committed | COMPLETE |
| Foundry config Via-IR value | via_ir = true committed | COMPLETE |
| Deployment config review checklist | Created and reviewed | OPEN |
| Deployment config file | Created from approved final address package only | OPEN |
| Deployment config checksum | Captured after config creation | OPEN |
| Deployment config manual review | Captured after config creation | OPEN |
| Final acceptance gate | Updated after final config review | OPEN |

## Expected config fields

| Config field or route | Required source | Final value | Status |
| --- | --- | --- | --- |
| defaultAdmin | Final governance approval record | TBD | OPEN |
| pauser | Emergency or pauser approval record | TBD | OPEN |
| mintManager | Mint authority approval record | TBD | OPEN |
| metadataManager | Metadata authority approval record | TBD | OPEN |
| treasuryManager | Treasury approval record | TBD | OPEN |
| swapOperator | Swap operator approval record | TBD | OPEN |
| shieldRegistry | ShieldRegistry deployment or approved dependency record | TBD | OPEN |
| cft | CFT deployment or approved dependency record | TBD | OPEN |
| router | Router approval record | TBD | OPEN |
| yieldPool | YieldPool approval record | TBD | OPEN |
| founderPayoutWallet | Founder custody approval record | TBD | OPEN |
| genesisRecipient | Founder or genesis approval record | TBD | OPEN |
| rescueDestination | Emergency and treasury approval record | TBD | OPEN |
| deploymentFundingWallet | Deployment funding approval record | TBD | OPEN |
| TreasuryRouter destinations | Treasury route approval record | TBD | OPEN |
| Fee or BPS recipient controls | Governance and treasury approval record | TBD | OPEN |

## Phase A: pre-config source check

| Check | Evidence required | Status |
| --- | --- | --- |
| Correct phase branch selected | branch receipt | OPEN |
| Working tree clean before config creation | git status receipt | OPEN |
| Final address intake package complete | package receipt | OPEN |
| Final owner address template complete | template receipt | OPEN |
| Final role treasury operator matrix complete | matrix receipt | OPEN |
| Final operator handoff checklist complete | handoff receipt | OPEN |
| No source or contract changes pending | git diff receipt | OPEN |
| No Foundry config change pending | git diff receipt | OPEN |
| No script changes pending | git diff receipt | OPEN |

## Phase B: address validation check

| Check | Evidence required | Status |
| --- | --- | --- |
| Every address is public | address review receipt | OPEN |
| Every address is checksum formatted | checksum receipt | OPEN |
| Every address category has approval evidence | approval receipt | OPEN |
| No address is TBD | package review receipt | OPEN |
| No address is a placeholder | package review receipt | OPEN |
| No address is local mock testnet value | grep and manual review receipt | OPEN |
| No Base Sepolia address is used as production without limitation | grep and manual review receipt | OPEN |
| No private key or seed material is present | grep receipt | OPEN |
| Every address maps to intended config field | config mapping receipt | OPEN |

## Phase C: role and operator mapping check

| Check | Evidence required | Status |
| --- | --- | --- |
| DEFAULT_ADMIN_ROLE owner matches approved governance owner | read-only or matrix receipt | OPEN |
| PAUSER_ROLE owner matches approved emergency owner | read-only or matrix receipt | OPEN |
| MINT_MANAGER_ROLE owner matches approved mint authority | read-only or matrix receipt | OPEN |
| METADATA_MANAGER_ROLE owner matches approved metadata authority | read-only or matrix receipt | OPEN |
| TREASURY_MANAGER_ROLE owner matches approved treasury authority | read-only or matrix receipt | OPEN |
| SWAP_OPERATOR_ROLE owner matches approved swap operator | read-only or matrix receipt | OPEN |
| Registry authority matches approved ShieldRegistry owner | read-only or matrix receipt | OPEN |
| Vault credential authority matches approved credential owner | read-only or matrix receipt | OPEN |
| Claim authority matches approved YieldPool or claim owner | read-only or matrix receipt | OPEN |
| Bootstrap operator powers are temporary or removed | handoff receipt | OPEN |

## Phase D: treasury route check

| Check | Evidence required | Status |
| --- | --- | --- |
| Founder payout destination reviewed | treasury approval receipt | OPEN |
| Yield pool receiver reviewed | treasury approval receipt | OPEN |
| TreasuryRouter route destinations reviewed | route approval receipt | OPEN |
| Rescue destination reviewed | emergency and treasury approval receipt | OPEN |
| Fee or BPS recipient controls reviewed | governance and treasury approval receipt | OPEN |
| No routine operator controls treasury movement without approval | manual review receipt | OPEN |
| Treasury route verification command exists | script review receipt | OPEN |
| Treasury route verification receipt captured | read-only receipt | OPEN |

## Phase E: config file review check

| Check | Evidence required | Status |
| --- | --- | --- |
| Final deployment config file path recorded | file receipt | OPEN |
| Final deployment config checksum recorded | checksum receipt | OPEN |
| Final deployment config matches address package | manual review receipt | OPEN |
| Final deployment config matches owner address template | manual review receipt | OPEN |
| Final deployment config matches role matrix | manual review receipt | OPEN |
| Final deployment config matches treasury matrix | manual review receipt | OPEN |
| Final deployment config matches operator handoff checklist | manual review receipt | OPEN |
| Final deployment config contains no private secrets | grep receipt | OPEN |
| Final deployment config contains no local mock values | grep receipt | OPEN |
| Final deployment config contains no Base Sepolia production values unless limited | grep receipt | OPEN |
| Final deployment config is not committed if it contains secret material | review receipt | OPEN |

## Phase F: build and test compatibility check

| Check | Evidence required | Status |
| --- | --- | --- |
| foundry.toml contains via_ir = true | git receipt | COMPLETE |
| forge fmt --check passes under approved profile | fmt receipt | OPEN |
| forge build passes under approved profile | build receipt | OPEN |
| forge test passes under approved profile | test receipt | OPEN |
| Deployment dry-run uses approved profile | dry-run receipt | OPEN |
| Deployment verification uses approved profile | verification receipt | OPEN |
| Release script checks approved profile evidence | release hardening receipt | OPEN |

## Phase G: final review check

| Check | Evidence required | Status |
| --- | --- | --- |
| Deployment config manual review completed | review receipt | OPEN |
| Deployment config checksum reviewed | checksum receipt | OPEN |
| Address package review completed | approval receipt | OPEN |
| Role matrix review completed | approval receipt | OPEN |
| Treasury route review completed | approval receipt | OPEN |
| Operator handoff review completed | approval receipt | OPEN |
| Final acceptance gate updated | checklist update receipt | OPEN |
| Final human approval captured | approval receipt | OPEN |

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any final deployment config field remains unresolved.
- Any final deployment config checksum is missing.
- Any final deployment config review receipt is missing.
- Any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in repository files.
- Any local, mock, Base Sepolia, or test-only value is used as a production value without explicit written limitation.
- Any role assignment differs from the approved role treasury operator matrix.
- Any treasury route differs from the approved treasury owner matrix.
- Any deployment script does not use the approved build profile.
- Any verification command does not use the approved build profile.
- Any release script does not check the approved build profile evidence.
- The final acceptance gate remains OPEN.
- Final human approval is missing.

## Evidence required before this checklist can become COMPLETE

- Final address intake package with no TBD production owner entries.
- Final owner address template with no TBD production owner entries.
- Final role treasury operator matrix update receipt.
- Final operator handoff update receipt.
- Final treasury route approval receipt.
- Final deployment config file path receipt.
- Final deployment config checksum receipt.
- Final deployment config manual review receipt.
- Final grep receipt proving no private secret material.
- Final grep receipt proving no unapproved local, mock, Base Sepolia, or test-only production values.
- Final forge fmt receipt.
- Final forge build receipt.
- Final forge test receipt.
- Final deployment dry-run receipt.
- Final read-only role verification command receipt.
- Final treasury route verification command receipt.
- Final emergency pause verification command receipt.
- Final release evidence receipt.
- Final human approval receipt.

## Current status

- Deployment config review checklist draft created.
- No deployment config has been created by this checklist.
- No production address has been approved by this checklist.
- Production owner addresses remain TBD.
- Final deployment config remains OPEN.
- Final acceptance gate remains OPEN.
- No mainnet deployment has been authorized.
- Next task: commit this docs-only deployment config review checklist, then reference it in the readiness gates.

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

This reference connects the Deployment config review checklist to the final production address approval receipt template.

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

## v0.5.2 Transaction rail package gate checklist reference

Reference document: docs/checklists/V0_5_2_TRANSACTION_RAIL_PACKAGE_GATE_CHECKLIST.md

Reference commit: 611f97a8dbbd662412a6bdeb8713353ef0ec5a0b

Reference captured UTC: 2026-10-04T15:38:04Z

Reference target: mainnet deployment config review checklist

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

Reference target: mainnet deployment config review checklist

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

Reference target: mainnet deployment config review checklist

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
