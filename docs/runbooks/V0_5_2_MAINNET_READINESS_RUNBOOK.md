# NST Core v0.5.2 Mainnet Readiness Runbook

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 817cf027f199edf2be866d6899659fda266c7a3b
Created UTC: 2026-09-27T10:49:38Z

## Purpose

This runbook defines the mainnet-readiness operating path after the successful v0.5.1 Base Sepolia live release.

This document is not a mainnet deployment authorization.

No mainnet deployment is authorized by this runbook.

## Source readiness documents

| Document | Purpose | Status |
| --- | --- | --- |
| docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md | Role, treasury, operator inventory and audit foundation | CREATED |
| docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md | Role owner, treasury owner, operator permission, and handoff matrix | CREATED |
| docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md | Mainnet owner address template | CREATED |
| docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md | Operator handoff checklist | CREATED |
| docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md | Address intake process | CREATED |

## Current phase state

- v0.5.1 Base Sepolia live release is complete.
- BaseScan source verification is complete.
- GitHub release and evidence bundle are published.
- Remote tag audit is complete.
- v0.5.2 mainnet-readiness branch is open.
- Stale Section 21 master-spec next-task language has been reconciled.
- Role, treasury, operator, address, intake, and handoff documentation has been drafted.
- Production mainnet addresses remain TBD.
- No mainnet deployment has been authorized.

## Mainnet readiness workstream

| Step | Gate | Status |
| --- | --- | --- |
| 1 | Reconcile stale master-spec status language | COMPLETE |
| 2 | Create role, treasury, and operator inventory | COMPLETE |
| 3 | Create role / treasury / operator audit draft | COMPLETE |
| 4 | Create role / treasury / operator matrix | COMPLETE |
| 5 | Create mainnet owner address template | COMPLETE |
| 6 | Create operator handoff checklist | COMPLETE |
| 7 | Create mainnet address intake process | COMPLETE |
| 8 | Create mainnet readiness runbook | IN PROGRESS |
| 9 | Create deployment checklist | OPEN |
| 10 | Create rollback checklist | OPEN |
| 11 | Create final acceptance gate checklist | OPEN |
| 12 | Harden release scripts and receipt checks | OPEN |
| 13 | Review safe Foundry lint cleanup opportunities | OPEN |
| 14 | Prepare mainnet candidate plan without deployment | OPEN |

## Mainnet acceptance gates

Mainnet deployment remains blocked until all of the following are complete:

- Final owner address template is complete.
- Role-owner matrix is complete.
- Treasury-owner matrix is complete.
- Operator-permission matrix is complete.
- Operator handoff checklist is complete.
- Address intake process is complete and reviewed.
- Deployment checklist is complete.
- Rollback checklist is complete.
- Release documentation is updated.
- Final human review is complete.
- Final deployment config matches approved addresses.
- Read-only post-deploy audit command exists before deployment.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any bootstrap deployer role is retained without explicit approval.
- Any private key, seed phrase, API key, or wallet secret appears in repo files.
- Any source or contract file changes without a dedicated code-review phase.
- Any treasury role is assigned to a routine operator without approval.
- Any mock, local, or test-only address is used as a production address without explicit limitation.
- Any final role assignment cannot be verified by read-only command.

## Mainnet candidate package requirements

A future mainnet candidate package must include:

- Final approved owner address template.
- Final operator handoff checklist.
- Final deployment config review receipt.
- Final role-owner matrix.
- Final treasury-owner matrix.
- Final operator-permission matrix.
- Final rollback checklist.
- Final emergency pause checklist.
- Final release notes.
- Final read-only role audit command.
- Final human approval receipt.

## Script hardening requirements

Before any candidate deployment, release scripts should be hardened so that:

- Required evidence files are checked before release creation.
- Release notes cannot be empty.
- Asset upload failures stop the script.
- Remote tag existence is verified.
- GitHub release view is captured after publish.
- Receipts are written deterministically.
- Manual repair is not required for ordinary successful releases.

## Current status

- Runbook draft created.
- No source code has been changed.
- Mainnet deployment remains blocked.
- Next task: review this runbook, then commit it as a docs-only readiness artifact.

## V0.5.2 Via-IR build profile adoption reference

Updated UTC: 2026-09-27T17:35:38Z

Adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md
Adoption commit: 3d28f6a70ad89262ee084980f29ab4d07a3e8f76
Foundry config commit: d0cf09d6c0399a83d870ab1b4b904b174b61bebd

The v0.5.2 readiness branch now records Via-IR as the adopted build profile in foundry.toml.

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

Current build-profile state:

- Standard non-Via-IR build failure was documented as a build-profile issue.
- Via-IR build probe passed.
- Via-IR full test probe passed.
- foundry.toml was updated to set via_ir = true.
- The Via-IR config patch was committed and pushed.
- The Via-IR adoption record confirms forge build and forge test pass under the committed config.
- Final acceptance remains OPEN.
- Production owner addresses remain TBD.
- Mainnet deployment remains blocked.

Next readiness work must continue through final acceptance, deployment configuration, verification command review, release evidence, and final human approval.

## V0.5.2 mainnet address intake package reference

Marker: V0_5_2_ADDRESS_INTAKE_PACKAGE_RUNBOOK_REFERENCE
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

The v0.5.2 readiness runbook now treats the deployment config review checklist as a required pre-deployment readiness artifact.

The deployment config review checklist must be completed before any candidate deployment command, deployment config file, contract address capture command, role verification command, treasury route verification command, release evidence package, or final acceptance gate can be treated as complete.

The current branch uses the committed Via-IR Foundry build profile, but a passing build and passing test suite do not authorize deployment.

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
