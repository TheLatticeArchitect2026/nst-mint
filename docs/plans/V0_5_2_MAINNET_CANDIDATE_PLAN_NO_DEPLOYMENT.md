# NST Core v0.5.2 Mainnet Candidate Plan - No Deployment

Status: DRAFT PLAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-09-27T18:22:21Z
Current commit: 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source release hardening checklist: docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md
Source Via-IR hardening checklist: docs/checklists/V0_5_2_VIA_IR_BUILD_PROFILE_HARDENING_CHECKLIST.md
Source build profile decision record: docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md
Source Via-IR adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md
Source build profile triage: docs/audits/V0_5_2_FOUNDRY_BUILD_PROFILE_TRIAGE.md
Source role audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source role matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md

Receipt file: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-candidate-plan-receipt-20260927T182203Z.txt
Forge fmt receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-candidate-plan-forge-fmt-check-20260927T182203Z.log
Forge build receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-candidate-plan-forge-build-20260927T182203Z.log
Forge test receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-candidate-plan-forge-test-20260927T182203Z.log

## Purpose

This document defines the next safe no-deployment candidate planning path for NST Core v0.5.2.

This document is not a deployment authorization.

No mainnet deployment is authorized by this plan.

This plan exists to prepare a future mainnet candidate package only after the required governance, treasury, operator, address, handoff, rollback, release, verification, and human approval artifacts are complete.

## Current controlled state

| Item | Current result | Status |
| --- | --- | --- |
| v0.5.2 branch | phase/v0.5.2-mainnet-readiness | COMPLETE |
| Current HEAD | 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8 | COMPLETE |
| Via-IR config commit | d0cf09d6c0399a83d870ab1b4b904b174b61bebd | COMPLETE |
| Build profile decision record | 27e25e3f25520ea1c71df1e0f52d09988928e6be | COMPLETE |
| Via-IR hardening checklist | 76f1eab00ed99b3ed9fb4efa65e8cbc66d49404e | COMPLETE |
| Via-IR adoption record | 3d28f6a70ad89262ee084980f29ab4d07a3e8f76 | COMPLETE |
| Final acceptance gate reference update | 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8 | COMPLETE |
| Deployment checklist reference update | 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8 | COMPLETE |
| Readiness runbook reference update | 62cf12f4ccd0323fbcb7cc4da0a7db7bd524a9d8 | COMPLETE |
| foundry.toml | via_ir = true | COMPLETE |
| forge fmt --check | Passed | PASS |
| forge build | Passed under committed Via-IR config | PASS |
| forge test | Passed under committed Via-IR config | PASS |
| Production owner addresses | Still TBD | OPEN |
| Final deployment config | Not finalized | OPEN |
| Final release evidence bundle | Not finalized | OPEN |
| Final human approval | Not captured | OPEN |
| Mainnet deployment | Not authorized | BLOCKED |

## Mainnet authorization rule

Mainnet deployment remains blocked until every final acceptance gate item is marked COMPLETE, reviewed, committed, and paired with the required evidence receipt.

A candidate plan does not authorize deployment.

A passing build does not authorize deployment.

A passing test suite does not authorize deployment.

A committed Via-IR build profile does not authorize deployment.

Deployment remains blocked while any production owner address, governance object, treasury destination, operator assignment, handoff requirement, rollback requirement, verification command, release artifact, or final human approval remains OPEN or TBD.

## Candidate package required contents

A future candidate package must include:

- Final approved owner address template with no TBD production owner entries.
- Final address intake package with approval evidence.
- Final governance owner record.
- Final treasury owner and destination record.
- Final operator permission record.
- Final operator handoff evidence.
- Final deployment config with checksum.
- Final deployment config review receipt.
- Final deployment checklist.
- Final rollback checklist.
- Final acceptance gate checklist.
- Final role owner matrix.
- Final treasury owner matrix.
- Final operator permission matrix.
- Final read-only role audit command.
- Final treasury route verification command.
- Final emergency pause verification command.
- Final contract verification plan.
- Final release notes.
- Final release evidence bundle.
- Final human approval receipt.

## Candidate plan sequence

| Phase | Required action | Status |
| --- | --- | --- |
| A | Collect final production owner addresses from approved source of truth | OPEN |
| B | Complete address intake package and reject placeholders | OPEN |
| C | Update final owner address template with no TBD values | OPEN |
| D | Update role, treasury, and operator matrices with final values | OPEN |
| E | Confirm operator handoff with evidence references | OPEN |
| F | Prepare deployment config using approved addresses only | OPEN |
| G | Review deployment config against approved address package | OPEN |
| H | Run deterministic forge fmt, forge build, and forge test receipts | OPEN |
| I | Prepare read-only role and treasury verification commands | OPEN |
| J | Confirm rollback checklist remains compatible | OPEN |
| K | Confirm release script hardening requirements remain satisfied | OPEN |
| L | Prepare release notes and evidence bundle | OPEN |
| M | Complete final acceptance gate review | OPEN |
| N | Capture final human approval receipt | OPEN |
| O | Only after approval, prepare candidate deployment command | BLOCKED |

## Current Via-IR build profile evidence

The current branch uses Via-IR as the committed Foundry build profile.

Observed evidence:

- foundry.toml contains via_ir = true.
- forge fmt --check passed.
- forge build passed.
- forge test passed.
- Build profile adoption was recorded in docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md.
- Readiness references were added to the final acceptance gate, deployment checklist, and runbook.

This evidence supports the build-profile decision only.

It does not authorize deployment.

## Address package blocker

Production owner addresses remain TBD.

The following address categories must be resolved before any candidate package can move toward deployment:

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

No mock, local, Base Sepolia, or test-only address may be used as a production address without explicit written limitation and final approval.

## Deployment config blocker

The final deployment config is not complete.

Before any future candidate deployment command is prepared, the config must prove:

- It uses final approved production addresses only.
- It does not contain local mock addresses.
- It does not contain Base Sepolia test-only addresses unless explicitly limited.
- It does not contain private keys, seed phrases, API keys, wallet secrets, deployer keys, or recovery phrases.
- It matches the final approved owner address template.
- It matches the final role owner matrix.
- It matches the final treasury owner matrix.
- It matches the final operator permission matrix.
- It has a checksum receipt.
- It has a manual review receipt.

## Verification command blocker

The final verification command set is not complete.

Before any future deployment, the project must have reviewed commands for:

- Contract address capture.
- Explorer/source verification.
- Read-only role verification.
- Treasury route verification.
- Emergency pause verification.
- Mint, metadata, treasury, swap, registry, claim, rescue, yield, and vault role verification.
- Post-deploy read-only audit.
- Receipt capture.

## Release evidence blocker

The final release evidence bundle is not complete.

Before release creation, the project must prove:

- Required evidence files exist.
- Release notes are not empty.
- Missing bundle stops release creation.
- Asset upload failure stops release creation.
- Remote tag existence is checked.
- GitHub release view is captured after publish.
- Receipts are written deterministically.
- Manual repair is not required for ordinary successful releases.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any final deployment config field remains unresolved.
- Any final verification command is missing.
- Any rollback path is incomplete.
- Any release evidence file is missing.
- Any release notes are empty.
- Any source or contract file changed without dedicated review.
- Any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in repository files.
- Any mock, local, Base Sepolia, or test-only address is used as a production address without explicit limitation.
- Any final human approval receipt is missing.

## Candidate decision record

| Decision field | Current value |
| --- | --- |
| Candidate deployment authorized | NO |
| Candidate plan status | DRAFT |
| Build profile | Via-IR committed in foundry.toml |
| Build status | PASS |
| Test status | PASS |
| Production address package | OPEN |
| Deployment config review | OPEN |
| Verification command review | OPEN |
| Release evidence bundle | OPEN |
| Final human approval | OPEN |
| Mainnet deployment status | BLOCKED |

## Current status

- Mainnet candidate plan created.
- No deployment command has been created.
- No deployment command has been executed.
- No mainnet deployment has been authorized.
- Via-IR build profile is committed and passing build/test.
- Production owner addresses remain TBD.
- Final acceptance remains OPEN.
- Next task: collect and validate the final production address package, or keep mainnet deployment blocked.

## V0.5.2 mainnet address intake package reference

Marker: V0_5_2_ADDRESS_INTAKE_PACKAGE_CANDIDATE_PLAN_REFERENCE
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

The no-deployment candidate plan now depends on the deployment config review checklist.

The candidate plan remains a planning artifact only.

The candidate plan does not authorize deployment.

Before any future deployment candidate can be prepared, the deployment config review checklist must confirm that the final deployment configuration uses approved public production addresses only, contains no secrets, contains no local mock values, contains no unauthorized Base Sepolia values, matches the final owner address template, matches the role and treasury matrices, and has checksum, manual review, and read-only verification receipts.

Production owner addresses remain TBD.

No mainnet deployment is authorized by this reference.
