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
