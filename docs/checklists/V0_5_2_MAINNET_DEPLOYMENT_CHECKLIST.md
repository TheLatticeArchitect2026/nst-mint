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
