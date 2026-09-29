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
