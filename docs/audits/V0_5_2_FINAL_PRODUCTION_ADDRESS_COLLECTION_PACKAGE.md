# NST Core v0.5.2 Final Production Address Collection Package

Status: DRAFT COLLECTION PACKAGE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-09-29T09:19:19Z
Current commit at creation: a58cbeacbe99863c24c9b2d6fd9f3edcec326596

Mainnet readiness blocker register commit: 54ed452cc3f64cbd6ad69a2b9ed875e9fa5c8f19
Address intake package commit: f6f33da700af62b0a6bae4d76d1b233fb583cdf1
Owner address template commit: a6ea1f801f845c03acc6aaf4d1f5a0d48ea3ec12
Role treasury operator matrix commit: 5f80ee6dfd18120ce9896d81b74bf0f88e354666
Operator handoff checklist commit: a6ea1f801f845c03acc6aaf4d1f5a0d48ea3ec12
Deployment config review checklist commit: a58cbeacbe99863c24c9b2d6fd9f3edcec326596
Read-only verification checklist commit: a58cbeacbe99863c24c9b2d6fd9f3edcec326596
Release evidence bundle checklist commit: a58cbeacbe99863c24c9b2d6fd9f3edcec326596
Final human approval receipt template commit: a58cbeacbe99863c24c9b2d6fd9f3edcec326596

Source blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md
Source address intake package: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md
Source role treasury operator matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source role treasury operator audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md
Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md
Source release evidence bundle checklist: docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md
Source final human approval template: docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source readiness runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source no-deployment candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md

## Purpose

This document is the controlled collection package for future NST Core v0.5.2 final public production addresses.

This document is not a deployment authorization.

No mainnet deployment is authorized by this package.

This package does not create, approve, or imply any deployment command.

This package does not approve any address, route, role, treasury destination, operator, key, deployer wallet, governance object, release package, or deployment configuration.

This package exists to collect only public production addresses and public governance objects from approved sources of truth before any future candidate deployment configuration is prepared.

## Current blocker

Production owner addresses remain TBD.

Mainnet deployment remains blocked.

The final deployment configuration is not complete.

The final verification command set is not complete.

The final release evidence bundle is not complete.

Final human approval is not complete.

## Address evidence rule

Every final production address must come from an approved source of truth.

Every final production address must be public.

Every final production address must be checksum reviewed.

Every final production address must have approval evidence.

Every final production address must map to its intended role, route, treasury destination, operator authority, or config field.

Every final production address must be reviewed against the role treasury operator matrix.

Every final production address must be reviewed against the operator handoff checklist.

Every final production address must be reviewed against the deployment config review checklist.

Every final production address must be referenced in the final human approval receipt before deployment can be considered.

No address may be treated as final merely because it appears in chat, screenshots, shell history, memory, local notes, or temporary drafts.

## Secret exclusion rule

No private keys belong in this repository.

No seed phrases belong in this repository.

No API keys belong in this repository.

No deployer keys belong in this repository.

No wallet secrets belong in this repository.

No recovery phrases belong in this repository.

No signing material belongs in this repository.

No private RPC credentials belong in this repository.

No keystore passwords belong in this repository.

Only public addresses, public contract addresses, public governance objects, public checksums, commit IDs, evidence file names, approval references, and non-secret operational confirmations may be documented.

## Rejection rule

Reject a proposed address entry if any of the following are true:

- It includes a private key, secret, seed phrase, API key, deployer key, wallet secret, recovery phrase, signing material, private RPC credential, or keystore password.
- It lacks approval evidence.
- It lacks checksum review.
- It is a placeholder address.
- It is a local mock address.
- It is an Anvil address.
- It is a Base Sepolia address presented as production without explicit written limitation and final approval.
- It is a test-only address presented as production without explicit written limitation and final approval.
- It was copied from chat text, screenshots, memory, or guesswork.
- It conflicts with the owner address template.
- It conflicts with the role treasury operator matrix.
- It conflicts with the operator handoff checklist.
- It conflicts with the deployment config review checklist.
- It allows a bootstrap deployer to retain production power without explicit approval.
- It assigns treasury authority to a routine hot-wallet operator without approval.
- It assigns emergency authority to the same routine operator without approval.
- It is not paired with a review receipt.

## Required production address categories

| Category | Required source of truth | Final public value | Checksum review | Approval evidence | Status |
| --- | --- | --- | --- | --- | --- |
| Governance multisig or governance object | Final governance approval record | TBD | TBD | TBD | OPEN |
| Emergency multisig | Final emergency authority approval record | TBD | TBD | TBD | OPEN |
| Treasury multisig | Final treasury approval record | TBD | TBD | TBD | OPEN |
| Operator multisig | Final operator approval record | TBD | TBD | TBD | OPEN |
| Mint authority | Final mint authority approval record | TBD | TBD | TBD | OPEN |
| Metadata operator | Final metadata authority approval record | TBD | TBD | TBD | OPEN |
| Vetting operator | Final ShieldRegistry authority approval record | TBD | TBD | TBD | OPEN |
| Credential operator | Final VaultRegistry authority approval record | TBD | TBD | TBD | OPEN |
| Claim operator | Final YieldPool claim approval record | TBD | TBD | TBD | OPEN |
| Founder receipt wallet or governance object | Final founder custody approval record | TBD | TBD | TBD | OPEN |
| Rescue destination | Final emergency and treasury approval record | TBD | TBD | TBD | OPEN |
| Deployment funding wallet | Final deployment funding approval record | TBD | TBD | TBD | OPEN |
| Bootstrap operator wallet | Temporary deployment-only approval record | TBD | TBD | TBD | OPEN |
| Release owner or governance object | Final release approval record | TBD | TBD | TBD | OPEN |
| Verification reviewer | Final verification approval record | TBD | TBD | TBD | OPEN |

## Contract role address collection

| Contract or module | Role or authority | Required owner category | Intended config field or role | Final public value | Status |
| --- | --- | --- | --- | --- | --- |
| CFTv2 | Governance or admin authority | Governance multisig or governance object | DEFAULT_ADMIN_ROLE owner | TBD | OPEN |
| CFTv2 | Pauser authority | Emergency multisig or pauser authority | PAUSER_ROLE owner | TBD | OPEN |
| CFTv2 | Mint authority | Mint authority | MINTER_ROLE owner | TBD | OPEN |
| NSTSBT | Governance or admin authority | Governance multisig or governance object | DEFAULT_ADMIN_ROLE owner | TBD | OPEN |
| NSTSBT | Pauser authority | Emergency multisig or pauser authority | PAUSER_ROLE owner | TBD | OPEN |
| NSTSBT | Mint manager | Mint authority | MINT_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Metadata manager | Metadata operator | METADATA_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Treasury manager | Treasury multisig | TREASURY_MANAGER_ROLE owner | TBD | OPEN |
| NSTSBT | Swap operator | Operator multisig or treasury route operator | SWAP_OPERATOR_ROLE owner | TBD | OPEN |
| TreasuryRouter | Treasury route manager | Treasury multisig | Route authority | TBD | OPEN |
| TreasuryRouter | Treasury operator | Operator multisig | Treasury route operations | TBD | OPEN |
| TreasuryRouter | Asset manager | Treasury multisig | Asset controls | TBD | OPEN |
| ShieldRegistry | Vetting authority | Vetting operator | Vetting or ban exemption authority | TBD | OPEN |
| VaultRegistry | Credential authority | Credential operator | Credential issuance authority | TBD | OPEN |
| YieldPool | Claim authority | Claim operator | Claim and yield operations | TBD | OPEN |
| RewardEscrow | Grant authority | Governance multisig or grant authority | Grant creation authority | TBD | OPEN |

## Treasury route collection

| Treasury route or destination | Required owner category | Final public value | Checksum review | Approval evidence | Status |
| --- | --- | --- | --- | --- | --- |
| Founder receipt wallet or governance object | Founder custody approval | TBD | TBD | TBD | OPEN |
| Yield pool receiver | Treasury approval | TBD | TBD | TBD | OPEN |
| CFT treasury destination | Treasury approval | TBD | TBD | TBD | OPEN |
| Fee or BPS recipient controls | Governance and treasury approval | TBD | TBD | TBD | OPEN |
| Rescue destination | Emergency and treasury approval | TBD | TBD | TBD | OPEN |
| TreasuryRouter route destinations | Treasury route approval | TBD | TBD | TBD | OPEN |
| Deployment funding wallet | Deployment funding approval | TBD | TBD | TBD | OPEN |

## Deployment configuration mapping

| Config field or route | Required source | Final public value | Status |
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
| TreasuryRouter destinations | Treasury route approval record | TBD | OPEN |
| Fee or BPS recipient controls | Governance and treasury approval record | TBD | OPEN |

## Address row required fields

Every future completed address row must include:

- Owner category.
- Role, route, treasury destination, operator authority, or config field affected.
- Final public address or public governance object.
- Custody type.
- Signer threshold, where applicable.
- Controller or responsible party.
- Approval evidence reference.
- Intended deployment config field.
- Checksum confirmation.
- Local mock exclusion confirmation.
- Anvil exclusion confirmation.
- Base Sepolia exclusion confirmation.
- Test-only value exclusion confirmation.
- Post-deploy read-only verification command.
- Reviewer.
- Status.

## Validation workflow

| Step | Requirement | Status |
| --- | --- | --- |
| 1 | Receive final public address from approved source of truth | OPEN |
| 2 | Confirm address checksum formatting | OPEN |
| 3 | Confirm address is not a local mock address | OPEN |
| 4 | Confirm address is not an Anvil address | OPEN |
| 5 | Confirm address is not a Base Sepolia address unless explicitly limited and approved | OPEN |
| 6 | Confirm address is not test-only unless explicitly limited and approved | OPEN |
| 7 | Confirm no private key, seed phrase, API key, wallet secret, or recovery phrase is included | OPEN |
| 8 | Confirm owner category matches intended permission scope | OPEN |
| 9 | Confirm treasury authorities are separated from routine operators where practical | OPEN |
| 10 | Confirm emergency authorities are separated from routine operators where practical | OPEN |
| 11 | Confirm metadata operators cannot move funds | OPEN |
| 12 | Confirm vetting and credential operators cannot move treasury funds | OPEN |
| 13 | Confirm bootstrap deployer powers are temporary or removed after handoff | OPEN |
| 14 | Confirm final owner address template is updated | OPEN |
| 15 | Confirm role treasury operator matrix is updated | OPEN |
| 16 | Confirm operator handoff checklist is updated | OPEN |
| 17 | Confirm deployment config is created only after final address approval | OPEN |
| 18 | Confirm deployment config checksum is captured after config creation | OPEN |
| 19 | Confirm read-only verification command set is updated after final config creation | OPEN |
| 20 | Confirm final human approval receipt references this package | OPEN |

## Evidence required before completion

- Final governance approval receipt.
- Final emergency authority approval receipt.
- Final treasury approval receipt.
- Final operator approval receipt.
- Final mint authority approval receipt.
- Final metadata authority approval receipt.
- Final ShieldRegistry authority approval receipt.
- Final VaultRegistry authority approval receipt.
- Final YieldPool claim authority approval receipt.
- Final founder custody approval receipt.
- Final deployment funding approval receipt.
- Final checksum review receipt.
- Final address template update receipt.
- Final role treasury operator matrix update receipt.
- Final operator handoff update receipt.
- Final deployment config review receipt.
- Final read-only verification command review receipt.
- Final release evidence bundle update receipt.
- Final human approval receipt.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any role owner remains TBD.
- Any route destination remains TBD.
- Any final deployment config field remains unresolved.
- Any final deployment configuration checksum is missing.
- Any final deployment configuration review receipt is missing.
- Any final read-only verification command is missing.
- Any final read-only verification receipt is missing.
- Any final release evidence file is missing.
- Any final release note is empty.
- Any final human approval receipt is missing.
- Any private key, seed phrase, API key, deployer key, wallet secret, recovery phrase, signing material, private RPC credential, keystore password, or hardware wallet recovery information appears in the repository.
- Any source-code patch is made without dedicated review.
- Any Foundry config patch is made without dedicated review.
- Any deployment script patch is made without dedicated review.
- Any release script patch is made without dedicated review.

## Acceptance rule for this package

This package is complete only when:

- Every required production address category has a final public value.
- Every final public value has checksum review.
- Every final public value has approval evidence.
- Every role owner maps to the approved owner address template.
- Every role owner maps to the role treasury operator matrix.
- Every operator authority maps to the operator handoff checklist.
- Every treasury route maps to the approved treasury authority record.
- Every deployment config field maps to an approved production value.
- No local, mock, Anvil, Base Sepolia, test-only, screenshot, chat, memory, or placeholder value is presented as a final production value.
- No private material is present.
- The final deployment config is created from this approved address package only.
- The final read-only verification commands are created from the approved deployment config only.
- The final release evidence bundle references the completed package.
- Final human approval explicitly references the completed package.
- The package is committed and pushed to the v0.5.2 phase branch.
- Mainnet deployment remains blocked until final human approval is complete.

## Current status

- Final production address collection package draft created.
- Production owner addresses remain TBD.
- No production address is approved by this draft.
- No deployment configuration has been created by this draft.
- No source code has been changed.
- No Foundry config has been changed.
- No deployment script has been changed.
- No release script has been changed.
- No mainnet deployment has been authorized.
- Next task: collect final public production addresses from an approved source of truth only.

## V0.5.2 final production address approval receipt template reference

Reference file: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md
Reference commit: fcfaf82996a48c711d5f9537051ad5a5b91a4291
Reference UTC: 2026-09-30T09:05:59Z

This reference connects the Final production address collection package to the final production address approval receipt template.

This reference is not a deployment authorization.

No mainnet deployment is authorized by this reference.

This reference does not approve any production address, route, role, treasury destination, operator, key, deployer wallet, governance object, release package, or deployment configuration.

Final production addresses remain blocked unless each required production address row is paired with a completed approval receipt created from the committed final production address approval receipt template or a stricter committed successor.

Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.

No private key, seed phrase, deployer key, wallet secret, API key, recovery phrase, private RPC credential, keystore password, signing material, or hardware wallet recovery information may be documented in this reference chain.

Required approval evidence before this gate can close:

- Completed final production address approval receipt.
- Final public production address values from an approved source of truth.
- Approval evidence for each required owner category.
- Checksum confirmation for each public address.
- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
- Confirmation that no private signing material or secret material is included.
- Manual review receipt.
- Commit and remote confirmation receipt.

Until this approval evidence exists, the production-address portion of this readiness gate remains OPEN and mainnet deployment remains BLOCKED.

## v0.5.2 production address source-of-truth request packet reference

Reference added UTC: 2026-10-02T08:17:08Z
Reference source packet commit: 0b9d98e712085fcbab4618360a316143fd6a7a4b
Reference source packet: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

The production address source-of-truth request packet is now part of the v0.5.2 readiness evidence chain.

Final production addresses remain unresolved until approved public source-of-truth evidence is collected, reviewed, committed, pushed, remotely confirmed, and converted into a completed final production address approval receipt.

Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.

Mainnet deployment remains blocked until every final acceptance gate item is COMPLETE, every production owner address is resolved from approved public source-of-truth evidence, and explicit final human approval is captured.

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

Reference target: final production address collection package

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

Reference target: final production address collection package

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

Reference target: final production address collection package

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

Reference target: final production address collection package

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
