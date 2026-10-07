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

## v0.5.2 ABI checksum receipt template reference

Reference document: docs/audits/V0_5_2_ABI_CHECKSUM_RECEIPT_TEMPLATE.md

Reference commit: 4722469d10f94d86423632ff6fb46edf37dda16f

Reference captured UTC: 2026-10-06T08:04:02Z

Reference target: ABI evidence record template

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

Reference target: ABI evidence record template

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

Reference target: ABI evidence record template

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

Reference target: ABI evidence record template

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

Reference target: ABI evidence record template

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

Reference target: ABI evidence record template

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

## v0.5.2 package test strategy reference

Reference document: docs/plans/V0_5_2_PACKAGE_TEST_STRATEGY.md

Reference commit: 650020e7418c707aa93bd471e0ef87857a76563d

Reference captured UTC: 2026-10-06T09:36:23Z

Reference target: ABI evidence record template

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the package test strategy exists as a controlled planning artifact.

No executable tests are approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Passing tests must not be treated as deployment authorization.

Passing tests must not be treated as mainnet approval.

Passing tests must not be treated as public demo approval.

Required follow-on work:

- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create package test source only after package gates authorize executable test implementation.
- Keep write paths blocked until explicit package and approval gates authorize them.

No-go conditions preserved:

- Do not implement package tests from this plan alone unless the next implementation gate authorizes test source creation.
- Do not implement executable app code from this plan alone.
- Do not implement executable package code from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not treat tests as deployment authorization.
- Do not treat passing tests as mainnet approval.
- Do not treat passing tests as public demo approval.
- Do not imply this reference authorizes deployment.

## v0.5.2 no-secret package scan rule reference

Reference document: docs/checklists/V0_5_2_NO_SECRET_PACKAGE_SCAN_RULE.md

Reference commit: 77c5de04cc86e509269024407e2d007b3fd7bd83

Reference captured UTC: 2026-10-07T09:44:39Z

Reference target: ABI evidence record template

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve executable no-secret scan tooling by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the no-secret package scan rule exists as a controlled planning artifact.

No executable no-secret scan tooling is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

A no-secret scan pass must not be treated as deployment authorization.

A no-secret scan pass must not be treated as mainnet approval.

A no-secret scan pass must not be treated as public demo approval.

Required follow-on work:

- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Create executable no-secret scan tooling only after implementation gates authorize source creation.
- Create no-secret scan receipt template.
- Create no-secret scan receipt process.
- Complete no-secret scan receipt before public Base Sepolia demo approval.
- Complete no-secret scan receipt before any mainnet candidate deployment package.
- Keep all private keys, seed phrases, recovery phrases, wallet secrets, signer material, deployer keys, private RPC credentials, API keys, and bearer tokens out of the repository.

No-go conditions preserved:

- Do not implement executable no-secret scan tooling from this rule alone unless a future implementation gate authorizes it.
- Do not implement executable app code from this rule alone.
- Do not implement executable package code from this rule alone.
- Do not launch a public Base Sepolia demo from this rule.
- Do not launch a production interface from this rule.
- Do not launch a mainnet interface from this rule.
- Do not treat a no-secret scan pass as deployment authorization.
- Do not treat a no-secret scan pass as public demo approval.
- Do not treat a no-secret scan pass as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.
