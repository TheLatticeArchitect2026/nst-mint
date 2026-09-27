# NST Core v0.5.2 Via-IR Build Profile Hardening Checklist

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 27e25e3f25520ea1c71df1e0f52d09988928e6be
Created UTC: 2026-09-27T16:12:59Z

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source release hardening checklist: docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md
Source build-profile triage: docs/audits/V0_5_2_FOUNDRY_BUILD_PROFILE_TRIAGE.md
Source build-profile decision record: docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md

## Purpose

This checklist defines the future hardening requirements if NST Core v0.5.2 selects via-IR as the approved candidate build profile.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

This document does not edit source code, deployment scripts, release scripts, Foundry configuration, or protocol behavior.

This checklist exists to prevent the via-IR decision from being applied casually or silently.

## Current technical finding

The normal current Foundry build profile reports a stack-too-deep compiler failure in the NSTSBT constructor role-grant initialization area.

The read-only via-IR build probe passes.

The read-only via-IR full test probe passes.

Observed via-IR full test summary:

- 11 test suites ran.
- 244 tests passed.
- 0 tests failed.
- 0 tests skipped.

The build-profile decision record preserves this evidence.

The final acceptance gate remains OPEN.

## Current recommendation

Use the build-profile decision record as the controlling evidence record for now.

Do not edit protocol source during this documentation phase.

Do not silently mix lint cleanup, naming cleanup, constructor refactoring, Foundry config changes, or release-script changes into this docs-only phase.

The next engineering path must be one of these:

1. Dedicated via-IR build-profile hardening patch.
2. Dedicated source-refactor branch to make the normal Foundry profile pass without via-IR.
3. Defer deployment readiness until the build-profile decision is formally completed.

## Via-IR hardening objective

If via-IR is selected, the project must make the build profile deterministic across:

- local build commands;
- local test commands;
- deployment dry-run commands;
- deployment scripts;
- verification commands;
- release scripts;
- evidence receipts;
- failure receipts;
- final acceptance checks.

## Candidate change boundary

A future via-IR hardening patch may touch only the files explicitly approved in that patch.

Expected possible future change areas:

| Area | Possible file or command surface | Status |
| --- | --- | --- |
| Foundry build profile | foundry.toml or explicit CLI flags | OPEN |
| Build command | forge build --via-ir or approved equivalent | OPEN |
| Test command | forge test --via-ir or approved equivalent | OPEN |
| Deployment dry-run | deployment script using approved build profile | OPEN |
| Verification command | explorer/source verification using approved build profile | OPEN |
| Release automation | release script checks approved build profile evidence | OPEN |
| Receipts | deterministic build and test receipts | OPEN |
| Documentation | acceptance gate updated only after review | OPEN |

Protocol source files must not be changed in a via-IR hardening patch unless a separate source-code review phase is explicitly opened.

## Phase A: decision approval gate

| Check | Evidence required | Status |
| --- | --- | --- |
| Build-profile decision record exists | docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md | COMPLETE |
| via-IR build pass documented | build-profile decision record | COMPLETE |
| via-IR full test pass documented | build-profile decision record | COMPLETE |
| Standard build failure documented | build-profile decision record | COMPLETE |
| Decision path selected by human reviewer | approval receipt | OPEN |
| Decision path committed before config change | git receipt | OPEN |
| No deployment authorization implied | review receipt | OPEN |

## Phase B: via-IR build profile patch gate

| Check | Evidence required | Status |
| --- | --- | --- |
| Dedicated patch branch or commit scope declared | branch or commit receipt | OPEN |
| Exact files changed listed before commit | git diff receipt | OPEN |
| Foundry build profile reviewed | review receipt | OPEN |
| No protocol behavior changed unintentionally | review receipt | OPEN |
| No private secrets included | grep receipt | OPEN |
| No unrelated lint cleanup included | diff review receipt | OPEN |
| No unrelated test cleanup included | diff review receipt | OPEN |
| No unrelated deployment changes included | diff review receipt | OPEN |

## Phase C: deterministic build and test gate

| Check | Evidence required | Status |
| --- | --- | --- |
| forge build with approved profile passes | build receipt | OPEN |
| forge test with approved profile passes | test receipt | OPEN |
| build command is documented | command receipt | OPEN |
| test command is documented | command receipt | OPEN |
| build receipt written deterministically | receipt file | OPEN |
| test receipt written deterministically | receipt file | OPEN |
| local working tree remains clean after probes | git status receipt | OPEN |
| failure case produces a stop receipt | failure receipt | OPEN |

## Phase D: deployment and verification compatibility gate

| Check | Evidence required | Status |
| --- | --- | --- |
| Deployment dry-run command uses approved build profile | script review receipt | OPEN |
| Deployment config is not modified silently | config review receipt | OPEN |
| Contract verification command uses approved build profile | script review receipt | OPEN |
| Role verification command remains compatible | script review receipt | OPEN |
| Treasury route verification command remains compatible | script review receipt | OPEN |
| Emergency pause verification command remains compatible | script review receipt | OPEN |
| Read-only post-deploy audit remains compatible | script review receipt | OPEN |

## Phase E: release-script compatibility gate

| Check | Evidence required | Status |
| --- | --- | --- |
| Release script checks approved build evidence | script review receipt | OPEN |
| Release script checks approved test evidence | script review receipt | OPEN |
| Release script fails if via-IR receipt is missing | failure test receipt | OPEN |
| Release script does not publish empty notes | failure test receipt | OPEN |
| Release script does not publish missing bundle | failure test receipt | OPEN |
| Release script captures GitHub release view after publish | release receipt | OPEN |
| Release script writes deterministic receipts | receipt review | OPEN |

## Phase F: final acceptance integration gate

| Check | Evidence required | Status |
| --- | --- | --- |
| Final acceptance gate references build-profile decision | checklist update receipt | OPEN |
| Deployment checklist references approved build profile | checklist update receipt | OPEN |
| Rollback checklist remains compatible | checklist review receipt | OPEN |
| Release hardening checklist references approved build profile | checklist review receipt | OPEN |
| Mainnet readiness runbook updated | runbook update receipt | OPEN |
| Final human approval captured | approval receipt | OPEN |

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- The approved production build profile is unresolved.
- The standard build failure is not either fixed or formally superseded by an approved via-IR production build profile.
- forge test receipts are missing.
- Deployment scripts do not use the approved build profile.
- Verification commands do not use the approved build profile.
- Release scripts do not check the approved build evidence.
- The final deployment checklist remains OPEN.
- The final acceptance gate checklist remains OPEN.
- Production owner addresses remain TBD.
- Any source-code patch is made without dedicated review.
- Any Foundry config patch is made without dedicated review.
- Any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in repository files.
- Any final human approval receipt is missing.

## Acceptance rule for this checklist

This checklist is complete only when:

- The via-IR decision path is formally selected or rejected.
- If selected, the approved build profile is applied in a dedicated patch.
- If selected, forge build passes under the approved profile.
- If selected, forge test passes under the approved profile.
- Deployment, verification, and release scripts are confirmed compatible with the approved profile.
- The final acceptance gate is updated.
- The working tree is clean.
- The hardening patch is committed and pushed.
- No mainnet deployment has been authorized by this checklist alone.

## Current status

- Via-IR build-profile hardening checklist created.
- This is a docs-only readiness artifact.
- No source code has been changed.
- No Foundry config has been changed.
- No deployment script has been changed.
- No release script has been changed.
- No mainnet deployment has been authorized.
- Next task: review this checklist, then commit it as a docs-only readiness artifact.
