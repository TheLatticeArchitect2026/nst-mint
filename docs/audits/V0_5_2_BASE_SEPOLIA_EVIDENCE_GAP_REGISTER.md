# NST Core v0.5.2 Base Sepolia Evidence Gap Register

Status: OPEN GAP REGISTER
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T15:01:22Z
Current commit at creation: 2915da77cffccc6588d7ae6308eaaa8f1fa1e302

Base Sepolia evidence candidate scan receipt commit: b2e023cb1fd4fca84da3dbabe675983787c243ae

Base Sepolia address evidence request packet commit: 2915da77cffccc6588d7ae6308eaaa8f1fa1e302

Base Sepolia address evidence response review checklist commit: 2915da77cffccc6588d7ae6308eaaa8f1fa1e302

Base Sepolia ABI evidence request packet commit: 2915da77cffccc6588d7ae6308eaaa8f1fa1e302

Base Sepolia ABI evidence response review checklist commit: 2915da77cffccc6588d7ae6308eaaa8f1fa1e302

Base Sepolia read-only config plan commit: 2915da77cffccc6588d7ae6308eaaa8f1fa1e302

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize public Base Sepolia demo launch.

This document does not approve executable config package source.

This document does not approve generated config.

This document does not approve executable protocol client source.

This document does not approve executable app source.

This document does not approve executable package source.

This document does not approve executable infra source.

This document does not approve any production address.

This document does not approve any Base Sepolia address.

This document does not approve any production ABI.

This document does not approve any Base Sepolia ABI.

This document does not approve any Base Sepolia read method.

This document does not approve any Base Sepolia write method.

This document does not approve transaction rail execution.

This document does not approve governance writes.

This document does not approve treasury routes.

This document does not authorize any public mainnet mint interface.

This document records evidence gaps only.

## Purpose

This gap register records the remaining evidence, checksum, verification, config, protocol-client, and approval gaps before any Base Sepolia candidate can be accepted into the NST Core v0.5.2 institutional readiness path.

The evidence candidate scan has been completed.

Scan hits are not evidence.

Candidate addresses are not approved addresses.

Candidate ABIs are not approved ABIs.

Candidate files are not approved source-of-truth.

This register exists to prevent accidental promotion of scan results into config, clients, interfaces, public demos, or mainnet assumptions.

## Current status

Base Sepolia evidence is not complete.

Base Sepolia address evidence is not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia ABI evidence is not complete.

Base Sepolia ABI checksum receipts are not complete.

Base Sepolia explorer/source verification receipts are not complete.

Base Sepolia method classification is not complete.

Base Sepolia read allowlists are not complete.

Base Sepolia write blocklists are not complete.

Base Sepolia generated read-only config is not approved.

Base Sepolia protocol-client implementation is not approved.

Base Sepolia public demo approval is not complete.

Mainnet deployment remains blocked.

## Gap status values

Allowed statuses:

| Status | Meaning |
| --- | --- |
| OPEN | Gap remains unresolved |
| BLOCKED | Gap cannot proceed until prerequisite is complete |
| READY_FOR_DRAFTING | Enough public evidence exists to draft artifact |
| READY_FOR_REVIEW | Draft artifact exists and needs review |
| SATISFIED | Gap has a committed, reviewed artifact |
| REJECTED | Evidence cannot be accepted |
| SUPERSEDED | Replaced by newer artifact |
| NOT_APPLICABLE | Gap does not apply to the label or scope |
| NOT_DEPLOYED | Contract label not deployed in requested scope |

Unknown statuses are not allowed.

Only SATISFIED closes a gap.

READY_FOR_DRAFTING does not close a gap.

READY_FOR_REVIEW does not close a gap.

## Global Base Sepolia evidence gaps

| Gap | Status | Required closure artifact |
| --- | --- | --- |
| Address evidence response reviewed | OPEN | Completed address response review |
| ABI evidence response reviewed | OPEN | Completed ABI response review |
| Address evidence records | OPEN | Address evidence records per contract label |
| Address checksum receipts | OPEN | Address checksum receipts per accepted address |
| ABI evidence records | OPEN | ABI evidence records per contract label |
| ABI checksum receipts | OPEN | ABI checksum receipts per accepted ABI |
| Explorer/source verification receipts | OPEN | Explorer/source verification receipts where available |
| Method classification | OPEN | ABI method classification records or reviewed sections |
| Read allowlist | OPEN | Approved read-only allowlist |
| Write blocklist | OPEN | Confirmed write-method blocklist |
| Generated Base Sepolia read-only config | BLOCKED | Generated config approval path |
| Protocol client input approval | BLOCKED | Protocol client package gate and config evidence |
| Public demo approval | BLOCKED | Completed public demo approval receipt |
| Mainnet approval | BLOCKED | Separate production evidence and final human approval |

## Address evidence gaps by label

| Label | Address evidence | Checksum receipt | Explorer/source verification | Status |
| --- | --- | --- | --- | --- |
| NSTSBT | OPEN | OPEN | OPEN | BLOCKED |
| CFT | OPEN | OPEN | OPEN | BLOCKED |
| TreasuryRouter | OPEN | OPEN | OPEN | BLOCKED |
| ShieldRegistry | OPEN | OPEN | OPEN | BLOCKED |
| VaultRegistry | OPEN | OPEN | OPEN | BLOCKED |
| YieldPool | OPEN | OPEN | OPEN | BLOCKED |
| RewardEscrow | OPEN | OPEN | OPEN | BLOCKED |
| ClaimOrCredentialModule | OPEN | OPEN | OPEN | BLOCKED |
| PublicDemoInterfaceConfig | OPEN | OPEN | OPEN | BLOCKED |

No address in this table is approved.

No address in this table may be guessed.

No address in this table may be filled from screenshot-only evidence.

No address in this table may be filled from chat-only evidence.

No address in this table may be filled from memory-only evidence.

No address in this table may be filled from local Anvil output.

No address in this table may be filled from Base mainnet.

## ABI evidence gaps by label

| Label | ABI evidence | ABI checksum receipt | Method classification | Status |
| --- | --- | --- | --- | --- |
| NSTSBT | OPEN | OPEN | OPEN | BLOCKED |
| CFT | OPEN | OPEN | OPEN | BLOCKED |
| TreasuryRouter | OPEN | OPEN | OPEN | BLOCKED |
| ShieldRegistry | OPEN | OPEN | OPEN | BLOCKED |
| VaultRegistry | OPEN | OPEN | OPEN | BLOCKED |
| YieldPool | OPEN | OPEN | OPEN | BLOCKED |
| RewardEscrow | OPEN | OPEN | OPEN | BLOCKED |
| ClaimOrCredentialModule | OPEN | OPEN | OPEN | BLOCKED |
| PublicDemoInterfaceConfig | OPEN | OPEN | OPEN | BLOCKED |

No ABI in this table is approved.

No ABI in this table may be guessed.

No ABI in this table may be filled from screenshot-only evidence.

No ABI in this table may be filled from chat-only evidence.

No ABI in this table may be filled from memory-only evidence.

No ABI in this table may be manually edited without receipt.

No ABI in this table may be used to approve write methods.

## Scan result interpretation gap

The candidate scan receipt confirms:

- a read-only scan was performed;
- no files were changed by the scan;
- raw candidate addresses were intentionally not listed in the receipt;
- candidate addresses discovered by grep are not evidence;
- candidate ABIs discovered by grep are not evidence;
- candidate files discovered by grep are not evidence;
- further response review is required.

Required closure:

- Address candidate must pass address evidence response review.
- ABI candidate must pass ABI evidence response review.
- Only then may evidence records and checksum receipts be drafted.

Status: OPEN

## Address response gap

Before any address evidence record can be drafted, the project needs a public Base Sepolia address evidence response that satisfies the response review checklist.

Required conditions:

- network is Base Sepolia;
- chain ID is 84532;
- contract label is identified;
- public deployed address is identified;
- address source is public;
- explorer URL is provided where available;
- deployment transaction is provided where available;
- deployment commit is provided where available;
- reviewer is identified;
- response date UTC is identified;
- no secrets are included;
- final response status is explicit.

Status: OPEN

## ABI response gap

Before any ABI evidence record can be drafted, the project needs a public Base Sepolia ABI evidence response that satisfies the ABI response review checklist.

Required conditions:

- network is Base Sepolia;
- chain ID is 84532;
- contract label is identified;
- ABI source is public or committed;
- ABI path or source URL is identified;
- ABI source type is identified;
- related address label is identified;
- related public deployed address is identified where available;
- explorer/source verification URL is supplied where available;
- method classification is supplied;
- write methods are identified as blocked;
- reviewer is identified;
- response date UTC is identified;
- no secrets are included;
- final response status is explicit.

Status: OPEN

## Address evidence record gap

Address evidence records remain blocked until the address response review permits drafting.

Each address evidence record must identify:

- contract label;
- network;
- chain ID;
- public address;
- address source;
- deployment source;
- deployment transaction where available;
- deployment block where available;
- explorer link where available;
- source verification status where available;
- related commit where available;
- review date;
- reviewer;
- no-secret confirmation;
- status.

Status: BLOCKED

## Address checksum receipt gap

Address checksum receipts remain blocked until address evidence records are draftable.

Each checksum receipt must identify:

- raw submitted address;
- checksum-normalized address;
- checksum method;
- checksum reviewer;
- checksum review date;
- source document;
- source commit;
- mismatch status;
- network;
- chain ID;
- no-secret confirmation;
- status.

Status: BLOCKED

## ABI evidence record gap

ABI evidence records remain blocked until ABI response review permits drafting.

Each ABI evidence record must identify:

- contract label;
- network;
- chain ID;
- ABI source;
- ABI source type;
- related public address;
- related address evidence record where available;
- explorer link where available;
- source verification status where available;
- verified contract name where available;
- compiler/source metadata where available;
- ABI checksum;
- ABI checksum receipt;
- method classification summary;
- review date;
- reviewer;
- no-secret confirmation;
- status.

Status: BLOCKED

## ABI checksum receipt gap

ABI checksum receipts remain blocked until ABI evidence records are draftable.

Each ABI checksum receipt must identify:

- raw ABI source;
- normalized ABI representation where applicable;
- checksum method;
- checksum value;
- checksum reviewer;
- checksum review date;
- source document;
- source commit;
- mismatch status;
- network;
- chain ID;
- contract label;
- no-secret confirmation;
- status.

Status: BLOCKED

## Explorer/source verification gap

Explorer/source verification remains open until each applicable Base Sepolia contract has reviewable public verification evidence.

Each explorer/source verification receipt should identify:

- explorer URL;
- contract address;
- contract label;
- verified contract name;
- verification status;
- compiler version where available;
- optimizer settings where available;
- constructor args status where available;
- ABI availability status;
- source match status;
- bytecode match status where available;
- reviewer;
- review date;
- status.

Status: OPEN

## Method classification gap

Method classification remains open until each ABI intended for protocol-client use has been reviewed.

Required method defaults:

| ABI item | Required default |
| --- | --- |
| view function | Block unless allowlisted |
| pure function | Block unless allowlisted |
| nonpayable function | Block |
| payable function | Block |
| constructor | Block |
| fallback | Block |
| receive | Block |
| event | Query only if explicitly allowed |
| error | Decode only if safe |

Status: OPEN

## Read allowlist gap

Read allowlists remain open.

Candidate read methods may include:

- contract name;
- symbol;
- decimals where applicable;
- totalSupply where safe;
- tokenURI where safe;
- ownerOf where safe;
- balanceOf where safe;
- locked status where safe;
- paused state where safe;
- role membership where safe;
- role admin where safe;
- registry state where safe;
- treasury route view where safe;
- public constants where safe.

Candidate read methods are not approved until reviewed.

Status: OPEN

## Write blocklist gap

Write blocklists remain open until explicitly confirmed against each ABI.

Blocked categories include:

- mint;
- transfer;
- approve;
- setApprovalForAll;
- pause;
- unpause;
- grantRole;
- revokeRole;
- set metadata;
- freeze metadata;
- set registry;
- set treasury;
- set router;
- propose config;
- apply config;
- process pending yield;
- sweep;
- rescue;
- any payable method;
- any nonpayable state-changing method;
- transaction broadcast;
- governance writes;
- treasury writes.

ABI presence does not approve write behavior.

Status: OPEN

## Generated config gap

Generated Base Sepolia read-only config remains blocked until:

- address evidence records are complete;
- address checksum receipts are complete;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- explorer/source verification receipts are complete where applicable;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- config package gate allows generation;
- protocol client package gate allows use;
- no-secret scan receipt process exists;
- package tests are satisfied.

Status: BLOCKED

## Protocol client gap

Protocol-client implementation remains blocked until:

- config package evidence is complete;
- Base Sepolia read-only config is approved;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

Status: BLOCKED

## Public demo gap

Public Base Sepolia demo remains blocked until:

- public warning language is implemented;
- network badge is visible;
- address evidence is complete;
- ABI evidence is complete;
- checksum receipts are complete;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

Status: BLOCKED

## Mainnet gap

Mainnet remains blocked.

No Base Sepolia address may be used as a Base mainnet address.

No Base Sepolia ABI may be used as final Base mainnet ABI evidence without separate review.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

Status: BLOCKED

## First Nations gap

First Nations production scope remains blocked.

This gap register does not approve First Nations production language.

This gap register does not activate First Nations governance.

This gap register does not activate First Nations revenue routing.

This gap register does not appoint any First Nations key holder.

This gap register does not imply First Nations consent.

First Nations production scope remains subject to specialized Treaty-law review.

Status: BLOCKED

## Corporate gap

Corporate production use remains blocked.

This gap register does not approve corporate production integration.

This gap register does not create enterprise commitments.

This gap register does not authorize operational reliance.

This gap register does not imply investment solicitation.

Status: BLOCKED

## Treasury gap

Treasury production use remains blocked.

This gap register does not approve production treasury routes.

This gap register does not approve real funds.

This gap register does not approve yield.

This gap register does not approve payout.

This gap register does not approve reward distribution.

This gap register does not authorize sweeping or rescue actions.

Status: BLOCKED

## Governance gap

Governance write behavior remains blocked.

This gap register does not activate governance.

This gap register does not approve roles.

This gap register does not approve multisig signers.

This gap register does not approve admin actions.

This gap register does not approve role grants.

This gap register does not approve role revocations.

Status: BLOCKED

## Transaction rail gap

Transaction rail remains blocked.

This gap register does not authorize transaction rail execution.

This gap register does not authorize transaction broadcast.

This gap register does not authorize write clients.

This gap register does not authorize wallet signing.

This gap register does not authorize signer handling.

Status: BLOCKED

## No-secret confirmation

This register does not request private keys.

This register does not request seed phrases.

This register does not request wallet recovery phrases.

This register does not request deployer keys.

This register does not request signer keys.

This register does not request wallet secrets.

This register does not request private RPC credentials.

This register does not request private API keys.

This register does not request bearer tokens.

This register does not request private custody material.

## No-go conditions

Do not treat scan hits as evidence.

Do not treat scan hits as approved addresses.

Do not treat scan hits as approved ABIs.

Do not use raw candidate addresses in generated config.

Do not use raw candidate ABIs in generated config.

Do not use raw scan hits in protocol clients.

Do not use this register as deployment authorization.

Do not use this register as public demo approval.

Do not use this register as mainnet approval.

Do not use this register as production address approval.

Do not use this register as production ABI approval.

Do not use this register as treasury approval.

Do not use this register as governance approval.

Do not accept guessed addresses.

Do not accept placeholder addresses.

Do not accept screenshot-only evidence.

Do not accept chat-only evidence.

Do not accept memory-only evidence.

Do not use local Anvil addresses.

Do not use Base mainnet addresses.

Do not accept guessed ABIs.

Do not accept placeholder ABIs.

Do not accept screenshot-only ABI evidence.

Do not accept chat-only ABI evidence.

Do not accept manually edited ABIs without receipt.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not request signer keys.

Do not request wallet secrets.

Do not request private RPC credentials.

## Secret exclusion checklist

This register must contain none of the following usable secret material:

| Secret type | Present? | Status |
| --- | --- | --- |
| Private key value | NO | REQUIRED |
| Seed phrase value | NO | REQUIRED |
| Wallet recovery phrase value | NO | REQUIRED |
| Deployer key value | NO | REQUIRED |
| Signer key value | NO | REQUIRED |
| Wallet secret value | NO | REQUIRED |
| Private RPC credential value | NO | REQUIRED |
| Keystore password value | NO | REQUIRED |
| Hardware wallet recovery value | NO | REQUIRED |
| Private signer material value | NO | REQUIRED |
| Personal access token value | NO | REQUIRED |
| Private API key value | NO | REQUIRED |
| Bearer token value | NO | REQUIRED |

## Acceptance criteria

This gap register is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states scan hits are not evidence;
- it states scan hits are not approved addresses;
- it states scan hits are not approved ABIs;
- it states this register does not authorize deployment;
- it states this register does not authorize public demo launch;
- it states this register does not authorize mainnet approval;
- it states this register does not authorize generated config;
- it states this register does not authorize protocol clients;
- it identifies address evidence gaps;
- it identifies ABI evidence gaps;
- it identifies checksum gaps;
- it identifies explorer/source verification gaps;
- it identifies method classification gaps;
- it identifies generated config gaps;
- it identifies protocol client gaps;
- it identifies public demo gaps;
- it identifies mainnet gaps;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Base Sepolia source-of-truth locator receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_SOURCE_OF_TRUTH_LOCATOR_RECEIPT.md

Reference commit: ab8e27ddcb82c3c3540c27a690ef6b2ff5cb3f65

Reference captured UTC: 2026-10-11T15:30:04Z

Reference target: Base Sepolia evidence gap register

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that a read-only Base Sepolia source-of-truth locator receipt exists.

No source-of-truth locator hit is approved by this reference alone.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No candidate source file is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia source-of-truth locator receipt existence must not be treated as deployment authorization.

Base Sepolia source-of-truth locator receipt existence must not be treated as public demo approval.

Base Sepolia source-of-truth locator receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Do not treat source-of-truth locator hits as evidence.
- Review any future Base Sepolia address evidence response against the address evidence response review checklist.
- Review any future Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, Base mainnet, or manually edited evidence without receipt.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Complete source-of-truth review before generated config.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat source-of-truth locator hits as evidence.
- Do not treat source-of-truth locator hits as approved addresses.
- Do not treat source-of-truth locator hits as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw locator hits in protocol clients.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia deployment inventory read-only inspection receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_READ_ONLY_INSPECTION_RECEIPT.md

Reference commit: 075ca65054153985aee42b0a8ff0ee1ef6ad9d5e

Reference captured UTC: 2026-10-11T16:14:37Z

Reference target: Base Sepolia evidence gap register

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia deployment inventory was inspected as a read-only candidate source.

No inspected source line is approved by this reference alone.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia deployment inventory inspection receipt existence must not be treated as deployment authorization.

Base Sepolia deployment inventory inspection receipt existence must not be treated as public demo approval.

Base Sepolia deployment inventory inspection receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Do not treat inspected source lines as approved evidence.
- Review any future Base Sepolia address evidence response against the address evidence response review checklist.
- Review any future Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, Base mainnet, or manually edited evidence without receipt.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Complete source-of-truth review before generated config.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat inspected source lines as approved evidence.
- Do not treat inspected source lines as approved addresses.
- Do not treat inspected source lines as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw inspected source lines in protocol clients.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia deployment inventory source-of-truth review checklist reference

Reference document: docs/checklists/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_SOURCE_OF_TRUTH_REVIEW_CHECKLIST.md

Reference commit: c312ae18bfaf49e34f9d36662c84b5cdd2cb9514

Reference captured UTC: 2026-10-11T16:25:39Z

Reference target: Base Sepolia evidence gap register

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia deployment inventory source-of-truth review checklist exists as a review gate.

No inspected source line is approved by this reference alone.

No source-of-truth candidate is approved by this reference alone.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No Base Sepolia address evidence response is approved by this reference alone.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia deployment inventory source-of-truth review checklist existence must not be treated as deployment authorization.

Base Sepolia deployment inventory source-of-truth review checklist existence must not be treated as public demo approval.

Base Sepolia deployment inventory source-of-truth review checklist existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete source-of-truth review before drafting address evidence responses.
- Complete source-of-truth review before drafting ABI evidence responses.
- Do not treat inspected source lines as approved evidence.
- Review any future Base Sepolia address evidence response against the address evidence response review checklist.
- Review any future Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, Base mainnet, or manually edited evidence without receipt.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat inspected source lines as approved evidence.
- Do not treat inspected source lines as approved addresses.
- Do not treat inspected source lines as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw inspected source lines in protocol clients.
- Do not use this checklist as deployment authorization.
- Do not use this checklist as public demo approval.
- Do not use this checklist as mainnet approval.
- Do not use this checklist as production address approval.
- Do not use this checklist as production ABI approval.
- Do not use this checklist as treasury approval.
- Do not use this checklist as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia deployment inventory source-of-truth review receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_SOURCE_OF_TRUTH_REVIEW_RECEIPT.md

Reference commit: 177590ef7e3a192bf423bfa1f10c95f6f718a253

Reference captured UTC: 2026-10-11T17:07:41Z

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia deployment inventory source-of-truth review receipt exists.

No source-of-truth review receipt result is evidence approval by itself.

No raw candidate address is approved by this reference alone.

No raw candidate ABI is approved by this reference alone.

No Base Sepolia address evidence response is approved by this reference alone.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia deployment inventory source-of-truth review receipt existence must not be treated as deployment authorization.

Base Sepolia deployment inventory source-of-truth review receipt existence must not be treated as public demo approval.

Base Sepolia deployment inventory source-of-truth review receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Draft Base Sepolia address evidence response only from approved source-review boundaries.
- Draft Base Sepolia ABI evidence response only from approved source-review boundaries.
- Review any Base Sepolia address evidence response against the address evidence response review checklist.
- Review any Base Sepolia ABI evidence response against the ABI evidence response review checklist.
- Complete address evidence records only after response review allows drafting.
- Complete address checksum receipts only after response review allows drafting.
- Complete ABI evidence records only after response review allows drafting.
- Complete ABI checksum receipts only after response review allows drafting.
- Complete explorer/source verification receipts where applicable.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat inspected source lines as approved evidence.
- Do not treat inspected source lines as approved addresses.
- Do not treat inspected source lines as approved ABIs.
- Do not use raw candidate addresses in generated config.
- Do not use raw candidate ABIs in generated config.
- Do not use raw inspected source lines in protocol clients.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address evidence response review receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RESPONSE_REVIEW_RECEIPT.md

Reference commit: f6acfe1a7e4fb09d9bc9957bddd1b40e4d6643d0

Reference captured UTC: 2026-10-11T17:36:44Z

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address for use.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address evidence response review receipt exists.

No reviewed candidate ID is approved for generated config by this reference alone.

No reviewed candidate ID is approved for protocol clients by this reference alone.

No reviewed candidate ID is approved for public demo by this reference alone.

No reviewed candidate ID is approved for mainnet by this reference alone.

No raw candidate address is repeated in this reference.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia address evidence response review receipt existence must not be treated as deployment authorization.

Base Sepolia address evidence response review receipt existence must not be treated as public demo approval.

Base Sepolia address evidence response review receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Use only approved candidate IDs from the review receipt for address evidence record drafting.
- Draft Base Sepolia address evidence records only after the review receipt allows drafting.
- Draft Base Sepolia address checksum receipts only after address evidence records exist.
- Do not move reviewed candidate IDs directly into generated config.
- Do not move reviewed candidate IDs directly into protocol clients.
- Do not move reviewed candidate IDs directly into public demo source.
- Do not move reviewed candidate IDs into mainnet artifacts.
- Complete explorer/source verification receipts where applicable.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not treat this receipt as approved address evidence.
- Do not treat this receipt as a checksum receipt.
- Do not use reviewed candidate IDs in generated config.
- Do not use reviewed candidate IDs in protocol clients.
- Do not use reviewed candidate IDs in public demo source.
- Do not use reviewed candidate IDs for mainnet.
- Do not use this receipt as deployment authorization.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as production ABI approval.
- Do not use this receipt as treasury approval.
- Do not use this receipt as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address checksum receipts reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_CHECKSUM_RECEIPTS.md

Reference commit: bae5ee0b499d6f3db93cb941da37bbcabc40ffde

Reference captured UTC: 2026-10-11T20:22:16Z

Network: Base Sepolia

Chain ID: 84532

Checksum method: EIP-55 via Foundry cast

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address for use outside evidence processing.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that Base Sepolia address checksum receipts exist and were remotely confirmed.

Address checksum receipt existence must not be treated as generated config approval.

Address checksum receipt existence must not be treated as protocol client approval.

Address checksum receipt existence must not be treated as public demo approval.

Address checksum receipt existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete ABI evidence response review.
- Complete ABI evidence records.
- Complete ABI checksum receipts.
- Complete explorer/source verification receipts where applicable.
- Complete method classification.
- Complete read allowlist.
- Complete write blocklist.
- Keep generated Base Sepolia read-only config blocked until evidence and package gates authorize generation.
- Keep protocol client implementation blocked until generated config and ABI gates are complete.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not use these checksum receipts alone in generated config.
- Do not use these checksum receipts alone in protocol clients.
- Do not use these checksum receipts alone in public demo source.
- Do not use these checksum receipts for mainnet.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not use this reference as production address approval.
- Do not use this reference as production ABI approval.
- Do not use this reference as treasury approval.
- Do not use this reference as governance approval.
- Do not accept guessed addresses.
- Do not accept placeholder addresses.
- Do not accept screenshot-only evidence.
- Do not accept chat-only evidence.
- Do not accept memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI checksum receipts reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_CHECKSUM_RECEIPTS.md

Reference commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

Reference captured UTC: 2026-10-12T10:22:01Z

Network: Base Sepolia

Chain ID: 84532

Checksum method: normalized ABI JSON SHA-256 from temporary Forge build artifact

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI for use outside evidence processing.

This reference does not approve any Base Sepolia read method.

This reference does not approve any Base Sepolia write method.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

This reference records that Base Sepolia ABI checksum receipts exist and were remotely confirmed.

ABI checksum receipt existence must not be treated as generated config approval.

ABI checksum receipt existence must not be treated as protocol client approval.

ABI checksum receipt existence must not be treated as method classification approval.

ABI checksum receipt existence must not be treated as read allowlist approval.

ABI checksum receipt existence must not be treated as write blocklist approval.

ABI checksum receipt existence must not be treated as public demo approval.

ABI checksum receipt existence must not be treated as mainnet approval.

Raw ABI JSON was not copied into the checksum receipt file.

Temporary Forge artifacts were not committed.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete method classification.
- Complete read allowlist.
- Complete write blocklist.
- Complete explorer/source verification receipts where applicable.
- Complete config package gate review.
- Keep generated Base Sepolia read-only config blocked until method classification, read allowlist, write blocklist, and package gates authorize generation.
- Keep protocol client implementation blocked until generated config and protocol client gates are complete.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not use ABI checksum receipts as method classification.
- Do not use ABI checksum receipts as a read allowlist.
- Do not use ABI checksum receipts as a write blocklist.
- Do not use ABI checksum receipts alone in generated config.
- Do not use ABI checksum receipts alone in protocol clients.
- Do not use ABI checksum receipts alone in public demo source.
- Do not use ABI checksum receipts for mainnet.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not use this reference as production ABI approval.
- Do not use this reference as treasury approval.
- Do not use this reference as governance approval.
- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept memory-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia method-control reference

Method classification reference: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_METHOD_CLASSIFICATION.md

Method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist reference: docs/audits/V0_5_2_BASE_SEPOLIA_READ_METHOD_ALLOWLIST.md

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist reference: docs/audits/V0_5_2_BASE_SEPOLIA_WRITE_METHOD_BLOCKLIST.md

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

ABI checksum receipts commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

Address checksum receipts commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Reference captured UTC: 2026-10-12T13:38:24Z

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Method-control status:

- ABI method classification complete with safety override.
- Read method allowlist complete.
- Write method blocklist complete.
- Approval signature and approval selector are excluded from the read allowlist.
- Approval signature and approval selector are retained in the write blocklist.
- Write-like methods are excluded from generated read-only config.
- Write methods are excluded from public demo execution.
- Write methods are excluded from transaction rail execution.
- Write methods are excluded from governance writes.
- Write methods are excluded from treasury routes.
- Write methods are excluded from mainnet.

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch.

This reference does not approve executable config package source.

This reference does not approve generated config by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve transaction rail execution.

This reference does not approve governance writes.

This reference does not approve treasury routes.

This reference does not authorize any public mainnet mint interface.

Generated Base Sepolia read-only config remains blocked until:

- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied;
- generated config candidate is produced and reviewed.

Protocol client implementation remains blocked until:

- generated Base Sepolia read-only config is approved;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

Public Base Sepolia demo remains blocked until:

- generated read-only config is approved;
- protocol client gate is complete;
- public warning language is implemented;
- network badge is visible;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

Mainnet remains blocked.

No Base Sepolia address, ABI, read method, write method, read-only config, or public demo may be promoted to mainnet.

No-go conditions preserved:

- Do not use method classification alone as generated config.
- Do not use read allowlist alone as generated config.
- Do not use write blocklist alone as generated config.
- Do not include write methods in generated read-only config.
- Do not execute write methods.
- Do not allow write methods in public demo.
- Do not allow write methods in transaction rail.
- Do not allow write methods in governance routes.
- Do not allow write methods in treasury routes.
- Do not use this reference as deployment authorization.
- Do not use this reference as public demo approval.
- Do not use this reference as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
