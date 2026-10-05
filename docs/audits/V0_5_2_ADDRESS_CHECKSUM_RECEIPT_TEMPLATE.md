# NST Core v0.5.2 Address Checksum Receipt Template

Status: DRAFT TEMPLATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-05T09:06:13Z
Current commit at creation: 7903ed94514de87e589d8eb64df2934a708a0437

Address source policy commit: 7903ed94514de87e589d8eb64df2934a708a0437

Address evidence record template commit: 8cf842065fad396728c1230eb0310c08c6b9158b

ABI source policy commit: 7903ed94514de87e589d8eb64df2934a708a0437

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not approve any production address.

This document does not approve any production governance object.

This document does not approve any production treasury route.

This document does not approve any production operator.

This document does not approve any production role owner.

This document does not authorize production configuration.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize any public mainnet mint interface.

This document is a template only.

A checksum-valid address is not automatically approved.

A checksum-valid address does not prove ownership.

A checksum-valid address does not prove governance authority.

A checksum-valid address does not prove treasury authority.

A checksum-valid address does not prove deployment authorization.

## Purpose

This template defines the controlled receipt format for checksum review of NST Lattice addresses.

Every address used by config, protocol clients, governance gates, transaction rail, public interfaces, corporate interfaces, First Nations interfaces, admin consoles, deployment config, verification commands, release evidence, or approval records must have a checksum receipt or stricter successor evidence before it can be treated as reviewed.

The purpose is to prevent lowercase, mixed-case, mistyped, truncated, screenshot-derived, chat-derived, memory-derived, mock, Anvil, Base Sepolia, placeholder, or unapproved addresses from being treated as production-ready.

## Current blocker

Production address checksum receipts are not complete.

Production owner addresses remain TBD.

Production governance objects remain TBD.

Production treasury destinations remain TBD.

Production operator assignments remain TBD.

Production role owners remain TBD.

Final deployment configuration remains incomplete.

Final read-only verification receipts remain incomplete.

Final release evidence remains incomplete.

Final human approval remains incomplete.

Mainnet deployment remains blocked.

## Template use rule

Use this template only to document checksum review.

Do not use this template to approve the address.

Do not use this template to prove ownership.

Do not use this template to prove treasury authority.

Do not use this template to prove governance authority.

Do not use this template to prove legal approval.

Do not use this template to authorize deployment.

Do not use this template to store private keys.

Do not use this template to store seed phrases.

Do not use this template to store wallet recovery phrases.

Do not use this template to store deployer keys.

Do not use this template to store wallet secrets.

Do not use this template to store private RPC credentials.

## Completed receipt naming rule

Future completed checksum receipts should use a deterministic file name.

Recommended naming format:

docs/audits/address-checksums/V0_5_2_ADDRESS_CHECKSUM_<NETWORK>_<CATEGORY>_<SHORT_LABEL>.md

Examples:

- V0_5_2_ADDRESS_CHECKSUM_BASE_SEPOLIA_NSTSBT_CONTRACT.md
- V0_5_2_ADDRESS_CHECKSUM_BASE_SEPOLIA_CFT_CONTRACT.md
- V0_5_2_ADDRESS_CHECKSUM_BASE_MAINNET_GOVERNANCE_MULTISIG.md
- V0_5_2_ADDRESS_CHECKSUM_BASE_MAINNET_TREASURY_MULTISIG.md
- V0_5_2_ADDRESS_CHECKSUM_BASE_MAINNET_FOUNDER_PAYOUT_WALLET.md

A completed production checksum receipt must not be stored only in an untracked local file.

A completed production checksum receipt must not be stored only in chat.

A completed production checksum receipt must not be stored only in a screenshot.

## Checksum receipt header

Every completed checksum receipt must include:

| Field | Required value |
| --- | --- |
| Receipt status | DRAFT, REVIEWED, APPROVED FOR CHECKSUM ONLY, REJECTED, or SUPERSEDED |
| Phase | v0.5.2 mainnet readiness |
| Network | Local Anvil, Base Sepolia, Base mainnet, or explicit network |
| Chain ID | Explicit numeric chain ID |
| Address category | Contract, governance, treasury, operator, role owner, registry, vault, yield, reward, interface, or other category |
| Address label | Human-readable label |
| Raw submitted address | Public address only |
| Checksum-normalized address | Public checksum address only |
| Checksum method | Tool or command used |
| Checksum reviewer | Human reviewer or authorized role |
| Review date UTC | Review date |
| Address evidence record | Required if used beyond preliminary review |
| Address source policy reference | Required |
| No-secret confirmation | Required |
| Status | OPEN, REVIEWED, CHECKSUM_CONFIRMED, REJECTED, BLOCKED, or SUPERSEDED |

## Required checksum fields

Every completed checksum receipt must include:

- raw submitted address;
- checksum-normalized address;
- network name;
- chain ID;
- address category;
- intended use;
- source document path;
- source document commit;
- address evidence record path;
- address evidence record commit;
- checksum review method;
- checksum review tool;
- checksum review command where applicable;
- reviewer;
- review date;
- checksum result;
- mismatch status;
- approval limitation;
- no-secret confirmation;
- no-screenshot-source confirmation;
- no-chat-source confirmation;
- no-placeholder confirmation.

## Receipt body template

Use this structure for a completed receipt.

### Address under review

| Field | Value |
| --- | --- |
| Address label | TBD |
| Address category | TBD |
| Intended use | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Source document | TBD |
| Source commit | TBD |
| Address evidence record | TBD |
| Address evidence record commit | TBD |
| Reviewer | TBD |
| Review date UTC | TBD |
| Status | OPEN |

### Checksum method

| Field | Value |
| --- | --- |
| Tool or method | TBD |
| Command or procedure | TBD |
| Input address | TBD |
| Output checksum address | TBD |
| Result | TBD |
| Mismatch observed | TBD |
| Notes | TBD |

### Scope limitation

| Field | Value |
| --- | --- |
| Checksum confirmed only | YES |
| Ownership confirmed | NO unless separately evidenced |
| Governance approved | NO unless separately evidenced |
| Treasury approved | NO unless separately evidenced |
| Legal approved | NO unless separately evidenced |
| Deployment authorized | NO |
| Production authorized | NO unless separately approved |
| Mainnet authorized | NO unless final approval package complete |

## Accepted checksum result states

| Result | Meaning |
| --- | --- |
| OPEN | Checksum review not complete |
| CHECKSUM_CONFIRMED | Checksum normalization passed |
| CHECKSUM_MISMATCH | Raw address and checksum output conflict |
| INVALID_ADDRESS | Submitted value is not a valid address |
| REJECTED | Address cannot be used |
| SUPERSEDED | Receipt replaced by newer receipt |

## Checksum confirmation statement

A completed checksum receipt may state only:

- The submitted public address has been checksum reviewed.
- The checksum-normalized public address is recorded.
- The checksum review method is recorded.
- The reviewer is recorded.
- The review date is recorded.
- The receipt does not authorize deployment.
- The receipt does not prove ownership.
- The receipt does not prove governance approval.
- The receipt does not prove treasury approval.
- The receipt does not approve production use by itself.

## Contract address checksum section

Use this section when the address is a deployed contract.

| Field | Value |
| --- | --- |
| Contract name | TBD |
| Contract module | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Deployment receipt path | TBD |
| Explorer URL | TBD |
| Source verification status | TBD |
| ABI evidence record | TBD |
| Address evidence record | TBD |
| Checksum result | OPEN |

## Governance object checksum section

Use this section when the address is a governance object, multisig, council wallet, or authority object.

| Field | Value |
| --- | --- |
| Governance object label | TBD |
| Governance object type | TBD |
| Authority scope | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Approval evidence | TBD |
| Address evidence record | TBD |
| Checksum result | OPEN |

## Treasury address checksum section

Use this section when the address affects funds, fees, payout, yield, rescue, treasury routing, or deployment funding.

| Field | Value |
| --- | --- |
| Treasury address label | TBD |
| Treasury purpose | TBD |
| Treasury route affected | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Treasury approval evidence | TBD |
| Address evidence record | TBD |
| Checksum result | OPEN |

## Operator address checksum section

Use this section when the address has operational powers.

| Field | Value |
| --- | --- |
| Operator label | TBD |
| Operator role | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Approval evidence | TBD |
| Address evidence record | TBD |
| Checksum result | OPEN |

## Role owner checksum section

Use this section when the address owns or controls a contract role.

| Field | Value |
| --- | --- |
| Contract or module | TBD |
| Role name | TBD |
| Role identifier | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Role matrix reference | TBD |
| Address evidence record | TBD |
| Checksum result | OPEN |

## First Nations address checksum section

Use this section when the address relates to First Nations governance, revenue, representation, consent, custody, key-holder design, or public interface language.

| Field | Value |
| --- | --- |
| First Nations address label | TBD |
| Address purpose | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Treaty-law review required | YES |
| Treaty-law review evidence | TBD |
| Address evidence record | TBD |
| Checksum result | OPEN |

Checksum confirmation does not replace Treaty-law review.

Checksum confirmation does not approve First Nations governance participation.

Checksum confirmation does not approve First Nations revenue routing.

## Corporate address checksum section

Use this section when the address relates to corporate participation, enterprise integration, or partner interface.

| Field | Value |
| --- | --- |
| Corporate address label | TBD |
| Address purpose | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Corporate use-case | TBD |
| Address evidence record | TBD |
| Checksum result | OPEN |

## Public interface address checksum section

Use this section when the address will appear in public, corporate, First Nations, Base Sepolia demo, or admin interfaces.

| Field | Value |
| --- | --- |
| Interface label | TBD |
| Interface type | TBD |
| Address purpose | TBD |
| Network | TBD |
| Chain ID | TBD |
| Raw submitted address | TBD |
| Checksum-normalized address | TBD |
| Public display allowed | TBD |
| Warning language required | TBD |
| Address evidence record | TBD |
| Checksum result | OPEN |

## Base Sepolia checksum rule

A Base Sepolia checksum receipt must state:

- Base Sepolia only;
- testnet-only;
- no production value;
- no mainnet rights;
- no production treasury;
- no investment offer;
- no operational reliance;
- no First Nations production approval;
- no corporate production approval.

A Base Sepolia checksum receipt must not be reused as a Base mainnet production checksum receipt.

## Base mainnet checksum rule

A Base mainnet checksum receipt must remain OPEN or BLOCKED until:

- source-of-truth response exists;
- source-of-truth response review is complete;
- address evidence record exists;
- approval receipt exists where required;
- owner category is approved;
- role or route mapping is approved;
- deployment config review is complete;
- read-only verification command exists;
- release evidence exists;
- final human approval exists where required.

## Rejection rule

Reject a checksum receipt if:

- raw address is missing;
- checksum-normalized address is missing;
- address is malformed;
- address checksum does not match;
- network is missing;
- chain ID is missing;
- source document is missing;
- address evidence record is missing when required;
- reviewer is missing;
- status is inaccurate;
- address is a placeholder and marked confirmed;
- address is local and marked production;
- address is mock and marked production;
- address is Anvil and marked production;
- address is Base Sepolia and marked Base mainnet;
- address comes from screenshot only;
- address comes from chat text only;
- address comes from memory;
- address contains secret material.

## Secret exclusion checklist

A completed checksum receipt must confirm that it contains none of the following:

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

A completed receipt must include the following reviewer statements:

- I confirm this checksum receipt contains no private keys.
- I confirm this checksum receipt contains no seed phrases.
- I confirm this checksum receipt contains no wallet recovery phrases.
- I confirm this checksum receipt contains no deployer keys.
- I confirm this checksum receipt contains no wallet secrets.
- I confirm this checksum receipt contains no private RPC credentials.
- I confirm the submitted value is a public address.
- I confirm the checksum-normalized address is recorded.
- I confirm the checksum review method is recorded.
- I confirm this receipt does not prove ownership.
- I confirm this receipt does not prove governance approval.
- I confirm this receipt does not prove treasury approval.
- I confirm this receipt does not authorize deployment.
- I confirm this receipt does not authorize production use by itself.

## No-go conditions

Do not use a checksum receipt outside its stated network scope.

Do not use a checksum receipt outside its stated chain ID.

Do not use a checksum receipt outside its stated category.

Do not use a checksum receipt as ownership proof.

Do not use a checksum receipt as governance approval.

Do not use a checksum receipt as treasury approval.

Do not use a checksum receipt as legal approval.

Do not use a checksum receipt as deployment authorization.

Do not use Base Sepolia checksum evidence as Base mainnet evidence.

Do not use Anvil checksum evidence as production evidence.

Do not use mock checksum evidence as production evidence.

Do not use screenshot checksum evidence as production evidence.

Do not use chat text checksum evidence as production evidence.

Do not use memory-derived checksum evidence as production evidence.

Do not approve any receipt containing secrets.

Do not approve any receipt missing reviewer identity.

Do not approve any receipt missing source evidence.

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
- it states checksum confirmation is not address approval;
- it states checksum confirmation is not ownership proof;
- it defines required checksum fields;
- it defines contract address checksum fields;
- it defines governance object checksum fields;
- it defines treasury address checksum fields;
- it defines operator address checksum fields;
- it defines role owner checksum fields;
- it defines First Nations address checksum fields;
- it defines corporate address checksum fields;
- it defines public interface checksum fields;
- it defines Base Sepolia limits;
- it defines Base mainnet limits;
- it defines rejection rules;
- it defines secret exclusion rules;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it includes no production address approval;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 ABI evidence record template reference

Reference document: docs/audits/V0_5_2_ABI_EVIDENCE_RECORD_TEMPLATE.md

Reference commit: f949e4b64f85cd63e24391fa072a2d2b72aa21f2

Reference captured UTC: 2026-10-05T09:29:17Z

Reference target: address checksum receipt template

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
