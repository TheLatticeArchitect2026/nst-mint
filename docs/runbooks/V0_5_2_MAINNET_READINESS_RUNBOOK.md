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
