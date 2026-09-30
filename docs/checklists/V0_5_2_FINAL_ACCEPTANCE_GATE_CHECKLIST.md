# NST Core v0.5.2 Final Acceptance Gate Checklist

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 671afc64cccdad4c92f31759ed7863df967a5256
Created UTC: 2026-09-27T12:12:19Z

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source role audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source role matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md

## Purpose

This checklist is the final v0.5.2 acceptance gate for any future NST Core mainnet candidate package.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

This checklist exists to prove that every required governance, treasury, operator, address, handoff, rollback, release, verification, and human review artifact is complete before any future candidate deployment command is prepared.

## Mainnet authorization rule

Mainnet deployment remains blocked until every item in this checklist is marked COMPLETE, reviewed, committed, and paired with the required evidence receipt.

Mainnet deployment remains blocked while any production owner address, governance object, route, treasury destination, operator assignment, handoff requirement, rollback requirement, verification command, release artifact, or human approval item remains OPEN or TBD.

A PASS in this checklist means readiness documentation exists. It does not mean deployment authorization exists.

## Required source artifacts

| Artifact | Required state | Current status |
| --- | --- | --- |
| v0.5.1 Base Sepolia release | Complete, tagged, verified, published | COMPLETE |
| v0.5.2 branch | Open and pushed to remote | COMPLETE |
| Master spec Section 21 reconciliation | Completed and committed | COMPLETE |
| Role treasury operator audit | Created, populated, committed | COMPLETE |
| Role treasury operator matrix | Created, committed | COMPLETE |
| Mainnet owner address template | Created, committed | COMPLETE |
| Operator handoff checklist | Created, committed | COMPLETE |
| Mainnet address intake process | Created, committed | COMPLETE |
| Mainnet readiness runbook | Created, committed | COMPLETE |
| Mainnet deployment checklist | Created, committed | COMPLETE |
| Mainnet rollback checklist | Created, committed | COMPLETE |
| Final acceptance gate checklist | Created and reviewed | OPEN |
| Final production address package | All TBD values resolved | OPEN |
| Final deployment config | Matched against approved addresses | OPEN |
| Final read-only verification plan | Commands prepared before deployment | OPEN |
| Final human approval receipt | Captured before deployment | OPEN |

## Final acceptance gate summary

| Gate | Required result | Status |
| --- | --- | --- |
| Repository branch gate | Correct phase branch confirmed | OPEN |
| Working tree gate | Clean working tree before candidate packaging | OPEN |
| Source-code gate | No unreviewed source or contract changes | OPEN |
| Address gate | All production owner addresses finalized | OPEN |
| Governance gate | Governance owner category resolved | OPEN |
| Treasury gate | Treasury owner category and destinations resolved | OPEN |
| Emergency gate | Emergency authority separated from routine operations | OPEN |
| Operator gate | Operator permissions limited and documented | OPEN |
| Handoff gate | Bootstrap and deployer powers removed or justified | OPEN |
| Deployment config gate | Final config matches approved address package | OPEN |
| Verification gate | Read-only verification commands exist before deployment | OPEN |
| Rollback gate | Rollback procedure complete and reviewed | OPEN |
| Release gate | Evidence bundle and release notes prepared | OPEN |
| Security gate | No private secrets or wallet material in repository | OPEN |
| Human gate | Final human approval receipt captured | OPEN |

## Phase A: repository and branch readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Correct branch selected | branch receipt | OPEN |
| Local branch equals remote branch | local and remote HEAD receipt | OPEN |
| Working tree clean | git status receipt | OPEN |
| No unreviewed source changes | git diff receipt | OPEN |
| No uncommitted docs | git status receipt | OPEN |
| Main branch baseline recorded | commit hash receipt | OPEN |
| Phase branch latest commit recorded | commit hash receipt | OPEN |
| Release tag reference recorded | tag receipt | OPEN |

## Phase B: ownership and address readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Governance multisig or governance object finalized | approval receipt | OPEN |
| Emergency multisig finalized | approval receipt | OPEN |
| Treasury multisig finalized | approval receipt | OPEN |
| Operator multisig finalized | approval receipt | OPEN |
| Mint authority finalized | approval receipt | OPEN |
| Metadata operator finalized | approval receipt | OPEN |
| Vetting operator finalized | approval receipt | OPEN |
| Credential operator finalized | approval receipt | OPEN |
| Claim operator finalized | approval receipt | OPEN |
| Rescue destination finalized | approval receipt | OPEN |
| Founder receipt wallet or governance object finalized | approval receipt | OPEN |
| Deployment funding wallet finalized | approval receipt | OPEN |
| Bootstrap operator wallet documented as temporary only | approval receipt | OPEN |
| Every address checksum checked | checksum receipt | OPEN |
| Every address mapped to a role owner category | address matrix receipt | OPEN |
| Every address checked against mock local testnet misuse | review receipt | OPEN |

## Phase C: treasury and route readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| TreasuryRouter route destinations finalized | route approval receipt | OPEN |
| YieldPool receiver finalized | treasury approval receipt | OPEN |
| CFT treasury mint authority finalized | treasury approval receipt | OPEN |
| Fee and BPS recipient controls reviewed | governance approval receipt | OPEN |
| Rescue destination policy reviewed | emergency approval receipt | OPEN |
| No routine hot wallet treasury authority remains | review receipt | OPEN |
| Treasury route verification command exists | script review receipt | OPEN |
| Treasury route verification receipt captured | read-only receipt | OPEN |

## Phase D: deployment configuration readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Final deployment config file exists | file path and checksum receipt | OPEN |
| Config reads final approved addresses only | config review receipt | OPEN |
| No local mock addresses remain | grep receipt | OPEN |
| No Base Sepolia test-only addresses remain unless explicitly limited | grep receipt | OPEN |
| No private keys or wallet secrets are committed | grep receipt | OPEN |
| Role assignments match address template | manual review receipt | OPEN |
| Treasury routes match treasury owner matrix | manual review receipt | OPEN |
| Bootstrap role removal path reviewed | script review receipt | OPEN |
| Deployment dry-run command exists | script review receipt | OPEN |

## Phase E: verification readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Solidity build passes | forge build receipt | OPEN |
| Full test suite passes | forge test receipt | OPEN |
| Safe lint cleanup reviewed | lint receipt or deferral note | OPEN |
| Read-only post-deploy audit command exists | script review receipt | OPEN |
| Role verification command exists | script review receipt | OPEN |
| Treasury route verification command exists | script review receipt | OPEN |
| Emergency pause verification command exists | script review receipt | OPEN |
| Contract address capture command exists | script review receipt | OPEN |
| Explorer source verification command exists | script review receipt | OPEN |

## Phase F: rollback readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Rollback checklist created | checklist receipt | COMPLETE |
| Rollback checklist reviewed | human review receipt | OPEN |
| Stop before broadcast procedure documented | rollback checklist receipt | OPEN |
| Bad candidate abandonment procedure documented | rollback checklist receipt | OPEN |
| Post broadcast containment procedure documented | rollback checklist receipt | OPEN |
| Contract specific response table documented | rollback checklist receipt | OPEN |
| Role rollback checklist documented | rollback checklist receipt | OPEN |
| Treasury rollback checklist documented | rollback checklist receipt | OPEN |
| Release rollback checklist documented | rollback checklist receipt | OPEN |
| Evidence package required after rollback documented | rollback checklist receipt | OPEN |

## Phase G: release and evidence readiness

| Check | Evidence required | Status |
| --- | --- | --- |
| Evidence directory path finalized | release prep receipt | OPEN |
| Required evidence files checked before release creation | script or checklist receipt | OPEN |
| Release notes cannot be empty | script or checklist receipt | OPEN |
| Missing bundle stops release creation | script or checklist receipt | OPEN |
| Asset upload failures stop release creation | script or checklist receipt | OPEN |
| Remote tag existence verified | script or checklist receipt | OPEN |
| GitHub release view captured after publish | receipt artifact | OPEN |
| Receipts written deterministically | receipt artifact | OPEN |
| Manual repair not required for ordinary successful releases | review receipt | OPEN |

## Phase H: final human approval gate

| Check | Evidence required | Status |
| --- | --- | --- |
| Final owner address package reviewed | approval receipt | OPEN |
| Final role-owner matrix reviewed | approval receipt | OPEN |
| Final treasury-owner matrix reviewed | approval receipt | OPEN |
| Final operator-permission matrix reviewed | approval receipt | OPEN |
| Final operator handoff reviewed | approval receipt | OPEN |
| Final rollback checklist reviewed | approval receipt | OPEN |
| Final deployment checklist reviewed | approval receipt | OPEN |
| Final release notes reviewed | approval receipt | OPEN |
| Final candidate plan reviewed | approval receipt | OPEN |
| Final human approval captured | approval receipt | OPEN |

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in repository files.
- Any source or contract file changed without a dedicated code review phase.
- Any source or contract change is untested.
- Any bootstrap deployer or temporary operator retains production powers without explicit approval.
- Any treasury authority is assigned to a routine operator without approval.
- Any mock, local, Base Sepolia, or test-only address is used as a production address without explicit limitation.
- Any final role assignment cannot be verified by read-only command.
- Any treasury route cannot be verified by read-only command.
- Any rollback path is incomplete.
- Any release evidence file is missing.
- Any final human approval is missing.

## Final acceptance decision record

| Decision field | Value |
| --- | --- |
| Candidate deployment authorized | NO |
| Final acceptance status | OPEN |
| Final approving authority | TBD |
| Final approval receipt | TBD |
| Final candidate commit | TBD |
| Final candidate config checksum | TBD |
| Final release evidence bundle | TBD |

## Evidence required before this checklist can become COMPLETE

- Final owner address template with no TBD entries.
- Final operator handoff checklist with evidence references.
- Final address intake package.
- Final deployment config review receipt.
- Final deployment checklist.
- Final rollback checklist.
- Final role-owner matrix.
- Final treasury-owner matrix.
- Final operator-permission matrix.
- Final read-only role audit command.
- Final treasury route verification command.
- Final emergency pause verification command.
- Final source verification plan.
- Final release notes.
- Final human approval receipt.

## Current status

- Final acceptance gate checklist draft created.
- No mainnet deployment has been authorized.
- Production owner addresses remain TBD.
- No source code has been changed.
- Next task: review this final acceptance gate checklist, then commit it as a docs-only readiness artifact.

## V0.5.2 Via-IR build profile adoption reference

Updated UTC: 2026-09-27T17:35:38Z

Adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md
Adoption commit: 3d28f6a70ad89262ee084980f29ab4d07a3e8f76
Foundry config commit: d0cf09d6c0399a83d870ab1b4b904b174b61bebd

The Via-IR build profile has been adopted in foundry.toml.

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

| Gate item | Current result | Status |
| --- | --- | --- |
| Build profile decision record exists | docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md | COMPLETE |
| Via-IR hardening checklist exists | docs/checklists/V0_5_2_VIA_IR_BUILD_PROFILE_HARDENING_CHECKLIST.md | COMPLETE |
| Via-IR adoption record exists | docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md | COMPLETE |
| foundry.toml contains via_ir = true | Confirmed | COMPLETE |
| forge build under committed Via-IR profile | Passing in adoption record | PASS |
| forge test under committed Via-IR profile | Passing in adoption record | PASS |
| Final production addresses | Still TBD | OPEN |
| Final deployment config matched to approved production addresses | Not complete | OPEN |
| Final release evidence | Not complete | OPEN |
| Final human approval | Not captured | OPEN |

Mainnet deployment remains blocked until all final acceptance gate requirements are complete, reviewed, committed, and approved.

## V0.5.2 mainnet address intake package reference

Marker: V0_5_2_ADDRESS_INTAKE_PACKAGE_FINAL_ACCEPTANCE_REFERENCE
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

The deployment config review checklist is now a required readiness gate artifact for any future v0.5.2 mainnet candidate package.

This reference does not authorize deployment.

Final acceptance remains OPEN until the deployment config review checklist is completed, all production owner addresses are resolved, the final deployment configuration is reviewed against approved address evidence, and final human approval is captured.

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

This reference connects the Final acceptance gate to the final production address approval receipt template.

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
