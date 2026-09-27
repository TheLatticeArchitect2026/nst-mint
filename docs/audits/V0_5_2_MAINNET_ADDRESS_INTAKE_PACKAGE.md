# NST Core v0.5.2 Mainnet Address Intake Package

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 1e5af90fa6c079453e9bdcccb9f9fb76ea7644c6
Created UTC: 2026-09-27T18:42:07Z

Source candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md
Source intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source role treasury operator matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md

## Purpose

This package is the formal intake container for future NST Core v0.5.2 production mainnet addresses.

This document is not a deployment authorization.

No mainnet deployment is authorized by this package.

This package must not contain private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, or signing material.

Only public production addresses, governance objects, checksums, approval references, and review receipts belong in this package.

## Current blocker

Production owner addresses remain TBD.

Mainnet deployment remains blocked.

This package is complete only when every required address category is populated from an approved source of truth, checksum reviewed, matched against the role and treasury matrix, approved, and committed.

## Address intake rule

Every address row must include:

- Owner category.
- Role or treasury route affected.
- Final public address or governance object.
- Custody type.
- Signer threshold, where applicable.
- Controller or responsible party.
- Approval evidence reference.
- Intended deployment config field.
- Checksum confirmation.
- Local/mock/testnet exclusion confirmation.
- Post-deploy read-only verification command.
- Status.

Any row that remains TBD keeps the full mainnet package blocked.

## Rejection rule

Reject an address entry if:

- It includes a private key, secret, seed phrase, API key, deployer key, wallet secret, or recovery phrase.
- It lacks approval evidence.
- It is a placeholder address.
- It is a local mock address.
- It is a Base Sepolia or test-only address presented as production without explicit written limitation.
- It assigns treasury authority to a routine hot-wallet operator without approval.
- It lets a bootstrap deployer retain production powers after handoff without approval.
- It conflicts with the role, treasury, or operator matrix.

## Required production address categories

| Category | Required source | Final value | Status |
| --- | --- | --- | --- |
| Governance multisig or governance object | Final governance approval record | TBD | OPEN |
| Emergency multisig | Final emergency authority approval record | TBD | OPEN |
| Treasury multisig | Final treasury approval record | TBD | OPEN |
| Operator multisig | Final operator approval record | TBD | OPEN |
| Mint authority | Final mint authority approval record | TBD | OPEN |
| Metadata operator | Final metadata authority approval record | TBD | OPEN |
| Vetting operator | Final ShieldRegistry authority approval record | TBD | OPEN |
| Credential operator | Final VaultRegistry authority approval record | TBD | OPEN |
| Claim operator | Final YieldPool claim approval record | TBD | OPEN |
| Founder receipt wallet or governance object | Final founder custody approval record | TBD | OPEN |
| Rescue destination | Final emergency and treasury approval record | TBD | OPEN |
| Deployment funding wallet | Final deployment funding approval record | TBD | OPEN |
| Bootstrap operator wallet | Temporary deployment-only approval record | TBD | OPEN |

## Contract role address intake

| Contract or module | Address or owner category required | Intended config field or role | Final value | Status |
| --- | --- | --- | --- | --- |
| CFTv2 | Governance / admin authority | DEFAULT_ADMIN_ROLE owner | TBD | OPEN |
| CFTv2 | Pauser authority | PAUSER_ROLE owner | TBD | OPEN |
| CFTv2 | Mint authority | MINTER_ROLE or mint authority owner | TBD | OPEN |
| NSTSBT | Governance / admin authority | DEFAULT_ADMIN_ROLE owner | TBD | OPEN |
| NSTSBT | Pauser authority | PAUSER_ROLE owner | TBD | OPEN |
| NSTSBT | Mint manager | MINT_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Metadata manager | METADATA_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Treasury manager | TREASURY_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Swap operator | SWAP_OPERATOR_ROLE owner | TBD | OPEN |
| TreasuryRouter | Treasury route manager | Route authority | TBD | OPEN |
| TreasuryRouter | Treasury operator | Treasury route operations | TBD | OPEN |
| TreasuryRouter | Asset manager | Asset controls | TBD | OPEN |
| ShieldRegistry | Vetting authority | Vetting / ban / exemption authority | TBD | OPEN |
| VaultRegistry | Credential authority | Credential issuance authority | TBD | OPEN |
| YieldPool | Claim authority | Claim and yield operations | TBD | OPEN |
| RewardEscrow | Grant authority | Grant creation authority | TBD | OPEN |

## Treasury route intake

| Treasury route or destination | Required owner category | Final value | Status |
| --- | --- | --- | --- |
| Founder receipt wallet or governance object | Founder custody approval | TBD | OPEN |
| Yield pool receiver | Treasury approval | TBD | OPEN |
| CFT treasury destination | Treasury approval | TBD | OPEN |
| Fee or BPS recipient controls | Governance and treasury approval | TBD | OPEN |
| Rescue destination | Emergency and treasury approval | TBD | OPEN |
| TreasuryRouter route destinations | Treasury route approval | TBD | OPEN |

## Deployment config mapping

| Config field | Required source | Final value | Status |
| --- | --- | --- | --- |
| defaultAdmin | Governance approval record | TBD | OPEN |
| pauser | Emergency or pauser approval record | TBD | OPEN |
| mintManager | Mint authority approval record | TBD | OPEN |
| metadataManager | Metadata authority approval record | TBD | OPEN |
| treasuryManager | Treasury approval record | TBD | OPEN |
| swapOperator | Swap operator approval record | TBD | OPEN |
| shieldRegistry | ShieldRegistry deployment or approved dependency record | TBD | OPEN |
| cft | CFT deployment or approved dependency record | TBD | OPEN |
| router | Router approval record | TBD | OPEN |
| yieldPool | YieldPool approval record | TBD | OPEN |
| founderPayoutWallet | Founder custody approval record | TBD | OPEN |
| genesisRecipient | Founder or genesis approval record | TBD | OPEN |
| rescueDestination | Emergency and treasury approval record | TBD | OPEN |
| deploymentFundingWallet | Deployment funding approval record | TBD | OPEN |

## Validation workflow

| Step | Requirement | Status |
| --- | --- | --- |
| 1 | Receive final public address from approved source of truth | OPEN |
| 2 | Confirm address checksum formatting | OPEN |
| 3 | Confirm address is not a local mock address | OPEN |
| 4 | Confirm address is not a Base Sepolia test-only address unless explicitly limited | OPEN |
| 5 | Confirm no private key, seed phrase, API key, wallet secret, or recovery phrase is included | OPEN |
| 6 | Confirm owner category matches intended permission scope | OPEN |
| 7 | Confirm treasury authorities are separated from routine operators where practical | OPEN |
| 8 | Confirm emergency authorities are separated from routine operators where practical | OPEN |
| 9 | Confirm metadata operators cannot move funds | OPEN |
| 10 | Confirm vetting and credential operators cannot move treasury funds | OPEN |
| 11 | Confirm bootstrap deployer powers are temporary or removed after handoff | OPEN |
| 12 | Confirm final address template is updated | OPEN |
| 13 | Confirm operator handoff checklist is updated | OPEN |
| 14 | Confirm deployment config is updated from final approved template | OPEN |
| 15 | Confirm read-only audit command exists before deployment | OPEN |

## Evidence required before completion

- Final governance approval receipt.
- Final emergency authority approval receipt.
- Final treasury approval receipt.
- Final operator approval receipt.
- Final founder custody approval receipt.
- Final deployment funding approval receipt.
- Final checksum review receipt.
- Final address template update receipt.
- Final role treasury operator matrix update receipt.
- Final deployment config review receipt.
- Final operator handoff update receipt.
- Final human approval receipt.

## Current status

- Address intake package draft created.
- Production owner addresses remain TBD.
- No production address is approved by this draft.
- No source code has been changed.
- No Foundry config has been changed.
- No deployment script has been changed.
- No release script has been changed.
- No mainnet deployment has been authorized.
- Next task: collect final production public addresses from approved source of truth only.
