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

## v0.5.2 ABI source policy reference

Reference document: docs/audits/V0_5_2_ABI_SOURCE_POLICY.md

Reference commit: 046ed38768988e61c0f3b2537e65e51d5e87bbad

Reference captured UTC: 2026-10-04T19:10:43Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production configuration.

This reference does not authorize production governance.

This reference does not authorize writing executable ABI client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI source policy exists as a controlled readiness artifact.

ABI-dependent package work remains blocked until approved ABI source hierarchy, Foundry artifact rules, explorer verification rules, Base Sepolia ABI boundaries, Base mainnet ABI boundaries, local Anvil ABI boundaries, ABI record required fields, disallowed ABI source controls, secret exclusion controls, ABI drift controls, and ABI review workflow are complete.

Required follow-on work:

- Create address source policy.
- Create ABI evidence record template.
- Create ABI checksum receipt template.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI source policy in package gates before executable ABI client source implementation.

No-go conditions preserved:

- Do not write executable ABI client code until ABI policy gates are complete.
- Do not create production protocol clients yet.
- Do not create production transaction rail ABI bindings yet.
- Do not create production write clients yet.
- Do not create production mint clients yet.
- Do not use screenshot-derived ABIs.
- Do not use chat-derived ABIs.
- Do not use manually edited ABIs without receipt.
- Do not use Base Sepolia ABIs as production ABIs.
- Do not use Anvil ABIs as production ABIs.
- Do not use uncommitted build artifacts as approved ABIs.
- Do not use wrong-branch build artifacts as approved ABIs.
- Do not use wrong-profile build artifacts as approved ABIs.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address source policy reference

Reference document: docs/audits/V0_5_2_ADDRESS_SOURCE_POLICY.md

Reference commit: 8151b22f61901d0a0ce3fe4bd16788f6e925329c

Reference captured UTC: 2026-10-04T20:49:56Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production addresses.

This reference does not authorize production governance objects.

This reference does not authorize production treasury routes.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production configuration.

This reference does not authorize writing executable address-dependent client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the address source policy exists as a controlled readiness artifact.

Address-dependent package work remains blocked until approved address source hierarchy, production address rules, testnet address rules, local Anvil address rules, Base mainnet address boundaries, contract address source rules, governance object address rules, treasury address source rules, operator address source rules, First Nations address boundaries, corporate address boundaries, checksum rules, ownership proof rules, disallowed address source controls, secret exclusion controls, address drift controls, and address review workflow are complete.

Required follow-on work:

- Create address evidence record template.
- Create address checksum receipt template.
- Create Base Sepolia address map.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference address source policy in package gates before executable address-dependent source implementation.

No-go conditions preserved:

- Do not write executable address-dependent client code until address policy gates are complete.
- Do not create production protocol clients yet.
- Do not create production transaction rail address bindings yet.
- Do not create production write clients yet.
- Do not create production mint clients yet.
- Do not use screenshot-derived addresses.
- Do not use chat-derived addresses.
- Do not use memory-derived addresses.
- Do not use manually copied addresses without receipt.
- Do not use Base Sepolia addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use mock addresses as production addresses.
- Do not use placeholder addresses as production addresses.
- Do not use unapproved production owner addresses.
- Do not use unapproved treasury addresses.
- Do not use unapproved governance objects.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address evidence record template reference

Reference document: docs/audits/V0_5_2_ADDRESS_EVIDENCE_RECORD_TEMPLATE.md

Reference commit: 8cf842065fad396728c1230eb0310c08c6b9158b

Reference captured UTC: 2026-10-05T08:56:12Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not approve any production operator.

This reference does not approve any production role owner.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable address-dependent client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the address evidence record template exists as a controlled readiness artifact.

Address use remains blocked until completed address evidence records are created from approved source-of-truth inputs, checksum reviewed, no-secret reviewed, committed, pushed, remotely confirmed, and paired with required approval evidence.

No-go conditions preserved:

- Do not use Base Sepolia address evidence as Base mainnet evidence.
- Do not use Anvil address evidence as production evidence.
- Do not use mock address evidence as production evidence.
- Do not use screenshot address evidence as production evidence.
- Do not use chat text address evidence as production evidence.
- Do not use memory-derived address evidence as production evidence.
- Do not approve any record containing secrets.
- Do not approve any record missing checksum review.
- Do not approve any record missing approval evidence.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address checksum receipt template reference

Reference document: docs/audits/V0_5_2_ADDRESS_CHECKSUM_RECEIPT_TEMPLATE.md

Reference commit: 1382bb15914ae132061940c80a455980ad9c4e4b

Reference captured UTC: 2026-10-05T09:11:21Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not approve any production operator.

This reference does not approve any production role owner.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize any public mainnet mint interface.

This reference records that the address checksum receipt template exists as a controlled readiness artifact.

A checksum-valid address is not automatically approved.

A checksum-valid address does not prove ownership.

A checksum-valid address does not prove governance authority.

A checksum-valid address does not prove treasury authority.

A checksum-valid address does not prove deployment authorization.

Address use remains blocked until completed checksum receipts are paired with completed address evidence records, source-of-truth evidence, approval evidence, no-secret review, and final readiness approval where required.

Required follow-on work:

- Create ABI evidence record template.
- Create ABI checksum receipt template.
- Create Base Sepolia address map.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference checksum receipt template in package gates before executable address-dependent source implementation.

No-go conditions preserved:

- Do not use a checksum receipt as ownership proof.
- Do not use a checksum receipt as governance approval.
- Do not use a checksum receipt as treasury approval.
- Do not use a checksum receipt as legal approval.
- Do not use a checksum receipt as deployment authorization.
- Do not use Base Sepolia checksum evidence as Base mainnet evidence.
- Do not use Anvil checksum evidence as production evidence.
- Do not use mock checksum evidence as production evidence.
- Do not use screenshot checksum evidence as production evidence.
- Do not use chat text checksum evidence as production evidence.
- Do not use memory-derived checksum evidence as production evidence.
- Do not approve any receipt containing secrets.
- Do not approve any receipt missing reviewer identity.
- Do not approve any receipt missing source evidence.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 ABI evidence record template reference

Reference document: docs/audits/V0_5_2_ABI_EVIDENCE_RECORD_TEMPLATE.md

Reference commit: f949e4b64f85cd63e24391fa072a2d2b72aa21f2

Reference captured UTC: 2026-10-05T09:29:17Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI evidence record template exists as a controlled readiness artifact.

ABI use remains blocked until completed ABI evidence records are created from approved ABI sources, reviewed, checksum-confirmed where required, paired with address evidence where required, committed, pushed, remotely confirmed, and paired with required build, explorer, deployment, release, or approval evidence.

Required follow-on work:

- Create ABI checksum receipt template.
- Create Base Sepolia ABI inventory receipt.
- Create Base Sepolia address map.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI evidence record template in package gates before executable ABI-dependent source implementation.

No-go conditions preserved:

- Do not use an ABI evidence record outside its stated network scope.
- Do not use an ABI evidence record outside its stated chain ID.
- Do not use an ABI evidence record outside its stated contract or module.
- Do not use a Base Sepolia ABI evidence record as Base mainnet evidence.
- Do not use Anvil ABI evidence as production evidence.
- Do not use screenshot ABI evidence as production evidence.
- Do not use chat text ABI evidence as production evidence.
- Do not use memory-derived ABI evidence as production evidence.
- Do not use manually edited ABI evidence without receipt.
- Do not approve any ABI record containing secrets.
- Do not approve any ABI record missing source commit.
- Do not approve any ABI record with unresolved drift.
- Do not use write-capable ABI paths until final gates are complete.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 ABI checksum receipt template reference

Reference document: docs/audits/V0_5_2_ABI_CHECKSUM_RECEIPT_TEMPLATE.md

Reference commit: 4722469d10f94d86423632ff6fb46edf37dda16f

Reference captured UTC: 2026-10-06T08:04:02Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI checksum receipt template exists as a controlled readiness artifact.

ABI checksum confirmation is not ABI approval.

ABI checksum confirmation does not prove the ABI is correct for a deployed contract.

ABI checksum confirmation does not prove source verification.

ABI checksum confirmation does not prove address correctness.

ABI checksum confirmation does not prove governance approval.

ABI checksum confirmation does not prove treasury approval.

ABI checksum confirmation does not authorize write execution.

ABI checksum confirmation does not authorize deployment.

ABI use remains blocked until completed ABI checksum receipts are paired with completed ABI evidence records, approved ABI source evidence, address evidence where required, build evidence where required, explorer evidence where required, release evidence where required, no-secret review, and final readiness approval where required.

Required follow-on work:

- Create Base Sepolia ABI inventory receipt.
- Create Base Sepolia address map.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI checksum receipt template in package gates before executable ABI-dependent source implementation.

No-go conditions preserved:

- Do not use an ABI checksum receipt outside its stated network scope.
- Do not use an ABI checksum receipt outside its stated chain ID.
- Do not use an ABI checksum receipt outside its stated contract or module.
- Do not use a Base Sepolia ABI checksum receipt as Base mainnet evidence.
- Do not use Anvil ABI checksum evidence as production evidence.
- Do not use screenshot ABI checksum evidence as production evidence.
- Do not use chat text ABI checksum evidence as production evidence.
- Do not use memory-derived ABI checksum evidence as production evidence.
- Do not use manually edited ABI checksum evidence without receipt.
- Do not approve any ABI checksum receipt containing secrets.
- Do not approve any ABI checksum receipt missing source commit where required.
- Do not approve any ABI checksum receipt with unresolved drift.
- Do not use write-capable ABI paths until final gates are complete.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI inventory receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md

Reference commit: 82fba6d0052aa7d42d4dc86049e98cc6e7b8b48b

Reference captured UTC: 2026-10-06T08:23:58Z

Reference target: final production address source-of-truth request packet

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia ABI inventory receipt exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Base Sepolia ABI use remains blocked until completed ABI evidence records, ABI checksum receipts, address evidence records, address checksum receipts, explorer/source verification receipts where applicable, no-secret review, package gates, and public-demo approval are complete.

Required follow-on work:

- Create Base Sepolia address map.
- Create Base Sepolia address evidence records.
- Create Base Sepolia address checksum receipts.
- Create Base Sepolia ABI evidence records.
- Create Base Sepolia ABI checksum receipts.
- Create Base Sepolia explorer/source verification receipts.
- Create public demo warning-language receipt.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.

No-go conditions preserved:

- Do not use this receipt as production ABI approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet deployment authorization.
- Do not use this receipt as transaction rail authorization.
- Do not use this receipt as governance approval.
- Do not use this receipt as treasury approval.
- Do not use Base Sepolia ABI evidence as Base mainnet evidence.
- Do not use Base Sepolia addresses as Base mainnet addresses.
- Do not expose write-capable clients from this receipt.
- Do not create production config from this receipt.
- Do not create production public interface config from this receipt.
- Do not create production corporate interface config from this receipt.
- Do not create production First Nations interface config from this receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address map reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_MAP.md

Reference commit: c30dbdba2f141d84b36532c5d661884244dba807

Reference captured UTC: 2026-10-06T08:38:35Z

Reference target: final production address source-of-truth request packet

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address map exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Base Sepolia address use remains blocked until completed address evidence records, address checksum receipts, ABI evidence records where applicable, ABI checksum receipts where applicable, explorer/source verification receipts where applicable, no-secret review, package gates, and public-demo approval are complete.

Required follow-on work:

- Create Base Sepolia address evidence records.
- Create Base Sepolia address checksum receipts.
- Create Base Sepolia ABI evidence records.
- Create Base Sepolia ABI checksum receipts.
- Create Base Sepolia explorer/source verification receipts.
- Create public demo warning-language receipt.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.

No-go conditions preserved:

- Do not use this map as production address approval.
- Do not use this map as production ABI approval.
- Do not use this map as public demo approval.
- Do not use this map as mainnet deployment authorization.
- Do not use this map as transaction rail authorization.
- Do not use this map as governance approval.
- Do not use this map as treasury approval.
- Do not use Base Sepolia addresses as Base mainnet addresses.
- Do not use Base Sepolia ABI evidence as Base mainnet evidence.
- Do not expose write-capable clients from this map.
- Do not create production config from this map.
- Do not create production public interface config from this map.
- Do not create production corporate interface config from this map.
- Do not create production First Nations interface config from this map.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia public demo warning language receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_PUBLIC_DEMO_WARNING_LANGUAGE_RECEIPT.md

Reference commit: 6c715e8bbacfe1c992e2c755910646450566f106

Reference captured UTC: 2026-10-06T08:54:09Z

Reference target: final production address source-of-truth request packet

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve a public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia public demo warning language receipt exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Public Base Sepolia demo launch remains blocked until warning language is implemented, address evidence is complete, ABI evidence is complete, checksum receipts are complete, no-secret review is complete, package gates are complete, UI review is complete, and demo-specific human approval is captured.

Required follow-on work:

- Create Base Sepolia address evidence records.
- Create Base Sepolia address checksum receipts.
- Create Base Sepolia ABI evidence records.
- Create Base Sepolia ABI checksum receipts.
- Create Base Sepolia explorer/source verification receipts.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.
- Create demo approval receipt template.
- Implement warning language only after app/source gates authorize implementation.

No-go conditions preserved:

- Do not launch a public Base Sepolia demo from this receipt alone.
- Do not launch a production interface from this receipt.
- Do not launch a mainnet interface from this receipt.
- Do not expose write methods from this receipt.
- Do not imply Base Sepolia has production value.
- Do not imply Base Sepolia creates mainnet rights.
- Do not imply Base Sepolia activates production governance.
- Do not imply Base Sepolia activates production treasury.
- Do not imply Base Sepolia activates First Nations production revenue.
- Do not imply Base Sepolia activates corporate production integration.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia public demo approval receipt template reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_PUBLIC_DEMO_APPROVAL_RECEIPT_TEMPLATE.md

Reference commit: 50507d18f6036ccada13440e88a601165f42f0f2

Reference captured UTC: 2026-10-06T09:15:31Z

Reference target: final production address source-of-truth request packet

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve a public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia public demo approval receipt template exists as a controlled testnet-only approval artifact.

No public Base Sepolia demo is approved by this reference.

No public Base Sepolia demo is approved by the template alone.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Public Base Sepolia demo launch remains blocked until a completed approval receipt exists, warning language is implemented, address evidence is complete, ABI evidence is complete, checksum receipts are complete, no-secret review is complete, package gates are complete, UI review is complete, and demo-specific human approval is captured.

Required follow-on work:

- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts.
- Implement Base Sepolia warning language.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.
- Complete UI review.
- Complete demo-specific human approval receipt if demo launch is pursued.

No-go conditions preserved:

- Do not launch a public Base Sepolia demo from this template.
- Do not launch a public Base Sepolia demo unless a completed approval receipt exists.
- Do not launch a production interface from this template.
- Do not launch a mainnet interface from this template.
- Do not expose write methods from this template.
- Do not imply Base Sepolia has production value.
- Do not imply Base Sepolia creates mainnet rights.
- Do not imply Base Sepolia activates production governance.
- Do not imply Base Sepolia activates production treasury.
- Do not imply Base Sepolia activates First Nations production revenue.
- Do not imply Base Sepolia activates corporate production integration.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 read-only client implementation plan reference

Reference document: docs/plans/V0_5_2_READ_ONLY_CLIENT_IMPLEMENTATION_PLAN.md

Reference commit: b9c0b7fe0a9fc1e9aa0b72db40134166d757dc68

Reference captured UTC: 2026-10-06T09:26:34Z

Reference target: final production address source-of-truth request packet

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the read-only client implementation plan exists as a controlled planning artifact.

No executable read-only client code is approved by this reference alone.

No public Base Sepolia demo is approved by this reference alone.

No write-capable client behavior is approved by this reference.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Read-only client implementation remains blocked until address evidence, address checksum receipts, ABI evidence, ABI checksum receipts, config plan, protocol-client plan, no-secret scan rule, package test strategy, and applicable demo/interface approvals are complete.

Required follow-on work:

- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Implement read-only client code only after package gates authorize executable implementation.
- Complete UI/demo review before public Base Sepolia demo launch.

No-go conditions preserved:

- Do not implement executable read-only client code from this plan alone.
- Do not launch a public Base Sepolia demo from this plan alone.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not treat Base Sepolia as production.
- Do not treat Base Sepolia reads as mainnet evidence.
- Do not treat read-only client implementation as deployment authorization.
- Do not imply this reference authorizes deployment.
