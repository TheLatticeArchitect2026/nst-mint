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
