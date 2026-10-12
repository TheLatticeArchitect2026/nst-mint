# NST Core v0.5.2 Operator Handoff Checklist

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 5f80ee6dfd18120ce9896d81b74bf0f88e354666
Created UTC: 2026-09-27T10:15:23Z
Source matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md

## Purpose

This checklist defines the operational handoff gate for NST Core mainnet readiness.

It ensures that deployer, bootstrap, treasury, mint, emergency, metadata, vetting, credential, and claim roles are intentionally assigned, reviewed, and verified.

This checklist is not a deployment authorization.

## Handoff principles

- Least privilege applies to every role.
- Treasury roles and emergency roles must be separated where practical.
- Metadata operators must not control funds.
- Vetting and credential operators must not control treasury routes.
- Bootstrap deployer and temporary operator powers must be removed or explicitly justified.
- No mainnet deployment proceeds until all critical checks are complete.

## Pre-handoff checklist

| Check | Evidence required | Status |
| --- | --- | --- |
| Final owner address template completed | Completed address template committed | OPEN |
| Governance multisig selected | Address or governance object documented | OPEN |
| Emergency multisig selected | Address or governance object documented | OPEN |
| Treasury multisig selected | Address or governance object documented | OPEN |
| Operator multisig selected | Address or controlled operator documented | OPEN |
| Mint authority selected | Address and limits documented | OPEN |
| Metadata operator selected | Address and scope documented | OPEN |
| Vetting operator selected | Address and scope documented | OPEN |
| Credential operator selected | Address and scope documented | OPEN |
| Claim operator selected | Address and scope documented | OPEN |

## Deployment config review

| Check | Evidence required | Status |
| --- | --- | --- |
| Deployment script reads final approved addresses only | Config review receipt | OPEN |
| No testnet placeholder addresses remain | Grep receipt | OPEN |
| No local mock addresses remain in mainnet config | Grep receipt | OPEN |
| No private key values are committed | Grep receipt | OPEN |
| Role assignments match address template | Manual review receipt | OPEN |
| Treasury routes match treasury owner matrix | Manual review receipt | OPEN |
| Bootstrap role removal path reviewed | Script review receipt | OPEN |

## Post-deploy read-only verification

| Check | Evidence required | Status |
| --- | --- | --- |
| Contract addresses captured | Deployment receipt | OPEN |
| DEFAULT_ADMIN_ROLE verified for each contract | Read-only role audit | OPEN |
| Pauser roles verified | Read-only role audit | OPEN |
| Treasury roles verified | Read-only role audit | OPEN |
| Mint roles verified | Read-only role audit | OPEN |
| Metadata roles verified | Read-only role audit | OPEN |
| Vetting roles verified | Read-only role audit | OPEN |
| Credential roles verified | Read-only role audit | OPEN |
| Claim roles verified | Read-only role audit | OPEN |
| Bootstrap deployer retained powers checked | Read-only role audit | OPEN |

## Emergency readiness checklist

| Check | Evidence required | Status |
| --- | --- | --- |
| Pause authority verified | Emergency drill or read-only proof | OPEN |
| Unpause authority verified | Emergency drill or read-only proof | OPEN |
| Rescue authority verified | Read-only proof | OPEN |
| Treasury emergency path documented | Emergency runbook | OPEN |
| Rollback communication path documented | Rollback checklist | OPEN |

## Mainnet acceptance gate

Mainnet deployment remains blocked until:

- Address template is complete.
- Role-owner matrix is complete.
- Treasury-owner matrix is complete.
- Operator-permission matrix is complete.
- Handoff checklist is complete.
- Rollback checklist is complete.
- Release documentation is updated.
- Final human review is complete.

## Current status

- Checklist draft created.
- No mainnet operator handoff has been executed.
- No source code has been changed.
- Next task: review address template and handoff checklist, then commit docs.

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
