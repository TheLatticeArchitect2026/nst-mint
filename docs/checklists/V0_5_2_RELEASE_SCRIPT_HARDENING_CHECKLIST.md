# NST Core v0.5.2 Release Script Hardening Checklist

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 9c596952b79525fe491a4fc075328e61053dabc6
Created UTC: 2026-09-27T12:44:24Z

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source role audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source role matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md
Inventory receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-release-script-hardening-inventory-20260927T124418Z.txt

## Purpose

This checklist defines the release-script hardening requirements for NST Core v0.5.2 mainnet readiness.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

This document does not change release scripts. It defines the acceptance requirements for a later dedicated script-hardening patch.

## Hardening rule

Release automation must be deterministic, auditable, and failure-safe before any future mainnet candidate package is prepared.

Manual repair must not be required for ordinary successful release creation.

A release script must stop on missing evidence, missing release notes, missing assets, failed uploads, failed tag checks, failed GitHub release checks, or dirty working tree state.

## Required source documents

| Document | Required state | Current status |
| --- | --- | --- |
| Mainnet readiness runbook | Created and committed | COMPLETE |
| Mainnet deployment checklist | Created and committed | COMPLETE |
| Mainnet rollback checklist | Created and committed | COMPLETE |
| Final acceptance gate checklist | Created and committed | COMPLETE |
| Role / treasury / operator audit | Created and committed | COMPLETE |
| Role / treasury / operator matrix | Created and committed | COMPLETE |
| Mainnet owner address template | Created and committed | COMPLETE |
| Operator handoff checklist | Created and committed | COMPLETE |
| Mainnet address intake process | Created and committed | COMPLETE |
| Release script hardening checklist | Created and reviewed | OPEN |
| Hardened release script patch | Dedicated code/script review phase | OPEN |
| Hardened release script test receipt | Successful test receipt | OPEN |

## Release hardening objectives

| Objective | Required result | Status |
| --- | --- | --- |
| Evidence file validation | Required evidence files checked before release creation | OPEN |
| Release note validation | Empty release notes stop the script | OPEN |
| Asset upload validation | Failed asset upload stops the script | OPEN |
| Tag validation | Local and remote tag existence confirmed | OPEN |
| GitHub release validation | Published release can be viewed after creation | OPEN |
| Receipt writing | Receipts are written deterministically | OPEN |
| Branch validation | Correct branch is confirmed before release action | OPEN |
| Dirty tree validation | Dirty working tree stops release action | OPEN |
| Source change validation | Unexpected source/code changes stop docs-only actions | OPEN |
| Manual repair elimination | Ordinary successful releases require no manual repair | OPEN |
| Failure receipt capture | Failed release attempt writes a clear receipt | OPEN |
| Rollback integration | Failed candidate release can be abandoned cleanly | OPEN |

## Candidate hardening targets

| Area | Candidate target | Required review | Status |
| --- | --- | --- |
| GitHub release creation | Existing release script or future release script | Locate and review | OPEN |
| Evidence bundle upload | Release asset upload command | Ensure failure stops script | OPEN |
| Release notes | Release notes file input | Ensure non-empty before publish | OPEN |
| Tag creation | git tag / git push tag flow | Verify local and remote tag existence | OPEN |
| Receipt directory | NST_Release_Receipts output path | Ensure deterministic receipt naming | OPEN |
| Release view | gh release view or equivalent | Capture published release confirmation | OPEN |
| Existing receipts | Prior v0.5.1 receipt pattern | Preserve good patterns | OPEN |
| Failed release behavior | Stop and write failure receipt | Required before candidate deployment | OPEN |

## Phase A: pre-release guard checks

| Check | Evidence required | Status |
| --- | --- | --- |
| Correct branch confirmed | branch receipt | OPEN |
| Local HEAD equals remote branch | local / remote HEAD receipt | OPEN |
| Working tree clean | git status receipt | OPEN |
| No unexpected source/code changes | git status or diff receipt | OPEN |
| Required evidence directory exists | directory receipt | OPEN |
| Required evidence files are present | file inventory receipt | OPEN |
| Release notes file exists | file receipt | OPEN |
| Release notes file is not empty | line-count receipt | OPEN |
| Target tag does not conflict | tag receipt | OPEN |

## Phase B: evidence bundle checks

| Check | Evidence required | Status |
| --- | --- | --- |
| Deployment receipt present | file receipt | OPEN |
| Source verification receipt present | file receipt | OPEN |
| Bytecode or verification receipt present | file receipt | OPEN |
| Read-only smoke receipt present | file receipt | OPEN |
| Remote tag audit receipt present | file receipt | OPEN |
| Contract address inventory present | file receipt | OPEN |
| GitHub release notes present | file receipt | OPEN |
| Evidence bundle list captured | manifest receipt | OPEN |

## Phase C: release creation checks

| Check | Evidence required | Status |
| --- | --- | --- |
| gh release command validates inputs before publish | script review receipt | OPEN |
| Release creation stops on missing notes | test receipt | OPEN |
| Release creation stops on missing assets | test receipt | OPEN |
| Asset upload failure stops script | test receipt | OPEN |
| Remote tag is verified after publish | tag receipt | OPEN |
| GitHub release view is captured after publish | release view receipt | OPEN |
| Release URL is captured | receipt file | OPEN |
| All receipts written to expected directory | receipt file | OPEN |

## Phase D: failure and rollback checks

| Check | Evidence required | Status |
| --- | --- | --- |
| Failed release attempt writes failure receipt | test receipt | OPEN |
| Failed release attempt does not claim success | test receipt | OPEN |
| Failed release attempt preserves local evidence | receipt inventory | OPEN |
| Failed release attempt records branch and commit | receipt file | OPEN |
| Failed release attempt records tag state | receipt file | OPEN |
| Failed release attempt records release state | gh release receipt | OPEN |
| Rollback checklist is referenced | script or checklist review | OPEN |
| Manual repair path is documented only as emergency fallback | review receipt | OPEN |

## Phase E: post-release confirmation checks

| Check | Evidence required | Status |
| --- | --- | --- |
| GitHub release exists remotely | gh release view receipt | OPEN |
| Release is not draft unless explicitly expected | gh release view receipt | OPEN |
| Release is not prerelease unless explicitly expected | gh release view receipt | OPEN |
| Release assets count matches expected bundle | gh release view receipt | OPEN |
| Remote tag exists | git ls-remote receipt | OPEN |
| Release notes match intended file | review receipt | OPEN |
| Receipt names are deterministic | receipt review | OPEN |
| Working tree remains clean after release | git status receipt | OPEN |

## No-go conditions

Do not create a future mainnet candidate release if any of the following are true:

- Required evidence files are missing.
- Release notes are empty.
- Release asset upload is not failure-checked.
- Remote tag existence is not verified.
- GitHub release view is not captured after publish.
- Receipts are not written deterministically.
- Manual repair is required for ordinary successful release creation.
- Dirty working tree is allowed to proceed.
- Wrong branch is allowed to proceed.
- A failed release attempt can still print a success result.
- A failed release attempt does not preserve evidence.
- A rollback path is not documented.

## Dedicated patch rule

The later release-script hardening patch may edit script files only in a dedicated code/script review step.

Before that patch is committed, the patch must prove:

- Exact files changed.
- No Solidity protocol behavior changed.
- No private secrets are included.
- Failure conditions are tested.
- Receipt output is deterministic.
- Successful path is tested.
- Failed path is tested.

## Current status

- Release script hardening checklist draft created.
- Read-only inventory receipt created.
- No release script has been modified by this checklist.
- No source code has been changed by this checklist.
- No mainnet deployment has been authorized.
- Next task: review this checklist and inventory, then commit this docs-only hardening checklist.
