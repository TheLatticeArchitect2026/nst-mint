# NST Core v0.5.2 ABI Checksum Receipt Template

Status: DRAFT TEMPLATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-06T07:58:49Z
Current commit at creation: 784c0e30770b04dbf29efd0e7d77a918cad30ea0

ABI source policy commit: 784c0e30770b04dbf29efd0e7d77a918cad30ea0

ABI evidence record template commit: f949e4b64f85cd63e24391fa072a2d2b72aa21f2

Address source policy commit: 784c0e30770b04dbf29efd0e7d77a918cad30ea0

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

ABI checksum confirmation is not ABI approval.

ABI checksum confirmation does not prove the ABI is correct for a deployed contract.

ABI checksum confirmation does not prove source verification.

ABI checksum confirmation does not prove address correctness.

ABI checksum confirmation does not prove governance approval.

ABI checksum confirmation does not prove treasury approval.

ABI checksum confirmation does not authorize write execution.

ABI checksum confirmation does not authorize deployment.

## Purpose

This template defines the controlled receipt format for checksum review of NST Lattice ABIs.

Every ABI used by config, protocol clients, governance gates, transaction rail, public interfaces, corporate interfaces, First Nations interfaces, admin consoles, Base Sepolia demo tools, deployment config, verification commands, or release evidence must have an ABI checksum receipt or stricter successor evidence before it can be treated as reviewed.

The purpose is to prevent stale, pasted, screenshot-derived, chat-derived, memory-derived, explorer-only, manually edited, wrong-branch, wrong-profile, wrong-network, or untracked ABI values from being treated as production-ready.

## Current blocker

ABI checksum receipts are not complete.

ABI evidence records are not complete.

Protocol client implementation remains blocked.

Transaction rail implementation remains blocked.

Config package implementation remains blocked.

Governance gates implementation remains blocked.

Public production interface launch remains blocked.

Mainnet deployment remains blocked.

## Template use rule

Use this template only to document ABI checksum review.

Do not use this template to approve the ABI.

Do not use this template to prove contract correctness.

Do not use this template to prove source verification.

Do not use this template to prove address correctness.

Do not use this template to prove governance authority.

Do not use this template to prove treasury authority.

Do not use this template to authorize deployment.

Do not use this template to authorize write execution.

Do not use this template to store private keys.

Do not use this template to store seed phrases.

Do not use this template to store wallet recovery phrases.

Do not use this template to store deployer keys.

Do not use this template to store wallet secrets.

Do not use this template to store private RPC credentials.

## Completed receipt naming rule

Future completed ABI checksum receipts should use a deterministic file name.

Recommended naming format:

docs/audits/abi-checksums/V0_5_2_ABI_CHECKSUM_<NETWORK>_<CONTRACT_OR_MODULE>.md

Examples:

- V0_5_2_ABI_CHECKSUM_BASE_SEPOLIA_NSTSBT.md
- V0_5_2_ABI_CHECKSUM_BASE_SEPOLIA_CFT.md
- V0_5_2_ABI_CHECKSUM_BASE_MAINNET_NSTSBT.md
- V0_5_2_ABI_CHECKSUM_BASE_MAINNET_CFT.md
- V0_5_2_ABI_CHECKSUM_BASE_MAINNET_TREASURY_ROUTER.md

A completed production ABI checksum receipt must not be stored only in an untracked local file.

A completed production ABI checksum receipt must not be stored only in chat.

A completed production ABI checksum receipt must not be stored only in a screenshot.

## Checksum receipt header

Every completed ABI checksum receipt must include:

| Field | Required value |
| --- | --- |
| Receipt status | DRAFT, REVIEWED, CHECKSUM_CONFIRMED, REJECTED, BLOCKED, or SUPERSEDED |
| Phase | v0.5.2 mainnet readiness |
| Network | Local Anvil, Base Sepolia, Base mainnet, or explicit network |
| Chain ID | Explicit numeric chain ID |
| Contract or module | Explicit contract or module |
| ABI category | Contract ABI, interface ABI, read-only ABI, write ABI, demo ABI, or helper ABI |
| ABI source type | Foundry artifact, explorer verified, release evidence, reviewed interface, or other approved source |
| ABI source file | Required |
| ABI evidence record | Required if used by packages |
| ABI checksum method | Required |
| ABI checksum value | Required |
| Reviewer | Required |
| Review date UTC | Required |
| No-secret confirmation | Required |
| No-manual-edit confirmation | Required |
| No-screenshot-source confirmation | Required |
| No-chat-source confirmation | Required |

## Required checksum fields

Every completed ABI checksum receipt must include:

- contract or module name;
- ABI category;
- network;
- chain ID;
- ABI source type;
- ABI source file path;
- source contract path where applicable;
- source commit;
- build profile where applicable;
- artifact path where applicable;
- explorer URL where applicable;
- ABI evidence record path;
- ABI evidence record commit;
- checksum method;
- checksum command or procedure;
- input file or input content source;
- checksum output value;
- reviewer;
- review date;
- checksum result;
- mismatch status;
- approval limitation;
- no-secret confirmation;
- no-manual-edit confirmation;
- no-screenshot-source confirmation;
- no-chat-source confirmation.

## Receipt body template

Use this structure for a completed ABI checksum receipt.

### ABI under review

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| ABI category | TBD |
| Intended use | TBD |
| Network | TBD |
| Chain ID | TBD |
| ABI source type | TBD |
| ABI source file | TBD |
| Source contract path | TBD |
| Source commit | TBD |
| Build profile | TBD |
| ABI evidence record | TBD |
| ABI evidence record commit | TBD |
| Reviewer | TBD |
| Review date UTC | TBD |
| Status | OPEN |

### Checksum method

| Field | Value |
| --- | --- |
| Tool or method | TBD |
| Command or procedure | TBD |
| Input file | TBD |
| Output checksum | TBD |
| Result | TBD |
| Mismatch observed | TBD |
| Notes | TBD |

### Scope limitation

| Field | Value |
| --- | --- |
| Checksum confirmed only | YES |
| ABI correctness confirmed | NO unless separately evidenced |
| Source verification confirmed | NO unless separately evidenced |
| Address correctness confirmed | NO unless separately evidenced |
| Governance approved | NO unless separately evidenced |
| Treasury approved | NO unless separately evidenced |
| Write execution authorized | NO unless final gates complete |
| Deployment authorized | NO |
| Production authorized | NO unless separately approved |
| Mainnet authorized | NO unless final approval package complete |

## Accepted checksum result states

| Result | Meaning |
| --- | --- |
| OPEN | Checksum review not complete |
| CHECKSUM_CONFIRMED | Checksum calculation passed |
| CHECKSUM_MISMATCH | Expected and observed checksum conflict |
| INVALID_ABI | Submitted ABI is malformed or cannot be parsed |
| REJECTED | ABI cannot be used |
| BLOCKED | ABI cannot be used until blocker is resolved |
| SUPERSEDED | Receipt replaced by newer receipt |

## Checksum confirmation statement

A completed ABI checksum receipt may state only:

- The ABI source has been checksum reviewed.
- The checksum method is recorded.
- The checksum output is recorded.
- The reviewer is recorded.
- The review date is recorded.
- The receipt does not authorize deployment.
- The receipt does not prove ABI correctness by itself.
- The receipt does not prove source verification by itself.
- The receipt does not prove address correctness by itself.
- The receipt does not prove governance approval.
- The receipt does not prove treasury approval.
- The receipt does not approve production use by itself.

## Foundry artifact ABI checksum section

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
| Artifact path | TBD |
| ABI extraction method | TBD |
| ABI checksum method | TBD |
| ABI checksum value | TBD |
| ABI evidence record | TBD |
| Reviewer | TBD |
| Status | OPEN |

## Explorer ABI checksum section

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
| Explorer ABI checksum method | TBD |
| Explorer ABI checksum value | TBD |
| ABI evidence record | TBD |
| Reviewer | TBD |
| Status | OPEN |

## Release evidence ABI checksum section

Use this section when the ABI is part of release evidence.

| Field | Value |
| --- | --- |
| Release label | TBD |
| Release commit | TBD |
| Release evidence path | TBD |
| Contract name | TBD |
| ABI artifact path | TBD |
| ABI checksum method | TBD |
| ABI checksum value | TBD |
| Deployment receipt | TBD |
| Explorer verification receipt | TBD |
| ABI evidence record | TBD |
| Reviewer | TBD |
| Status | OPEN |

## Read-only ABI checksum section

Use this section when the ABI is used only for read-only public or internal views.

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| Read-only methods included | TBD |
| Write methods excluded | TBD |
| Network | TBD |
| Chain ID | TBD |
| ABI source file | TBD |
| ABI checksum value | TBD |
| ABI evidence record | TBD |
| Public interface allowed | TBD |
| Testnet-only status | TBD |
| Reviewer | TBD |
| Status | OPEN |

## Write-capable ABI checksum section

Use this section when the ABI includes write methods.

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| Write methods included | TBD |
| Network | TBD |
| Chain ID | TBD |
| ABI source file | TBD |
| ABI checksum value | TBD |
| ABI evidence record | TBD |
| Governance gate dependency | TBD |
| Transaction rail gate dependency | TBD |
| Config gate dependency | TBD |
| Final approval dependency | REQUIRED |
| Reviewer | TBD |
| Status | BLOCKED |

Write-capable ABI use must remain BLOCKED until governance, address, config, protocol client, transaction rail, verification, release evidence, and final approval gates are complete.

## Base Sepolia ABI checksum section

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
| ABI source file | TBD |
| ABI checksum value | TBD |
| ABI evidence record | TBD |
| Reviewer | TBD |
| Status | OPEN |

Base Sepolia ABI checksum evidence must not be reused as Base mainnet production ABI checksum evidence.

## Base mainnet ABI checksum section

Use this section when the ABI is for Base mainnet.

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| Network | Base mainnet |
| Chain ID | 8453 |
| Deployment evidence | TBD |
| Explorer verification evidence | TBD |
| Release evidence | TBD |
| ABI source file | TBD |
| ABI checksum value | TBD |
| ABI evidence record | TBD |
| Final approval reference | TBD |
| Reviewer | TBD |
| Status | BLOCKED |

Base mainnet ABI checksum evidence must remain BLOCKED until real deployment and verification evidence exists.

## ABI parsing rule

Where possible, ABI checksum review should confirm:

- ABI JSON parses successfully;
- ABI JSON is an array where expected;
- ABI entries have valid type fields;
- function entries have names where required;
- event entries have names where required;
- error entries have names where required;
- constructor entries are handled explicitly;
- fallback and receive entries are handled explicitly;
- no duplicate critical entries are introduced by manual edit;
- no unsupported source mutation is detected.

Parsing success does not authorize deployment.

Parsing success does not authorize write execution.

Parsing success does not prove the ABI matches deployed bytecode.

## ABI canonicalization rule

If canonicalization is used, the receipt must document:

- canonicalization method;
- input file;
- output file or output digest;
- sorting rules if any;
- whitespace handling;
- JSON formatting rules;
- reviewer;
- limitations.

A canonical checksum must not be compared to a raw-file checksum unless the method is documented.

A raw-file checksum must not be compared to a canonical checksum unless the method is documented.

## ABI drift checksum rule

A completed ABI checksum receipt must identify checksum drift.

| Drift item | Result | Evidence |
| --- | --- | --- |
| Expected checksum mismatch | TBD | TBD |
| Raw checksum mismatch | TBD | TBD |
| Canonical checksum mismatch | TBD | TBD |
| Artifact path mismatch | TBD | TBD |
| Source commit mismatch | TBD | TBD |
| Build profile mismatch | TBD | TBD |
| via-ir mismatch | TBD | TBD |
| Explorer ABI mismatch | TBD | TBD |
| Release ABI mismatch | TBD | TBD |
| Manual edit detected | TBD | TBD |

Any checksum drift blocks client use until resolved.

## Protocol client dependency

Protocol clients must not use ABIs unless checksum receipts are complete where required.

Protocol clients must fail closed when ABI checksum status is OPEN, BLOCKED, REJECTED, or SUPERSEDED.

Protocol clients must not silently fall back to an ABI with a different checksum.

Protocol clients must not load unreviewed ABI JSON in production mode.

## Config dependency

Config must not reference ABI files unless checksum receipts are complete where required.

Config must not silently map a Base Sepolia ABI checksum to Base mainnet.

Config must not configure production ABI checksums from Anvil files.

Config must fail closed when ABI checksum evidence is incomplete.

## Transaction rail dependency

Transaction rail packages must not use write-capable ABIs unless checksum receipts and final gates are complete.

Transaction rail packages must not broadcast transactions using ABIs with incomplete checksum evidence.

Transaction rail packages must not treat checksum confirmation as approval to execute.

## Governance gates dependency

Governance gates may use ABI checksum receipts for read-only validation only when ABI evidence records are complete.

Governance gates must not treat ABI checksum confirmation as governance approval.

Governance gates must not enable privileged writes from ABI checksum confirmation alone.

## Secret exclusion checklist

A completed ABI checksum receipt must confirm that it contains none of the following:

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

A completed ABI checksum receipt must include:

- I confirm this ABI checksum receipt contains no private keys.
- I confirm this ABI checksum receipt contains no seed phrases.
- I confirm this ABI checksum receipt contains no wallet recovery phrases.
- I confirm this ABI checksum receipt contains no deployer keys.
- I confirm this ABI checksum receipt contains no wallet secrets.
- I confirm this ABI checksum receipt contains no private RPC credentials.
- I confirm the ABI source file is recorded.
- I confirm the checksum method is recorded.
- I confirm the checksum output is recorded.
- I confirm the ABI evidence record is recorded where required.
- I confirm this checksum receipt does not prove ABI correctness by itself.
- I confirm this checksum receipt does not prove source verification by itself.
- I confirm this checksum receipt does not authorize deployment.
- I confirm this checksum receipt does not authorize write execution.
- I confirm this checksum receipt does not authorize production use by itself.

## Rejection rule

Reject an ABI checksum receipt if:

- ABI source file is missing;
- checksum method is missing;
- checksum value is missing;
- source commit is missing where required;
- ABI evidence record is missing where required;
- checksum mismatch is unresolved;
- ABI cannot be parsed where parsing is required;
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
- record contains secret material.

## No-go conditions

Do not use an ABI checksum receipt outside its stated network scope.

Do not use an ABI checksum receipt outside its stated chain ID.

Do not use an ABI checksum receipt outside its stated contract or module.

Do not use a Base Sepolia ABI checksum receipt as Base mainnet evidence.

Do not use Anvil ABI checksum evidence as production evidence.

Do not use screenshot ABI checksum evidence as production evidence.

Do not use chat text ABI checksum evidence as production evidence.

Do not use memory-derived ABI checksum evidence as production evidence.

Do not use manually edited ABI checksum evidence without receipt.

Do not approve any ABI checksum receipt containing secrets.

Do not approve any ABI checksum receipt missing source commit where required.

Do not approve any ABI checksum receipt with unresolved drift.

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
- it states ABI checksum confirmation is not ABI approval;
- it states ABI checksum confirmation does not authorize deployment;
- it defines required ABI checksum fields;
- it defines Foundry artifact ABI checksum fields;
- it defines explorer ABI checksum fields;
- it defines release evidence ABI checksum fields;
- it defines read-only ABI checksum fields;
- it defines write-capable ABI checksum fields;
- it defines Base Sepolia ABI checksum fields;
- it defines Base mainnet ABI checksum fields;
- it defines ABI parsing rules;
- it defines ABI canonicalization rules;
- it defines ABI drift checksum rules;
- it defines protocol client dependency;
- it defines config dependency;
- it defines transaction rail dependency;
- it defines governance gates dependency;
- it defines rejection rules;
- it defines secret exclusion rules;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it includes no production ABI approval;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Base Sepolia ABI inventory receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md

Reference commit: 82fba6d0052aa7d42d4dc86049e98cc6e7b8b48b

Reference captured UTC: 2026-10-06T08:23:58Z

Reference target: ABI checksum receipt template

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

Reference target: ABI checksum receipt template

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
