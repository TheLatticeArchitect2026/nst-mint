# NST Core v0.5.2 Foundry Build Profile Triage

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: ae191f67ce41609f2ffd6e8e0775438854b4aed7
Created UTC: 2026-09-27T13:41:14Z

Source triage receipt: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-stack-too-deep-triage-20260927T132934Z.txt
Standard forge build log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-build-20260927T131113Z.log
Via-IR forge build log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-build-via-ir-20260927T132934Z.log
Forge fmt check log: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-forge-fmt-check-20260927T131113Z.log

## Purpose

This document records the v0.5.2 Foundry build-profile triage after the mainnet-readiness documentation gates were created.

This document is not a deployment authorization.

No mainnet deployment is authorized by this document.

## Executive finding

The normal Foundry build profile currently fails with a stack-too-deep compiler error in the NSTSBT constructor area.

A read-only via-IR build probe passes.

Therefore the current finding is:

- Treat the original normal-profile build failure as a build-profile hardening item.
- Do not apply an immediate source-code patch only to silence the stack-too-deep error.
- Do not proceed toward mainnet deployment until the final build profile, deployment config, verification commands, and acceptance gates are explicitly completed and reviewed.

## Observed build behavior

| Check | Observed result | Status |
| --- | --- | --- |
| forge fmt --check | Completed successfully in the warning inventory run | PASS |
| forge build using current default profile | Fails with stack-too-deep at src/NSTSBT.sol constructor grant-role area | OPEN |
| forge build --via-ir | Completed successfully in the read-only probe | PASS |
| Working tree after inventory | Clean | PASS |
| Source files changed by inventory | None | PASS |

## Standard build failure summary

The standard build profile reports a compiler stack-too-deep failure around:

- File: src/NSTSBT.sol
- Area: constructor grant-role initialization
- Visible failing line reference from receipt: src/NSTSBT.sol:304:40
- Failing operation shown in receipt: grant DEFAULT_ADMIN_ROLE to defaultAdmin

This is a compiler stack allocation limitation under the current non-via-IR build profile, not proof of a functional protocol defect by itself.

## Via-IR build result

The read-only via-IR probe completed successfully.

The via-IR result confirms that the current source can compile under a different compiler pipeline.

The via-IR result does not authorize deployment.

The via-IR result creates a build-profile decision item that must be resolved before any future mainnet candidate package.

## Required decision before candidate deployment

Before any future mainnet candidate deployment is prepared, one of the following must be explicitly selected, reviewed, tested, and documented:

| Option | Description | Required review | Status |
| --- | --- | --- | --- |
| Build-profile path | Use via-IR as the approved production build profile | Dedicated build-profile review, forge build, forge test, receipt capture | OPEN |
| Source-refactor path | Refactor constructor or initialization structure to pass normal build profile | Dedicated source-code review, forge build, forge test, receipt capture | OPEN |
| Defer path | Keep issue documented and block candidate deployment until resolved | Final acceptance gate remains OPEN | OPEN |

## Current recommendation

Use this document as the controlling triage record for now.

Do not edit protocol source during this documentation phase.

Next suitable work is a dedicated build-profile hardening decision or a dedicated source-refactor branch, not an incidental patch.

## Warning and lint inventory notes

The warning inventory surfaced non-blocking lint and cleanup items, including:

- Naming-style notes for immutable variables.
- Naming-style notes for test helper or internal helper function names.
- ERC20 unchecked transfer warnings in tests.
- Unsafe typecast warning in ReferralController time calculation area.
- Stack-too-deep behavior under the current standard build profile.

These items should be reviewed in a dedicated cleanup phase.

They should not be silently mixed into a mainnet-readiness documentation commit.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- The approved production build profile is unresolved.
- The default forge build failure is not either fixed or formally superseded by an approved via-IR production build profile.
- Forge test receipts are missing.
- The final deployment checklist remains OPEN.
- The final acceptance gate checklist remains OPEN.
- Production owner addresses remain TBD.
- Any source-code patch is made without dedicated review.
- Any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears in repository files.
- Any final human approval receipt is missing.

## Acceptance rule for this triage

This triage is complete only when:

- The stack-too-deep failure is documented.
- The via-IR pass is documented.
- No source files are changed by the triage.
- The triage document is committed and pushed to the v0.5.2 phase branch.
- The final acceptance gate remains blocked until the build-profile decision is resolved.

## Current status

- Build-profile triage document created.
- Normal forge build stack-too-deep issue documented.
- Via-IR build pass documented.
- No source code has been changed.
- No mainnet deployment has been authorized.
- Next task: commit this docs-only triage record, then decide whether to create a dedicated build-profile hardening path or a source-refactor path.
