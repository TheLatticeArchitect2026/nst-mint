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
