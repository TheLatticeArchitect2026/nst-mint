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

## v0.5.2 Base Sepolia method-control reference

Method classification reference: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_METHOD_CLASSIFICATION.md

Method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist reference: docs/audits/V0_5_2_BASE_SEPOLIA_READ_METHOD_ALLOWLIST.md

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist reference: docs/audits/V0_5_2_BASE_SEPOLIA_WRITE_METHOD_BLOCKLIST.md

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

ABI checksum receipts commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

Address checksum receipts commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Reference captured UTC: 2026-10-12T13:38:24Z

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Method-control status:

- ABI method classification complete with safety override.
- Read method allowlist complete.
- Write method blocklist complete.
- Approval signature and approval selector are excluded from the read allowlist.
- Approval signature and approval selector are retained in the write blocklist.
- Write-like methods are excluded from generated read-only config.
- Write methods are excluded from public demo execution.
- Write methods are excluded from transaction rail execution.
- Write methods are excluded from governance writes.
- Write methods are excluded from treasury routes.
- Write methods are excluded from mainnet.

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

Generated Base Sepolia read-only config remains blocked until:

- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied;
- generated config candidate is produced and reviewed.

Protocol client implementation remains blocked until:

- generated Base Sepolia read-only config is approved;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

Public Base Sepolia demo remains blocked until:

- generated read-only config is approved;
- protocol client gate is complete;
- public warning language is implemented;
- network badge is visible;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

Mainnet remains blocked.

No Base Sepolia address, ABI, read method, write method, read-only config, or public demo may be promoted to mainnet.

No-go conditions preserved:

- Do not use method classification alone as generated config.
- Do not use read allowlist alone as generated config.
- Do not use write blocklist alone as generated config.
- Do not include write methods in generated read-only config.
- Do not execute write methods.
- Do not allow write methods in public demo.
- Do not allow write methods in transaction rail.
- Do not allow write methods in governance routes.
- Do not allow write methods in treasury routes.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
