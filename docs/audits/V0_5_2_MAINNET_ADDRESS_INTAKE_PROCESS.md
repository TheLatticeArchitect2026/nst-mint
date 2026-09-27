# NST Core v0.5.2 Mainnet Address Intake Process

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: a6ea1f801f845c03acc6aaf4d1f5a0d48ea3ec12
Created UTC: 2026-09-27T10:34:01Z
Source matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md

## Purpose

This document defines the formal intake process for collecting, reviewing, validating, approving, and freezing mainnet production addresses before any NST Core mainnet candidate deployment is prepared.

This process is not a deployment authorization.

No private keys, seed phrases, API keys, deployer keys, wallet secrets, or recovery phrases belong in this repository or in any address intake file.

## Mainnet gate

Mainnet deployment remains blocked until every owner category, treasury destination, operator role, emergency authority, mint authority, metadata authority, vetting authority, credential authority, and claim authority has a final approved production address or governance object.

The final deployment script configuration must match the approved address intake package.

The final post-deploy read-only audit must prove the deployed role state matches the approved address intake package.

## Intake source of truth

| Item | Required source | Status |
| --- | --- | --- |
| Governance multisig address | Final governance approval record | OPEN |
| Emergency multisig address | Final emergency authority approval record | OPEN |
| Treasury multisig address | Final treasury approval record | OPEN |
| Operator multisig address | Final operator approval record | OPEN |
| Mint authority address | Final mint authority approval record | OPEN |
| Metadata operator address | Final metadata authority approval record | OPEN |
| Vetting operator address | Final ShieldRegistry authority approval record | OPEN |
| Credential operator address | Final VaultRegistry authority approval record | OPEN |
| Claim operator address | Final YieldPool claim authority approval record | OPEN |
| Founder receipt wallet or governance object | Final founder custody approval record | OPEN |
| Rescue destination | Final emergency and treasury approval record | OPEN |
| Deployment funding wallet | Final deployment funding record | OPEN |
| Bootstrap operator wallet | Temporary deployment-only record | OPEN |

## Address intake packet

Each production address entry must include:

- Owner category.
- Contract or value route affected.
- Role or treasury route affected.
- Final address or governance object.
- Custody type.
- Signer threshold, where applicable.
- Controller or responsible party.
- Approval evidence reference.
- Intended deployment config field.
- Post-deploy verification command or read-only check.
- Status.

## Address validation workflow

| Step | Requirement | Status |
| --- | --- | --- |
| 1 | Receive final address from approved source of truth | OPEN |
| 2 | Confirm address checksum formatting | OPEN |
| 3 | Confirm address is not a local mock address | OPEN |
| 4 | Confirm address is not a Base Sepolia test-only address unless explicitly approved for testing only | OPEN |
| 5 | Confirm address is not a private key, seed phrase, or secret | OPEN |
| 6 | Confirm owner category matches intended permission scope | OPEN |
| 7 | Confirm treasury roles are separated from ordinary operators where practical | OPEN |
| 8 | Confirm emergency roles are separated from routine operators where practical | OPEN |
| 9 | Confirm metadata operators cannot move funds | OPEN |
| 10 | Confirm vetting and credential operators cannot move treasury funds | OPEN |
| 11 | Confirm bootstrap deployer powers are temporary or removed after handoff | OPEN |
| 12 | Confirm final address template is updated | OPEN |
| 13 | Confirm operator handoff checklist is updated | OPEN |
| 14 | Confirm deployment config is updated from the final approved template | OPEN |
| 15 | Confirm read-only audit command exists before deployment | OPEN |

## Required file updates after intake

| File | Required update | Status |
| --- | --- | --- |
| docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md | Replace TBD owner address entries with approved addresses or governance objects | OPEN |
| docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md | Mark completed handoff checks with evidence references | OPEN |
| docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md | Update status from OPEN only after final owner categories are resolved | OPEN |
| deployment config file | Must match final approved address template | OPEN |
| post-deploy audit receipt | Must prove deployed roles match final approved address template | OPEN |

## Rejection rules

Reject an address intake entry if:

- It includes a private key or secret.
- It lacks approval evidence.
- It is a placeholder address.
- It is a local mock address.
- It is a testnet address presented as a mainnet production address without explicit limitation.
- It assigns treasury power to a routine hot-wallet operator without approval.
- It allows bootstrap deployer retained power after handoff without approval.
- It conflicts with the role / treasury / operator matrix.

## Acceptance rule

This intake process remains OPEN until all address rows are complete, reviewed, and committed, and until the final deployment script configuration is proven to match the approved address package.

## Current status

- Intake process draft created.
- Production addresses remain TBD.
- No mainnet deployment authorized.
- No source code has been changed.
- Next task: review this intake process, then commit it as a docs-only readiness artifact.
