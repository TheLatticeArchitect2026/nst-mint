# NST Core v0.5.2 Via-IR Build Profile Adoption Record

Status: DRAFT ADOPTION RECORD
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: d0cf09d6c0399a83d870ab1b4b904b174b61bebd
Created UTC: 2026-09-27T17:24:01Z

Source build-profile decision record: docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md
Source Via-IR hardening checklist: docs/checklists/V0_5_2_VIA_IR_BUILD_PROFILE_HARDENING_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source readiness runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md

Forge fmt check log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-via-ir-adoption-forge-fmt-check-20260927T172349Z.log
Forge build log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-via-ir-adoption-forge-build-20260927T172349Z.log
Forge test log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-via-ir-adoption-forge-test-20260927T172349Z.log

## Purpose

This document records the adoption of the Via-IR Foundry build profile for NST Core v0.5.2 mainnet readiness.

This document is not a deployment authorization.

No mainnet deployment is authorized by this document.

## Adoption finding

The project previously documented that the normal Foundry build profile produced a stack-too-deep compiler failure in the NSTSBT constructor role-grant initialization area.

A read-only Via-IR build probe passed.

A read-only Via-IR full test probe passed.

The project then applied the build-profile patch by changing Foundry configuration only:

```toml
via_ir = true
```

No protocol source files, deployment scripts, release scripts, or test files were changed by the Via-IR config patch.

## Current validation result

| Check | Result | Status |
| --- | --- | --- |
| foundry.toml contains via_ir = true | Confirmed | PASS |
| forge fmt --check | Completed successfully | PASS |
| forge build | Completed successfully with committed Via-IR config | PASS |
| forge test | Completed successfully with committed Via-IR config | PASS |
| Working tree before this record | Clean | PASS |
| Source / contract / script / test files changed by this record | None | PASS |

## Forge test summary

```text
Suite result: ok. 5 passed; 0 failed; 0 skipped; finished in 4.26ms (752.08µs CPU time)
Suite result: ok. 26 passed; 0 failed; 0 skipped; finished in 5.42ms (3.43ms CPU time)
Suite result: ok. 36 passed; 0 failed; 0 skipped; finished in 5.70ms (4.57ms CPU time)
Suite result: ok. 22 passed; 0 failed; 0 skipped; finished in 6.48ms (3.76ms CPU time)
Suite result: ok. 6 passed; 0 failed; 0 skipped; finished in 6.60ms (3.68ms CPU time)
Suite result: ok. 26 passed; 0 failed; 0 skipped; finished in 2.22ms (2.43ms CPU time)
Suite result: ok. 6 passed; 0 failed; 0 skipped; finished in 1.95ms (592.17µs CPU time)
Suite result: ok. 47 passed; 0 failed; 0 skipped; finished in 2.16ms (3.58ms CPU time)
Suite result: ok. 26 passed; 0 failed; 0 skipped; finished in 1.74ms (2.27ms CPU time)
Ran 11 test suites in 48.01ms (44.01ms CPU time): 244 tests passed, 0 failed, 0 skipped (244 total tests)
```

## Build-profile decision status

| Decision item | Current state | Status |
| --- | --- | --- |
| Via-IR config patch | Applied to foundry.toml | COMPLETE |
| Via-IR config patch commit | Committed and pushed before this adoption record | COMPLETE |
| Build under committed Via-IR profile | Passing | PASS |
| Test suite under committed Via-IR profile | Passing | PASS |
| Source refactor required immediately | No | NOT REQUIRED AT THIS STEP |
| Mainnet deployment authorization | Not authorized | BLOCKED |
| Final acceptance gate | Still open | OPEN |
| Production owner addresses | Still TBD | OPEN |

## No-go conditions remain

Do not proceed toward mainnet deployment if any of the following remain true:

- Production owner addresses remain TBD.
- Final acceptance gate remains OPEN.
- Deployment checklist remains OPEN.
- Rollback checklist remains OPEN.
- Release evidence remains incomplete.
- Human approval receipt is missing.
- Deployment config has not been matched against final approved production addresses.
- Read-only post-deploy verification commands have not been finalized.
- Any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in repository files.

## Current status

- Via-IR build profile has been adopted in foundry.toml.
- Build passes under committed Via-IR profile.
- Test suite passes under committed Via-IR profile.
- No source code has been changed by this record.
- No mainnet deployment has been authorized.
- Final acceptance remains blocked.
- Next task: update the final acceptance gate and deployment readiness documentation to reference this adoption record.
