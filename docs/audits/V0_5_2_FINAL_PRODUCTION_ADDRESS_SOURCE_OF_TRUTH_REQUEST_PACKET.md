# NST Core v0.5.2 Final Production Address Source-of-Truth Request Packet

Status: DRAFT REQUEST PACKET
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-09-30T09:24:05Z
Current commit at creation: b892d1a5a2eec41033e8f765192edfb1f9ccd115

Source collection package: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md
Source production address approval receipt template: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md
Source blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md
Source address intake package: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source role treasury operator matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source readiness runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md

## Purpose

This packet is the formal request container for gathering final public production address evidence for NST Core v0.5.2.

This document is not a deployment authorization.

No mainnet deployment is authorized by this request packet.

This request packet does not create a deployment configuration.

This request packet does not approve any address, route, role, treasury destination, operator, key, deployer wallet, governance object, or release package.

This request packet exists only to collect approved public production address source-of-truth evidence before a completed final production address approval receipt can be created.

## Current blocker

Production owner addresses remain unresolved.

The final production address approval receipt is not complete.

The final deployment configuration is not complete.

Mainnet deployment remains blocked.

A request packet does not authorize deployment.

A collection package does not authorize deployment.

An approval receipt template does not authorize deployment.

Only a completed, reviewed, committed, pushed, remotely confirmed, evidence-backed final production address approval receipt can unblock the production address layer.

## Source-of-truth rule

Every final production address must come only from an approved source of truth.

Accepted evidence must be public, reviewable, non-secret, and tied to the owner category, role, route, treasury destination, operator authority, or config field being approved.

Do not use memory as address evidence.

Do not use screenshots as final address evidence.

Do not use chat text as final address evidence.

Do not use guessed addresses as address evidence.

Do not use placeholder addresses as address evidence.

Do not use mock addresses as production address evidence.

Do not use local addresses as production address evidence.

Do not use Anvil addresses as production address evidence.

Do not use Base Sepolia addresses as production address evidence unless the address is explicitly approved in writing for a limited production role and the limitation is recorded.

Do not use test-only addresses as production address evidence.

Do not use private-key-derived address claims as production address evidence unless the public address is separately approved through the required non-secret approval path.

## Secret exclusion rule

This packet must not include private keys.

This packet must not include seed phrases.

This packet must not include API keys.

This packet must not include deployer keys.

This packet must not include wallet secrets.

This packet must not include recovery phrases.

This packet must not include signing material.

This packet must not include keystore passwords.

This packet must not include private RPC credentials.

This packet must not include hardware wallet recovery information.

Only public addresses, public governance objects, checksum confirmations, approval references, non-secret custody descriptions, and review receipts may be documented.

## Submission rule

Every submitted address row must include:

- Owner category.
- Intended role, route, treasury destination, operator authority, or config field.
- Final public address or public governance object.
- Network and chain.
- Checksum confirmation.
- Custody type.
- Signer threshold, where applicable.
- Controller or responsible party.
- Approval evidence reference.
- Local, mock, Anvil, Base Sepolia, test-only, and placeholder exclusion confirmation.
- Secret exclusion confirmation.
- Intended deployment config field, if applicable.
- Intended read-only verification command category, if applicable.
- Reviewer.
- Approval status.
- Review receipt.

Any incomplete row remains OPEN.

Any row that lacks approval evidence remains OPEN.

Any row that contains a placeholder remains REJECTED.

Any row that contains private material remains REJECTED.

Any row that conflicts with the role, treasury, or operator matrix remains REJECTED.

## Required production address categories

| Category | Required source | Final value | Status |
| --- | --- | --- | --- |
| Governance multisig or governance object | Final governance approval source of truth | NOT PROVIDED | OPEN |
| Emergency multisig | Final emergency authority approval source of truth | NOT PROVIDED | OPEN |
| Treasury multisig | Final treasury approval source of truth | NOT PROVIDED | OPEN |
| Operator multisig | Final operator approval source of truth | NOT PROVIDED | OPEN |
| Mint authority | Final mint authority approval source of truth | NOT PROVIDED | OPEN |
| Metadata operator | Final metadata authority approval source of truth | NOT PROVIDED | OPEN |
| Vetting operator | Final ShieldRegistry authority approval source of truth | NOT PROVIDED | OPEN |
| Credential operator | Final VaultRegistry authority approval source of truth | NOT PROVIDED | OPEN |
| Claim operator | Final YieldPool claim authority approval source of truth | NOT PROVIDED | OPEN |
| Founder receipt wallet or governance object | Final founder custody approval source of truth | NOT PROVIDED | OPEN |
| Rescue destination | Final emergency and treasury approval source of truth | NOT PROVIDED | OPEN |
| Deployment funding wallet | Final deployment funding approval source of truth | NOT PROVIDED | OPEN |
| Bootstrap operator wallet | Temporary deployment-only approval source of truth | NOT PROVIDED | OPEN |
| CFT treasury destination | Final treasury approval source of truth | NOT PROVIDED | OPEN |
| Fee or BPS recipient controls | Final governance and treasury approval source of truth | NOT PROVIDED | OPEN |
| Yield pool receiver | Final treasury and yield approval source of truth | NOT PROVIDED | OPEN |
| TreasuryRouter route destinations | Final treasury route approval source of truth | NOT PROVIDED | OPEN |

## Required contract and module mappings

| Contract or module | Address or owner category required | Intended field, role, or route | Final value | Status |
| --- | --- | --- | --- | --- |
| CFTv2 | Governance or admin authority | DEFAULT_ADMIN_ROLE owner | NOT PROVIDED | OPEN |
| CFTv2 | Pauser authority | PAUSER_ROLE owner | NOT PROVIDED | OPEN |
| CFTv2 | Mint authority | MINTER_ROLE owner | NOT PROVIDED | OPEN |
| NSTSBT | Governance or admin authority | DEFAULT_ADMIN_ROLE owner | NOT PROVIDED | OPEN |
| NSTSBT | Pauser authority | PAUSER_ROLE owner | NOT PROVIDED | OPEN |
| NSTSBT | Mint manager | MINT_MANAGER_ROLE owner | NOT PROVIDED | OPEN |
| NSTSBT | Metadata manager | METADATA_MANAGER_ROLE owner | NOT PROVIDED | OPEN |
| NSTSBT | Treasury manager | TREASURY_MANAGER_ROLE owner | NOT PROVIDED | OPEN |
| NSTSBT | Swap operator | SWAP_OPERATOR_ROLE owner | NOT PROVIDED | OPEN |
| TreasuryRouter | Treasury route manager | Route authority | NOT PROVIDED | OPEN |
| TreasuryRouter | Treasury operator | Treasury route operations | NOT PROVIDED | OPEN |
| TreasuryRouter | Asset manager | Asset controls | NOT PROVIDED | OPEN |
| ShieldRegistry | Vetting authority | Vetting or ban or exemption authority | NOT PROVIDED | OPEN |
| VaultRegistry | Credential authority | Credential issuance authority | NOT PROVIDED | OPEN |
| YieldPool | Claim authority | Claim and yield operations | NOT PROVIDED | OPEN |
| RewardEscrow | Grant authority | Grant creation authority | NOT PROVIDED | OPEN |
| Deployment configuration | Founder custody owner | founderPayoutWallet or equivalent | NOT PROVIDED | OPEN |
| Deployment configuration | Treasury owner | treasury destination or equivalent | NOT PROVIDED | OPEN |
| Deployment configuration | Emergency owner | rescueDestination or equivalent | NOT PROVIDED | OPEN |
| Deployment configuration | Dependency owner | approved registry, router, pool, or token dependency | NOT PROVIDED | OPEN |

## Required submission form

| Row ID | Category | Intended use | Final public address or governance object | Chain or network | Custody type | Signer threshold | Controller or responsible party | Approval evidence reference | Checksum confirmed | Non-secret confirmed | Local or mock excluded | Anvil excluded | Base Sepolia excluded or explicitly limited | Placeholder excluded | Reviewer | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| PROD-ADDR-001 | Governance multisig or governance object | DEFAULT_ADMIN_ROLE and governance actions | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-002 | Emergency multisig | Pause, rescue, emergency authority | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-003 | Treasury multisig | Treasury custody and route authority | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-004 | Operator multisig | Limited operator permissions | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-005 | Mint authority | Mint manager or minter role | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-006 | Metadata operator | Metadata manager role | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-007 | Vetting operator | ShieldRegistry authority | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-008 | Credential operator | VaultRegistry authority | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-009 | Claim operator | YieldPool claim authority | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-010 | Founder receipt wallet or governance object | Founder payout receiver | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-011 | Rescue destination | Emergency rescue destination | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-012 | Deployment funding wallet | Deployment funding only | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-013 | Bootstrap operator wallet | Temporary deployment-only authority | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-014 | CFT treasury destination | CFT treasury destination | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-015 | Fee or BPS recipient controls | Fee or split controls | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-016 | Yield pool receiver | Yield pool receiver | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |
| PROD-ADDR-017 | TreasuryRouter destination | Treasury route destination | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | NOT PROVIDED | OPEN | OPEN | OPEN | OPEN | OPEN | OPEN | NOT PROVIDED | OPEN |

## Required evidence checklist before approval receipt

| Check | Required evidence | Status |
| --- | --- | --- |
| Address source is approved | Source-of-truth evidence reference | OPEN |
| Address is public | Public address or public governance object | OPEN |
| Address is checksummed | Checksum review receipt | OPEN |
| Address category matches intended role | Role and treasury operator matrix receipt | OPEN |
| Address category has approval evidence | Approval receipt or governance record | OPEN |
| Address is not local | Local exclusion review | OPEN |
| Address is not mock | Mock exclusion review | OPEN |
| Address is not Anvil | Anvil exclusion review | OPEN |
| Address is not a placeholder | Placeholder exclusion review | OPEN |
| Address is not Base Sepolia unless explicitly limited and approved | Base Sepolia exclusion or limitation receipt | OPEN |
| Address contains no private material | Secret exclusion review | OPEN |
| Address maps to intended deployment config field | Config mapping review | OPEN |
| Address maps to intended read-only verification command category | Verification command mapping review | OPEN |
| Address can be included in final production address approval receipt | Manual review receipt | OPEN |

## Review workflow

1. Collect candidate production address rows from approved source-of-truth evidence only.
2. Reject any address row that lacks an approval evidence reference.
3. Reject any row containing private material.
4. Reject any row that uses local, mock, Anvil, Base Sepolia, test-only, screenshot, chat-text, guessed, or placeholder values as production values.
5. Confirm public checksum formatting for every address.
6. Confirm custody type and signer threshold where applicable.
7. Confirm owner category matches the role, treasury, and operator matrix.
8. Confirm intended deployment config field or role mapping.
9. Confirm intended read-only verification command category.
10. Create a completed final production address approval receipt from the approved rows only.
11. Commit, push, and remotely confirm the completed approval receipt.
12. Update readiness gates only after the completed approval receipt exists.
13. Do not create final deployment config until the completed approval receipt exists.
14. Do not prepare any deployment command until final acceptance gate is complete and explicit human approval exists.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains unresolved.
- Any address row lacks approval evidence.
- Any address row contains private material.
- Any address row is a placeholder.
- Any address row is local, mock, Anvil, Base Sepolia, or test-only without explicit written limitation and approval.
- Any address row conflicts with the role, treasury, or operator matrix.
- Any owner category remains unmapped.
- Any treasury route remains unresolved.
- Any operator handoff requirement remains incomplete.
- Any final deployment config field remains unresolved.
- Any read-only verification command would depend on unapproved production addresses.
- Any final human approval is missing.

## Current status

- Final production address source-of-truth request packet created.
- No final production addresses are approved by this packet.
- No deployment configuration is created by this packet.
- No source code has been changed.
- No Foundry config has been changed.
- No deployment script has been changed.
- No release script has been changed.
- No mainnet deployment has been authorized.
- Next safe task: collect final public production address evidence from approved source of truth only.

## V0.5.2 source-of-truth response review checklist reference

Reference added UTC: 2026-10-04T11:24:21Z

Source checklist: docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md

Source checklist commit: c95b21a5263e10154ca9b0aee6ac1225c6d92075

Source checklist short commit: c95b21a

This reference does not authorize deployment.

The production address source-of-truth response review checklist must be completed before any production address response can be accepted into a final owner address template, deployment configuration, verification command set, release evidence bundle, final human approval receipt, or candidate deployment command.

The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.

No private key, seed phrase, API key, deployer key, wallet secret, recovery phrase, signing material, private RPC credential, keystore password, or hardware wallet recovery information may be included in any response review artifact.

Readiness remains blocked until final public production addresses, approval evidence, deployment configuration review, read-only verification receipts, release evidence, and final human approval are complete, reviewed, committed, pushed, and remotely confirmed.

Mainnet deployment remains blocked.

## v0.5.2 Config package gate checklist reference

Reference document: docs/checklists/V0_5_2_CONFIG_PACKAGE_GATE_CHECKLIST.md

Reference commit: 9c152de9c889c453168846ac28ef3ad69fb10dd7

Reference captured UTC: 2026-10-04T18:17:03Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production configuration.

This reference does not authorize production contract addresses.

This reference does not authorize production treasury routing.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable config package code.

This reference does not authorize any public mainnet mint interface.

This reference records that the config package gate checklist exists as a controlled readiness artifact.

The config package remains gate-blocked until public config boundaries, secret exclusion controls, network config rules, address config rules, ABI config rules, feature flag rules, interface copy boundaries, Base Sepolia limitations, Base mainnet blockers, transaction rail dependency, protocol client dependency, governance gates dependency, package test strategy, and no-secret package scan rules are complete.

Required follow-on work:

- Create governance gates package checklist.
- Create Base Sepolia demo launch gate checklist.
- Create ABI source policy.
- Create address source policy.
- Create Base Sepolia config map.
- Create public warning copy review.
- Create First Nations legal language review placeholder.
- Create package test strategy.
- Create no-secret package scan rule.
- Reference each remaining package gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write executable config package source code until package gates are complete.
- Do not create production mainnet config yet.
- Do not create production address config yet.
- Do not create production transaction enablement flags yet.
- Do not create production mint enablement flags yet.
- Do not create production treasury route config yet.
- Do not create production governance object config yet.
- Do not embed production addresses before source-of-truth approval.
- Do not use Base Sepolia addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use mock addresses as production addresses.
- Do not use screenshots as address source-of-truth.
- Do not use chat text as address source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Governance gates package gate checklist reference

Reference document: docs/checklists/V0_5_2_GOVERNANCE_GATES_PACKAGE_GATE_CHECKLIST.md

Reference commit: c44aa902a9d83b828fdf275f5b58588f5e9f1929

Reference captured UTC: 2026-10-04T18:53:52Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production governance.

This reference does not authorize production governance objects.

This reference does not authorize production role ownership.

This reference does not authorize production multisig assignments.

This reference does not authorize First Nations governance claims.

This reference does not authorize First Nations legal conclusions.

This reference does not authorize production treasury routing.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable governance gates package code.

This reference does not authorize any public mainnet mint interface.

This reference records that the governance gates package gate checklist exists as a controlled readiness artifact.

The governance gates package remains gate-blocked until governance authority rules, multisig/key-holder rules, First Nations legal review boundaries, corporate governance boundaries, treasury governance boundaries, emergency authority boundaries, operator authority boundaries, role owner mapping, transaction rail dependency, protocol client dependency, config dependency, Base Sepolia limitations, Base mainnet blockers, governance package test strategy, and no-secret package scan rules are complete.

Required follow-on work:

- Create ABI source policy.
- Create address source policy.
- Create Base Sepolia demo launch gate checklist.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference each remaining implementation gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write executable governance-gates package source code until package gates are complete.
- Do not create production governance gates yet.
- Do not create production role owner execution logic yet.
- Do not create production treasury approval logic yet.
- Do not create production First Nations governance logic yet.
- Do not create production multisig signer logic yet.
- Do not create production emergency action logic yet.
- Do not embed production governance objects before source-of-truth approval.
- Do not embed production role owners before source-of-truth approval.
- Do not use Base Sepolia governance as production governance.
- Do not use Anvil governance as production governance.
- Do not use mock governance as production governance.
- Do not use screenshots as governance source-of-truth.
- Do not use chat text as governance source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.
