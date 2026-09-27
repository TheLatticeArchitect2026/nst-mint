# NST Core v0.5.2 Mainnet Rollback Checklist

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 84712ac8a73476013c20008b97253cf060871dd6
Created UTC: 2026-09-27T11:27:28Z
Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source role audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source role matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md

## Purpose

This checklist defines the rollback readiness gate for any future NST Core mainnet candidate package.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

A blockchain deployment cannot be erased after it is mined. In this project, rollback means preventing a bad deployment before broadcast where possible, abandoning a bad candidate, pausing or containing contracts where available, correcting role grants, protecting treasury routes, preserving evidence, and publishing clear operator instructions.

## Security scope

- No private keys, seed phrases, API keys, deployer keys, wallet secrets, or recovery phrases belong in this repository.
- No production owner address may remain TBD before a mainnet candidate deployment.
- No mock, local, Base Sepolia, or test-only address may be treated as a production mainnet address without explicit written limitation.
- No bootstrap deployer or temporary operator may retain production powers after handoff unless explicitly approved and documented.
- Rollback authority must be separated from routine hot-wallet operation where practical.

## Rollback authority model

| Authority area | Required owner category | Required evidence | Status |
| --- | --- | --- | --- |
| Emergency pause authority | TBD_EMERGENCY_MULTISIG | Final address template plus approval receipt | OPEN |
| Treasury emergency authority | TBD_TREASURY_MULTISIG | Treasury owner matrix plus approval receipt | OPEN |
| Governance override authority | TBD_GOVERNANCE_MULTISIG | Governance approval receipt | OPEN |
| Rescue destination authority | TBD_EMERGENCY_MULTISIG or treasury custody | Rescue address approval receipt | OPEN |
| Communication authority | Final human reviewer | Release and incident communication receipt | OPEN |
| Deployer authority removal | NONE_AFTER_HANDOFF | Post-deploy role audit receipt | OPEN |

## Pre-deployment rollback gates

| Check | Evidence required | Status |
| --- | --- | --- |
| Final owner address template complete | Approved address template | OPEN |
| Operator handoff checklist complete | Handoff checklist with evidence references | OPEN |
| Deployment checklist complete | Deployment checklist receipt | OPEN |
| Role owner matrix complete | Role matrix with final owner categories resolved | OPEN |
| Treasury owner matrix complete | Treasury matrix with final treasury destinations resolved | OPEN |
| Operator permission matrix complete | Operator matrix with prohibited scopes reviewed | OPEN |
| Read-only post-deploy audit command exists | Script review receipt | OPEN |
| Emergency pause command exists | Script review receipt | OPEN |
| Emergency unpause command exists | Script review receipt | OPEN |
| Role revoke command exists | Script review receipt | OPEN |
| Treasury route verification command exists | Script review receipt | OPEN |
| Rescue path is documented | Emergency and treasury approval receipt | OPEN |
| Release evidence checks are hardened | Release script review receipt | OPEN |
| Final human approval receipt captured | Approval receipt | OPEN |

## Rollback trigger conditions

Rollback or stop procedures must activate if any of the following occur:

- Wrong branch, wrong commit, wrong chain, or wrong deployment config is detected.
- Any final production owner address is missing, invalid, or still TBD.
- Any private key, seed phrase, API key, deployer key, wallet secret, or recovery phrase appears in repository files.
- Any source or contract file changed outside a dedicated code-review phase.
- Any deployment script contains a local mock address, Base Sepolia address, or test-only address for production without explicit limitation.
- Any role assignment differs from the approved address template.
- Any treasury route differs from the approved treasury owner matrix.
- Any bootstrap deployer or temporary operator keeps production powers without explicit approval.
- Any BaseScan or source verification step fails.
- Any release evidence asset is missing or empty.
- Any read-only post-deploy role audit fails.
- Any high severity issue appears before final human approval.

## Phase 0 rollback: stop before deployment

| Step | Action | Evidence required | Status |
| --- | --- | --- | --- |
| 1 | Stop command execution before broadcast | Terminal receipt | OPEN |
| 2 | Capture git status, branch, and HEAD | Git receipt | OPEN |
| 3 | Capture failing preflight check | Failure receipt | OPEN |
| 4 | Do not publish a release | GitHub release check receipt | OPEN |
| 5 | Do not tag a release | Tag check receipt | OPEN |
| 6 | Record candidate as abandoned | Candidate record | OPEN |

## Phase 1 rollback: abandon bad candidate package

| Step | Action | Evidence required | Status |
| --- | --- | --- | --- |
| 1 | Mark candidate package rejected | Rejection receipt | OPEN |
| 2 | Preserve candidate artifacts for audit | Artifact inventory | OPEN |
| 3 | Open a new readiness repair task | Issue or status note | OPEN |
| 4 | Confirm no mainnet transaction was broadcast | RPC or explorer receipt | OPEN |
| 5 | Confirm working tree state after stop | Git receipt | OPEN |

## Phase 2 rollback: post-broadcast containment

If a transaction was broadcast or a contract was deployed, rollback becomes containment rather than erasure.

| Step | Action | Evidence required | Status |
| --- | --- | --- | --- |
| 1 | Capture transaction hash and deployed addresses | Explorer receipt | OPEN |
| 2 | Pause pausable contracts where authorized | Pause transaction receipts | OPEN |
| 3 | Stop mint, burn, claim, route, and rescue operations where possible | Role or pause receipt | OPEN |
| 4 | Verify treasury routes and asset destinations | Read-only route receipt | OPEN |
| 5 | Verify deployer and bootstrap powers | Read-only role receipt | OPEN |
| 6 | Escalate to final human reviewer | Approval or incident receipt | OPEN |

## Contract-specific rollback response

| Contract | Primary response | Required evidence | Status |
| --- | --- | --- | --- |
| CFTv2 | Pause token operations and verify mint and burn authorities | Pause and role audit receipt | OPEN |
| NSTSBT | Pause mint flow, verify mint manager, metadata manager, treasury manager, and swap operator roles | Pause and role audit receipt | OPEN |
| ReferralController | Pause referral actions and verify config manager authority | Pause and role audit receipt | OPEN |
| RewardEscrow | Pause grant creation and verify grant creator authority | Pause and role audit receipt | OPEN |
| ShieldRegistry | Pause registry actions and verify vetting, ban, exemption, and profile authority | Pause and role audit receipt | OPEN |
| TreasuryRouter | Pause treasury routing and verify route manager, treasury operator, asset manager, and emergency manager authority | Pause and role audit receipt | OPEN |
| VaultRegistry | Pause credential issuance and verify credential, URI, and proof authorities | Pause and role audit receipt | OPEN |
| YieldPool | Pause yield operations and verify asset, grant, claim, and rescue authorities | Pause and role audit receipt | OPEN |

## Role rollback checklist

| Check | Evidence required | Status |
| --- | --- | --- |
| DEFAULT_ADMIN_ROLE owner verified for each contract | Read-only role audit | OPEN |
| Pauser role owners verified | Read-only role audit | OPEN |
| Treasury roles verified | Read-only role audit | OPEN |
| Mint roles verified | Read-only role audit | OPEN |
| Metadata roles verified | Read-only role audit | OPEN |
| Registry roles verified | Read-only role audit | OPEN |
| Claim and rescue roles verified | Read-only role audit | OPEN |
| Bootstrap deployer retained powers checked | Read-only role audit | OPEN |
| Unauthorized role grants revoked if required | Transaction receipt | OPEN |

## Treasury rollback checklist

| Check | Evidence required | Status |
| --- | --- | --- |
| Founder receipt wallet verified | Address approval receipt | OPEN |
| Yield pool receiver verified | Address approval receipt | OPEN |
| TreasuryRouter route destinations verified | Route read-only receipt | OPEN |
| Fee or BPS recipient controls reviewed | Review receipt | OPEN |
| Rescue destination verified | Emergency and treasury approval receipt | OPEN |
| No routine operator controls treasury movement without approval | Review receipt | OPEN |

## Release rollback checklist

| Check | Evidence required | Status |
| --- | --- | --- |
| GitHub release not published for failed candidate | gh release check receipt | OPEN |
| Tag not created for failed candidate | git tag receipt | OPEN |
| If tag exists, final human decision recorded before deletion or replacement | Approval receipt | OPEN |
| Failed candidate notes preserved | Receipt file | OPEN |
| Public release notes do not claim success unless all gates passed | Review receipt | OPEN |

## Evidence package required after rollback

- Branch and commit receipt.
- Git status receipt.
- Failed check receipt.
- Transaction hash receipt if anything was broadcast.
- Explorer or RPC confirmation receipt.
- Pause or revoke transaction receipts if used.
- Read-only role audit receipt.
- Treasury route verification receipt.
- Final human decision receipt.
- Updated release or candidate status note.

## Mainnet acceptance rule

Mainnet deployment remains blocked until this rollback checklist is complete, reviewed, and paired with a tested deployment checklist, address intake package, role owner matrix, treasury owner matrix, operator handoff checklist, final release notes, and final human approval receipt.

## Current status

- Rollback checklist draft created.
- No mainnet deployment has been authorized.
- Production owner addresses remain TBD.
- No source code has been changed.
- Next task: review this rollback checklist, then commit it as a docs-only readiness artifact.
