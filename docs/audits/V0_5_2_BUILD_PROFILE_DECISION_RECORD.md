# NST Core v0.5.2 Build Profile Decision Record

Status: DRAFT DECISION RECORD
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: bd67d3ed3fee8385874ef473807e86613d3a6779
Created UTC: 2026-09-27T14:04:40Z

Source build-profile triage: docs/audits/V0_5_2_FOUNDRY_BUILD_PROFILE_TRIAGE.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source release hardening checklist: docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md
Via-IR full test report: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-via-ir-full-test-probe-20260927T135016Z.txt
Via-IR full test log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-test-via-ir-20260927T135016Z.log
Standard build log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-build-via-ir-20260927T132934Z.log
Via-IR build log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-build-via-ir-20260927T132934Z.log
Stack-too-deep triage receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-stack-too-deep-triage-20260927T132934Z.txt

## Purpose

This document records the v0.5.2 build-profile decision point after the Foundry build-profile triage and the read-only via-IR full test probe.

This document is not a deployment authorization.

No mainnet deployment is authorized by this document.

This document does not change source code, deployment scripts, release scripts, Foundry configuration, or protocol behavior.

This document exists to preserve the build-profile evidence and to define the next safe path before any future mainnet candidate package is prepared.

## Executive finding

The normal current Foundry build profile fails with a stack-too-deep compiler error in the NSTSBT constructor role-grant initialization area.

A read-only via-IR build probe passes.

A read-only via-IR full test probe also passes.

Observed via-IR full test summary:

```text
Ran 11 test suites in 116.20ms (121.13ms CPU time): 244 tests passed, 0 failed, 0 skipped (244 total tests)
```

Therefore the current technical finding is:

- The standard build-profile failure is a build-profile hardening issue, not immediate proof of a functional protocol defect by itself.
- The source compiles and the full test suite passes under the via-IR compiler pipeline.
- The build-profile decision must be documented before any future candidate deployment package.
- The final acceptance gate remains OPEN.
- No mainnet deployment is authorized.

## Decision summary

| Decision item | Current decision | Status |
| --- | --- | --- |
| Standard build profile | Fails with stack-too-deep in current profile | OPEN |
| Via-IR build profile | Builds successfully in read-only probe | PASS |
| Via-IR full test suite | Full test suite passes | PASS |
| Production build profile | Proposed via-IR candidate path, pending final review | OPEN |
| Source refactor requirement | Not required immediately during documentation phase | OPEN |
| Foundry config change | Not performed in this step | OPEN |
| Deployment authorization | Not authorized | BLOCKED |

## Build-profile options

| Option | Description | Required review | Status |
| --- | --- | --- | --- |
| Via-IR build-profile path | Use via-IR as the approved candidate build profile | Dedicated build-profile review, forge build, forge test, receipt capture | OPEN |
| Source-refactor path | Refactor constructor or initialization structure to pass normal build profile | Dedicated source-code review, forge build, forge test, receipt capture | OPEN |
| Defer path | Keep issue documented and block candidate deployment until resolved | Final acceptance gate remains OPEN | OPEN |

## Current recommendation

Use this decision record as the controlling build-profile evidence for now.

Do not edit protocol source during this documentation phase.

Do not silently mix lint cleanup, naming cleanup, constructor refactoring, or Foundry config changes into documentation commits.

The next suitable engineering path is one of the following:

1. Create a dedicated build-profile hardening patch that formally adopts via-IR for the candidate build path.
2. Create a dedicated source-refactor branch to make the normal Foundry profile pass without via-IR.
3. Keep the final acceptance gate blocked until a build-profile decision is finalized.

## Evidence receipts

| Evidence item | Receipt | Status |
| --- | --- | --- |
| Stack-too-deep triage receipt | /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-stack-too-deep-triage-20260927T132934Z.txt | CREATED |
| Standard build log | /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-build-via-ir-20260927T132934Z.log | CREATED |
| Via-IR build log | /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-build-via-ir-20260927T132934Z.log | CREATED |
| Via-IR full test report | /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-via-ir-full-test-probe-20260927T135016Z.txt | CREATED |
| Via-IR full test log | /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-test-via-ir-20260927T135016Z.log | CREATED |
| Current decision record | docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md | DRAFT |

## Observed build behavior

| Check | Observed result | Status |
| --- | --- | --- |
| forge fmt --check | Completed successfully in warning inventory run | PASS |
| forge build using current default profile | Fails with stack-too-deep at NSTSBT constructor grant-role area | OPEN |
| forge build --via-ir | Completed successfully in read-only probe | PASS |
| forge test --via-ir | Completed successfully in read-only full test probe | PASS |
| Working tree after probes | Clean | PASS |
| Source files changed by probes | None | PASS |

## Standard build failure summary

The standard build profile reports a compiler stack-too-deep failure around:

- File: src/NSTSBT.sol
- Area: constructor grant-role initialization
- Visible failing line reference from receipt: src/NSTSBT.sol:304:40
- Failing operation shown in receipt: grant DEFAULT_ADMIN_ROLE to defaultAdmin

This finding should be treated as a compiler stack allocation limitation under the current non-via-IR build profile.

It should not be treated as a reason to make an immediate source-code patch during the documentation phase.

## Via-IR test result

The read-only full test suite with via-IR completed successfully.

The via-IR full test result confirms that:

- Current source compiles under the via-IR compiler pipeline.
- Current tests pass under the via-IR compiler pipeline.
- The stack-too-deep issue can be resolved through build-profile selection, subject to final review.
- The via-IR path still requires formal approval before any future candidate deployment package.

## Required decision before candidate deployment

Before any future mainnet candidate deployment is prepared, one of the following must be explicitly selected, reviewed, tested, and documented:

| Decision path | Required proof | Status |
| --- | --- | --- |
| Approve via-IR production build profile | Dedicated build-profile review plus forge build --via-ir receipt plus forge test --via-ir receipt | OPEN |
| Refactor source to pass normal build profile | Dedicated source-code review plus normal forge build receipt plus forge test receipt | OPEN |
| Defer deployment | Final acceptance gate remains OPEN and deployment remains blocked | OPEN |

## Required future hardening if via-IR path is selected

If via-IR is selected as the candidate build profile, the project must still complete a dedicated build-profile hardening step.

That future hardening step must prove:

- Exact files changed.
- No Solidity protocol behavior changed unintentionally.
- No private secrets are included.
- Foundry build commands are deterministic.
- Foundry test commands are deterministic.
- Release scripts use the approved build profile.
- Deployment scripts use the approved build profile.
- Verification commands are compatible with the approved build profile.
- Receipts are captured before release creation.
- Failure conditions stop the release path.

## Required future hardening if source-refactor path is selected

If source refactor is selected instead, the project must use a dedicated source-code review phase.

That future refactor step must prove:

- Constructor or initialization structure is simplified safely.
- Role assignments remain identical.
- Genesis mint behavior remains identical.
- Treasury routing behavior remains identical.
- Pause, mint, metadata, treasury, and swap roles remain identical.
- Normal forge build passes.
- Full forge test passes.
- No unrelated lint cleanup is mixed into the refactor.
- No deployment authorization is implied by the refactor.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- The approved production build profile is unresolved.
- The standard build failure is not either fixed or formally superseded by an approved via-IR production build profile.
- Forge test receipts are missing.
- The final deployment checklist remains OPEN.
- The final acceptance gate checklist remains OPEN.
- Production owner addresses remain TBD.
- Any source-code patch is made without dedicated review.
- Any Foundry config patch is made without dedicated review.
- Any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in repository files.
- Any final human approval receipt is missing.

## Acceptance rule for this decision record

This decision record is complete only when:

- The stack-too-deep failure is documented.
- The via-IR build pass is documented.
- The via-IR full test pass is documented.
- No source files are changed by this record.
- The decision record is committed and pushed to the v0.5.2 phase branch.
- The final acceptance gate remains blocked until the build-profile decision is formally completed.

## Current status

- Build-profile decision record created.
- Standard Foundry build stack-too-deep issue documented.
- Via-IR build pass documented.
- Via-IR full test pass documented.
- No source code has been changed.
- No mainnet deployment has been authorized.
- Next task: commit this docs-only decision record, then decide whether to prepare a dedicated via-IR build-profile hardening patch or a source-refactor path.
