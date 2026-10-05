# NST Core v0.5.2 ABI Evidence Record Template

Status: DRAFT TEMPLATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-05T09:23:24Z
Current commit at creation: e2e0bc2734e8f99b793980bf46ae3f26b5048f9b

ABI source policy commit: e2e0bc2734e8f99b793980bf46ae3f26b5048f9b

Address source policy commit: e2e0bc2734e8f99b793980bf46ae3f26b5048f9b

Address evidence record template commit: e2e0bc2734e8f99b793980bf46ae3f26b5048f9b

Address checksum receipt template commit: 1382bb15914ae132061940c80a455980ad9c4e4b

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not approve any production ABI.

This document does not approve any production contract address.

This document does not approve any production governance object.

This document does not approve any production treasury route.

This document does not authorize production configuration.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize production governance gates.

This document does not authorize any public mainnet mint interface.

This document is a template only.

No ABI entered into a future copy of this template is valid unless the completed record is reviewed, committed, pushed, remotely confirmed, and paired with required build, address, deployment, or explorer evidence.

## Purpose

This template defines the controlled ABI evidence record format for NST Core v0.5.2.

Every future ABI used by config, protocol clients, governance gates, transaction rail, public interfaces, corporate interfaces, First Nations interfaces, admin consoles, Base Sepolia demo tools, deployment config, verification commands, or release evidence must be documented using this evidence structure or a stricter successor.

The purpose is to make every ABI source reviewable, auditable, source-controlled, network-scoped, build-profile-scoped, checksum-confirmed, and protected against stale, pasted, screenshot-derived, chat-derived, explorer-only, wrong-branch, wrong-profile, wrong-network, or manually edited ABIs.

## Current blocker

ABI evidence records are not complete.

Protocol client implementation remains blocked.

Transaction rail implementation remains blocked.

Config package implementation remains blocked.

Governance gates implementation remains blocked.

Public production interface launch remains blocked.

Mainnet deployment remains blocked.

## Template use rule

A completed ABI evidence record must be created from this template only after an ABI is received from an approved source.

Do not use this template to invent ABIs.

Do not use this template to approve ABIs from memory.

Do not use this template to approve ABIs from screenshots.

Do not use this template to approve ABIs from chat text.

Do not use this template to approve manually edited ABIs without receipt.

Do not use this template to approve stale ABIs from old commits.

Do not use this template to approve wrong-branch ABIs.

Do not use this template to approve wrong-profile ABIs.

Do not use this template to approve Base Sepolia ABIs as Base mainnet ABIs.

Do not use this template to store private keys.

Do not use this template to store seed phrases.

Do not use this template to store wallet recovery phrases.

Do not use this template to store deployer keys.

Do not use this template to store wallet secrets.

Do not use this template to store private RPC credentials.

## Completed record naming rule

Future completed ABI evidence records should use a deterministic file name.

Recommended naming format:

docs/audits/abi-evidence/V0_5_2_ABI_EVIDENCE_<NETWORK>_<CONTRACT_OR_MODULE>.md

Examples:

- V0_5_2_ABI_EVIDENCE_BASE_SEPOLIA_NSTSBT.md
- V0_5_2_ABI_EVIDENCE_BASE_SEPOLIA_CFT.md
- V0_5_2_ABI_EVIDENCE_BASE_MAINNET_NSTSBT.md
- V0_5_2_ABI_EVIDENCE_BASE_MAINNET_CFT.md
- V0_5_2_ABI_EVIDENCE_BASE_MAINNET_TREASURY_ROUTER.md

A completed production ABI evidence record must not be stored only in an untracked local file.

A completed production ABI evidence record must not be stored only in chat.

A completed production ABI evidence record must not be stored only in a screenshot.

## ABI evidence record header

Every completed ABI evidence record must include:

| Field | Required value |
| --- | --- |
| Record status | DRAFT, REVIEWED, APPROVED, REJECTED, BLOCKED, or SUPERSEDED |
| Phase | v0.5.2 mainnet readiness |
| Network | Local Anvil, Base Sepolia, Base mainnet, or explicit network |
| Chain ID | Explicit numeric chain ID |
| Contract or module | Explicit contract/module name |
| ABI category | Contract ABI, interface ABI, read-only ABI, write ABI, demo ABI, or helper ABI |
| ABI source type | Foundry artifact, explorer verified, release evidence, reviewed interface, or other approved source |
| Source contract path | Required where applicable |
| Source commit | Required |
| Build profile | Required where applicable |
| Artifact path | Required where applicable |
| ABI checksum | Required where applicable |
| Explorer verification URL | Required where applicable |
| Address evidence record | Required where ABI is paired to deployed address |
| Address checksum receipt | Required where ABI is paired to deployed address |
| Reviewer | Required |
| Review date UTC | Required |
| No-secret confirmation | Required |
| No-manual-edit confirmation | Required |
| No-screenshot-source confirmation | Required |
| No-chat-source confirmation | Required |

## ABI identity fields

Every completed ABI evidence record must identify:

- contract name;
- contract module;
- source contract path;
- interface path where applicable;
- artifact path;
- ABI source type;
- ABI category;
- compiler version;
- build profile;
- via-ir status;
- optimizer status;
- source commit;
- artifact commit;
- network scope;
- chain ID;
- address record if deployed;
- release evidence reference if released;
- explorer verification reference if deployed;
- approval status.

## Source and build fields

Every completed ABI evidence record must identify:

- repository branch;
- repository commit;
- clean-tree status at build;
- build command;
- build profile;
- foundry.toml commit;
- via-ir value;
- optimizer value;
- source contract path;
- artifact path;
- artifact timestamp where applicable;
- ABI extraction method;
- ABI checksum method;
- ABI checksum value;
- reviewer;
- review date.

## ABI source hierarchy section

A completed ABI evidence record must state which approved source hierarchy level applies.

| Source level | Applies? | Evidence |
| --- | --- | --- |
| Committed Foundry build artifact from approved build profile | TBD | TBD |
| Source-verified explorer ABI matching deployed contract | TBD | TBD |
| Release evidence bundle ABI artifact with checksum | TBD | TBD |
| Explicitly reviewed ABI export generated from approved build | TBD | TBD |
| Unapproved source | MUST BE NO | N/A |

No lower-quality source may override a higher-quality source.

## Foundry artifact ABI section

Use this section when the ABI comes from committed Foundry build artifacts.

| Field | Value |
| --- | --- |
| Contract name | TBD |
| Source contract path | TBD |
| Source commit | TBD |
| Foundry config commit | TBD |
| Build profile | TBD |
| via-ir value | TBD |
| Build command | TBD |
| Build receipt path | TBD |
| Artifact path | TBD |
| ABI extraction method | TBD |
| ABI checksum | TBD |
| Reviewer | TBD |
| Status | OPEN |

## Explorer ABI section

Use this section when the ABI is compared against or sourced from an explorer.

| Field | Value |
| --- | --- |
| Contract name | TBD |
| Network | TBD |
| Chain ID | TBD |
| Contract address | TBD |
| Address evidence record | TBD |
| Address checksum receipt | TBD |
| Explorer URL | TBD |
| Source verification status | TBD |
| Explorer ABI capture method | TBD |
| Explorer ABI checksum | TBD |
| Source match status | TBD |
| Reviewer | TBD |
| Status | OPEN |

## Release evidence ABI section

Use this section when the ABI is part of release evidence.

| Field | Value |
| --- | --- |
| Release label | TBD |
| Release commit | TBD |
| Release evidence path | TBD |
| Contract name | TBD |
| ABI artifact path | TBD |
| ABI checksum | TBD |
| Deployment receipt | TBD |
| Explorer verification receipt | TBD |
| Reviewer | TBD |
| Status | OPEN |

## Read-only ABI section

Use this section when the ABI is used only for read-only public or internal views.

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| Read-only methods included | TBD |
| Write methods excluded | TBD |
| Network | TBD |
| Chain ID | TBD |
| Address evidence record | TBD |
| ABI source record | TBD |
| Public interface allowed | TBD |
| Testnet-only status | TBD |
| Reviewer | TBD |
| Status | OPEN |

## Write-capable ABI section

Use this section when the ABI includes write methods.

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| Write methods included | TBD |
| Network | TBD |
| Chain ID | TBD |
| Address evidence record | TBD |
| Governance gate dependency | TBD |
| Transaction rail gate dependency | TBD |
| Config gate dependency | TBD |
| Final approval dependency | REQUIRED |
| Reviewer | TBD |
| Status | BLOCKED |

Write-capable ABI use must remain BLOCKED until governance, address, config, protocol client, transaction rail, verification, release evidence, and final approval gates are complete.

## Base Sepolia ABI section

Use this section when the ABI is for Base Sepolia only.

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| Network | Base Sepolia |
| Chain ID | 84532 |
| Testnet-only warning | REQUIRED |
| No-production-value warning | REQUIRED |
| No-mainnet-rights warning | REQUIRED |
| No-production-treasury warning | REQUIRED |
| No-investment-offer warning | REQUIRED |
| No-operational-reliance warning | REQUIRED |
| Address evidence record | TBD |
| ABI source evidence | TBD |
| Reviewer | TBD |
| Status | OPEN |

Base Sepolia ABI evidence must not be reused as Base mainnet production ABI evidence.

## Base mainnet ABI section

Use this section when the ABI is for Base mainnet.

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| Network | Base mainnet |
| Chain ID | 8453 |
| Deployment evidence | TBD |
| Explorer verification evidence | TBD |
| Release evidence | TBD |
| Address evidence record | TBD |
| ABI checksum receipt | TBD |
| Final approval reference | TBD |
| Reviewer | TBD |
| Status | BLOCKED |

Base mainnet ABI evidence must remain BLOCKED until real deployment and verification evidence exists.

## Protocol client dependency section

A completed ABI evidence record must state whether protocol clients may use the ABI.

| Field | Value |
| --- | --- |
| Read-only client allowed | TBD |
| Write client allowed | NO unless final gates complete |
| Protocol client gate reference | TBD |
| Address evidence dependency | TBD |
| Config dependency | TBD |
| Governance dependency | TBD |
| Reviewer | TBD |
| Status | OPEN |

Protocol clients must fail closed when ABI evidence is OPEN, BLOCKED, REJECTED, or SUPERSEDED.

## Transaction rail dependency section

A completed ABI evidence record must state whether transaction rail may use the ABI.

| Field | Value |
| --- | --- |
| Read-only use allowed | TBD |
| Write execution allowed | NO unless final gates complete |
| Transaction rail gate reference | TBD |
| Governance gate reference | TBD |
| Config gate reference | TBD |
| Final approval dependency | REQUIRED |
| Reviewer | TBD |
| Status | BLOCKED |

Transaction rail must not broadcast transactions using an ABI with incomplete evidence.

## Governance gates dependency section

A completed ABI evidence record must state whether governance gates may use the ABI.

| Field | Value |
| --- | --- |
| Role owner reads allowed | TBD |
| Pause state reads allowed | TBD |
| Treasury route reads allowed | TBD |
| Registry reads allowed | TBD |
| Admin reads allowed | TBD |
| Privileged writes allowed | NO unless final gates complete |
| Governance gate reference | TBD |
| Reviewer | TBD |
| Status | OPEN |

Governance gates must not treat ABI availability as governance approval.

## Config dependency section

A completed ABI evidence record must state whether config may reference the ABI.

| Field | Value |
| --- | --- |
| Config reference allowed | TBD |
| Environment | TBD |
| Network | TBD |
| Chain ID | TBD |
| Address map dependency | TBD |
| ABI source policy reference | TBD |
| Address source policy reference | TBD |
| Reviewer | TBD |
| Status | OPEN |

Config must not silently map a Base Sepolia ABI to Base mainnet.

## ABI drift review section

A completed ABI evidence record must include ABI drift review.

| Drift item | Result | Evidence |
| --- | --- | --- |
| Method mismatch | TBD | TBD |
| Event mismatch | TBD | TBD |
| Error mismatch | TBD | TBD |
| Constructor mismatch | TBD | TBD |
| Source commit mismatch | TBD | TBD |
| Build profile mismatch | TBD | TBD |
| via-ir mismatch | TBD | TBD |
| Network mismatch | TBD | TBD |
| Address mismatch | TBD | TBD |
| Explorer mismatch | TBD | TBD |
| Manual edit detected | TBD | TBD |

Any ABI drift blocks client use until resolved.

## Secret exclusion checklist

A completed ABI evidence record must confirm that it contains none of the following:

| Secret type | Present? | Status |
| --- | --- | --- |
| Private key | NO | REQUIRED |
| Seed phrase | NO | REQUIRED |
| Wallet recovery phrase | NO | REQUIRED |
| Deployer key | NO | REQUIRED |
| Wallet secret | NO | REQUIRED |
| Private RPC credential | NO | REQUIRED |
| Keystore password | NO | REQUIRED |
| Hardware wallet recovery information | NO | REQUIRED |
| Private signer material | NO | REQUIRED |
| Personal access token | NO | REQUIRED |
| Private API key | NO | REQUIRED |

## Required reviewer statements

A completed ABI evidence record must include:

- I confirm this ABI evidence record contains no private keys.
- I confirm this ABI evidence record contains no seed phrases.
- I confirm this ABI evidence record contains no wallet recovery phrases.
- I confirm this ABI evidence record contains no deployer keys.
- I confirm this ABI evidence record contains no wallet secrets.
- I confirm this ABI evidence record contains no private RPC credentials.
- I confirm the ABI source is recorded.
- I confirm the ABI source commit is recorded.
- I confirm the build profile is recorded where applicable.
- I confirm the artifact path is recorded where applicable.
- I confirm the ABI checksum is recorded where applicable.
- I confirm this ABI was not sourced from screenshots.
- I confirm this ABI was not sourced from chat text.
- I confirm this ABI was not manually edited without receipt.
- I confirm this record does not authorize deployment.
- I confirm this record does not authorize production write execution by itself.

## Record status definitions

| Status | Meaning |
| --- | --- |
| DRAFT | Record has been created but not reviewed |
| OPEN | Evidence is incomplete |
| REVIEWED | Evidence has been reviewed but not finally approved |
| APPROVED_FOR_READ_ONLY | ABI may be used for approved read-only scope only |
| APPROVED | ABI is approved for stated scope only |
| REJECTED | ABI failed review |
| BLOCKED | ABI cannot be used until blocker is resolved |
| SUPERSEDED | ABI record has been replaced by a newer record |

## Rejection rule

Reject an ABI evidence record if:

- ABI source is missing;
- ABI source commit is missing;
- artifact path is missing where required;
- build profile is missing where required;
- ABI checksum is missing where required;
- ABI is screenshot-derived;
- ABI is chat-derived;
- ABI is memory-derived;
- ABI is manually edited without receipt;
- ABI comes from wrong branch;
- ABI comes from wrong build profile;
- ABI comes from uncommitted source;
- ABI comes from wrong network;
- ABI is Base Sepolia and marked Base mainnet;
- ABI is Anvil and marked production;
- ABI drift is unresolved;
- source verification conflicts with artifact;
- address evidence is missing where deployed address is required;
- record contains secret material.

## No-go conditions

Do not use an ABI evidence record outside its stated network scope.

Do not use an ABI evidence record outside its stated chain ID.

Do not use an ABI evidence record outside its stated contract or module.

Do not use a Base Sepolia ABI evidence record as Base mainnet evidence.

Do not use Anvil ABI evidence as production evidence.

Do not use screenshot ABI evidence as production evidence.

Do not use chat text ABI evidence as production evidence.

Do not use memory-derived ABI evidence as production evidence.

Do not use manually edited ABI evidence without receipt.

Do not approve any ABI record containing secrets.

Do not approve any ABI record missing source commit.

Do not approve any ABI record with unresolved drift.

Do not use write-capable ABI paths until final gates are complete.

Do not imply this template authorizes deployment.

## Acceptance criteria

This template is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states the document is a template only;
- it defines ABI source hierarchy;
- it defines Foundry artifact ABI fields;
- it defines explorer ABI fields;
- it defines release evidence ABI fields;
- it defines read-only ABI fields;
- it defines write-capable ABI fields;
- it defines Base Sepolia ABI fields;
- it defines Base mainnet ABI fields;
- it defines protocol client dependency fields;
- it defines transaction rail dependency fields;
- it defines governance gates dependency fields;
- it defines config dependency fields;
- it defines ABI drift review fields;
- it defines rejection rules;
- it defines secret exclusion rules;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it includes no production ABI approval;
- it is committed and pushed to the v0.5.2 phase branch.
