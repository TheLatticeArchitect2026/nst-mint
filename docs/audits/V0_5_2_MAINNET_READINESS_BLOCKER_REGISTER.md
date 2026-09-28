# NST Core v0.5.2 Mainnet Readiness Blocker Register

Status: DRAFT BLOCKER REGISTER  
Phase: v0.5.2 mainnet readiness  
Branch: phase/v0.5.2-mainnet-readiness  
Created UTC: 2026-09-28T12:40:43Z  
Current commit at creation: d45fe3c00ca533de05891298631fb91f57e145da  

Foundry Via-IR config evidence:

```text
11:via_ir = true
```

## Source documents

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md  
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md  
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md  
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md  
Source release script hardening checklist: docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md  
Source Via-IR hardening checklist: docs/checklists/V0_5_2_VIA_IR_BUILD_PROFILE_HARDENING_CHECKLIST.md  
Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md  
Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md  
Source release evidence bundle checklist: docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md  
Source no-deployment candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md  
Source address intake package: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md  
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md  
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md  
Source role treasury operator matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md  
Source role treasury operator audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md  
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md  
Source build profile decision record: docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md  
Source Via-IR adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md  
Source Foundry build profile triage: docs/audits/V0_5_2_FOUNDRY_BUILD_PROFILE_TRIAGE.md  
Source final human approval template: docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md  

## Purpose

This document is the controlling blocker register for NST Core v0.5.2 mainnet readiness.

This document is not a deployment authorization.

No mainnet deployment is authorized by this document.

This document does not create, approve, or imply any deployment command.

This document does not approve any address, route, role, treasury destination, operator, key, deployer wallet, governance object, release package, or deployment configuration.

This document preserves the remaining blockers that must be resolved before any future candidate deployment command may be prepared.

## Current controlled state

| Area | Current result | Status |
| --- | --- | --- |
| Branch | phase/v0.5.2-mainnet-readiness | COMPLETE |
| Current commit | d45fe3c00ca533de05891298631fb91f57e145da | COMPLETE |
| Foundry build profile | Via-IR committed in foundry.toml | COMPLETE |
| Build profile decision | Via-IR candidate path documented | COMPLETE |
| Via-IR adoption | Adoption record committed | COMPLETE |
| Build evidence | Build passes under committed Via-IR profile | PASS |
| Test evidence | Test suite passes under committed Via-IR profile | PASS |
| Address intake package | Draft package created | COMPLETE |
| Address intake final values | Production owner addresses remain TBD | OPEN |
| Deployment config review checklist | Created and committed | COMPLETE |
| Deployment config final file | Not created from approved addresses yet | OPEN |
| Read-only verification checklist | Created and committed | COMPLETE |
| Final verification receipts | Not captured | OPEN |
| Release evidence bundle checklist | Created and committed | COMPLETE |
| Final release evidence bundle | Not finalized | OPEN |
| Final human approval receipt template | Created and committed | COMPLETE |
| Final human approval receipt | Not completed | OPEN |
| Mainnet deployment | Not authorized | BLOCKED |

## Primary blockers

| Blocker | Required resolution | Current status |
| --- | --- | --- |
| Production owner addresses | Final public production addresses from approved source of truth | OPEN |
| Governance object | Final governance multisig or governance object approval | OPEN |
| Emergency authority | Final emergency multisig or emergency authority approval | OPEN |
| Treasury authority | Final treasury multisig, treasury destination, and route approval | OPEN |
| Operator authority | Final operator multisig and operator assignment approval | OPEN |
| Role owners | Final role owner mapping with no TBD values | OPEN |
| Treasury routes | Final treasury route mapping with no TBD values | OPEN |
| Founder receipt wallet | Final founder custody approval or governance object approval | OPEN |
| Yield pool receiver | Final treasury approval | OPEN |
| CFT treasury destination | Final treasury approval | OPEN |
| Rescue destination | Final emergency and treasury approval | OPEN |
| Deployment funding wallet | Final funding approval | OPEN |
| Bootstrap operator | Temporary deployment-only approval or removal after handoff | OPEN |
| Final deployment config | Created only from approved production address package | OPEN |
| Deployment config checksum | Captured after final config creation | OPEN |
| Deployment config manual review | Captured after final config creation | OPEN |
| Read-only verification commands | Finalized against approved deployment config | OPEN |
| Read-only verification receipts | Captured after approved command execution | OPEN |
| Release evidence bundle | Finalized from real receipts and artifacts | OPEN |
| Rollback package | Complete and reviewed | OPEN |
| Final acceptance gate | Complete, reviewed, committed, pushed, and remotely confirmed | OPEN |
| Final human approval receipt | Completed only after all readiness blockers are resolved | OPEN |

## Mainnet authorization rule

Mainnet deployment remains blocked until every final acceptance gate item is marked COMPLETE, reviewed, committed, pushed, remotely confirmed, and paired with the required evidence receipt.

A passing build does not authorize deployment.

A passing test suite does not authorize deployment.

A committed Via-IR build profile does not authorize deployment.

A candidate plan does not authorize deployment.

An address intake draft does not authorize deployment.

A deployment config review checklist does not authorize deployment.

A read-only verification checklist does not authorize deployment.

A release evidence bundle checklist does not authorize deployment.

A final human approval receipt template does not authorize deployment.

Only a complete final approval package plus explicit human approval can authorize moving toward a candidate deployment command.

## Secret exclusion rule

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information belong in this repository.

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information belong in readiness documents.

Only public addresses, public contract addresses, public governance objects, checksums, commit IDs, evidence file names, approval references, review receipts, and non-secret operational confirmations may be documented.

## Address evidence rule

Production addresses must come only from an approved source of truth.

Do not use memory, screenshots, chat text, guesswork, mock addresses, Anvil addresses, local addresses, Base Sepolia test-only addresses, or placeholder addresses as final production values.

Any address row that remains TBD keeps mainnet deployment blocked.

Any address row that lacks approval evidence keeps mainnet deployment blocked.

Any address row that contains private material must be rejected.

## Required resolution sequence

| Phase | Required action | Status |
| --- | --- | --- |
| A | Collect final public production addresses from approved source of truth | OPEN |
| B | Complete address intake package with no TBD production owner values | OPEN |
| C | Update final owner address template with no TBD production owner values | OPEN |
| D | Update role treasury operator matrix with approved final owners | OPEN |
| E | Update operator handoff checklist with final operator evidence | OPEN |
| F | Prepare final deployment config from approved addresses only | OPEN |
| G | Capture deployment config checksum and manual review receipt | OPEN |
| H | Confirm deployment config matches address package and role matrix | OPEN |
| I | Finalize read-only verification command set against final config | OPEN |
| J | Confirm rollback checklist remains compatible | OPEN |
| K | Confirm release evidence bundle inputs exist | OPEN |
| L | Complete final acceptance gate review | OPEN |
| M | Complete final human approval receipt | OPEN |
| N | Only after explicit approval, prepare candidate deployment command | BLOCKED |

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any role owner remains TBD.
- Any treasury route remains TBD.
- Any final deployment config field remains unresolved.
- Any final deployment config checksum is missing.
- Any final deployment config review receipt is missing.
- Any final read-only verification command is missing.
- Any final read-only verification receipt is missing.
- Any rollback path is incomplete.
- Any release evidence bundle item is missing.
- Any final acceptance gate item remains OPEN.
- Any final human approval receipt is missing.
- Any private key, seed phrase, API key, wallet secret, deployer key, recovery phrase, signing material, private RPC credential, keystore password, or hardware wallet recovery information appears in repository files.
- Any deployment command is prepared before final human approval.
- Any deployment command is prepared from mock, local, test-only, or placeholder values.

## Current recommendation

Use this blocker register as the controlling no-deployment readiness status record.

Do not create a candidate deployment command yet.

Do not create final deployment config yet unless final approved production addresses are available from an approved source of truth.

Do not use mock, local, Base Sepolia, Anvil, screenshot, chat, or placeholder addresses as production values.

Next safe task: prepare the final production address collection package from the existing address intake package and collect only public production addresses plus approval evidence.

## Acceptance rule for this blocker register

This blocker register is complete only when:

- The current blockers are documented.
- The no-deployment rule is documented.
- The secret exclusion rule is documented.
- The required resolution sequence is documented.
- No source code is changed by this register.
- The register is committed and pushed to the v0.5.2 phase branch.
- Mainnet deployment remains blocked.
