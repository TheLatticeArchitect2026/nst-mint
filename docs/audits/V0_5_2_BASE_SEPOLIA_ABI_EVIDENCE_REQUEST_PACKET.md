# NST Core v0.5.2 Base Sepolia ABI Evidence Request Packet

Status: DRAFT REQUEST PACKET
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-09T22:10:40Z
Current commit at creation: 3e67b048de67af72ffbfcf97f2e4a57148a602ec

Base Sepolia ABI inventory receipt commit: 3e67b048de67af72ffbfcf97f2e4a57148a602ec

Base Sepolia address map commit: 3e67b048de67af72ffbfcf97f2e4a57148a602ec

Base Sepolia address evidence request packet commit: 3e67b048de67af72ffbfcf97f2e4a57148a602ec

Base Sepolia address evidence response review checklist commit: 281809dac7f87cad3d05f27a18aa97f776c2262d

Base Sepolia read-only config plan commit: 3e67b048de67af72ffbfcf97f2e4a57148a602ec

ABI source policy commit: 3e67b048de67af72ffbfcf97f2e4a57148a602ec

ABI evidence record template commit: 3e67b048de67af72ffbfcf97f2e4a57148a602ec

ABI checksum receipt template commit: 3e67b048de67af72ffbfcf97f2e4a57148a602ec

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize public Base Sepolia demo launch by itself.

This document does not approve executable config source.

This document does not approve generated config.

This document does not approve executable protocol client source.

This document does not approve executable app source.

This document does not approve executable package source.

This document does not approve executable infra source.

This document does not approve any production address.

This document does not approve any Base Sepolia address.

This document does not approve any production ABI.

This document does not approve any Base Sepolia ABI.

This document does not approve any production governance object.

This document does not approve any production treasury route.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize production governance gates.

This document does not authorize any public mainnet mint interface.

This document is a request packet only.

## Purpose

This packet defines the controlled request path for collecting public Base Sepolia ABI evidence.

The purpose is to gather public, non-secret, evidence-backed ABI data so that future ABI evidence records, ABI checksum receipts, explorer/source verification receipts, read-only config, and protocol-client inputs can be prepared.

This packet requests public ABI source only.

This packet requests public verified-source references only.

This packet requests public ABI file references only.

This packet requests public checksum evidence only.

This packet requests public deployment-to-ABI relationship evidence only.

This packet must never request secrets.

This packet must never request private keys.

This packet must never request seed phrases.

This packet must never request wallet recovery phrases.

This packet must never request deployer keys.

This packet must never request signer keys.

This packet must never request wallet passwords.

This packet must never request private RPC credentials.

This packet must never request hardware wallet recovery information.

## Current blocker

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia explorer/source verification receipts are not complete.

Base Sepolia generated read-only config is not approved.

Executable config package source is not approved.

Executable protocol client source is not approved.

Public Base Sepolia demo approval receipt is not complete.

Mainnet deployment remains blocked.

## Request scope

This request applies only to:

- Base Sepolia;
- chain ID 84532;
- public verified-source ABI evidence;
- public committed ABI evidence;
- public explorer ABI evidence;
- public contract-source ABI evidence;
- public ABI checksum evidence;
- public deployment-to-ABI relationship evidence;
- public read-only readiness review.

This request does not apply to:

- Base mainnet;
- production deployment;
- production treasury;
- production governance;
- production First Nations revenue;
- production corporate integration;
- private keys;
- wallet secrets;
- deployer secrets;
- signer secrets;
- private RPC credentials;
- private legal materials.

## Required response fields

Every future response to this packet must include:

| Field | Required? |
| --- | --- |
| Network | YES |
| Chain ID | YES |
| Contract label | YES |
| ABI source | YES |
| ABI path or source URL | YES |
| ABI source type | YES |
| ABI checksum status | YES |
| ABI evidence path or proposed path | YES |
| ABI checksum receipt path or proposed path | YES |
| Related address label | YES |
| Related public deployed address | YES where available |
| Related address evidence status | YES |
| Explorer/source verification URL | YES where available |
| Verified contract name | YES where available |
| Compiler/source metadata | YES where available |
| Read method classification | YES |
| Write method classification | YES |
| Reviewer | YES |
| Response date UTC | YES |
| Secret-free confirmation | YES |
| Status | YES |

## Public-only response rule

A response must contain public information only.

Allowed response material:

- public ABI JSON;
- public ABI path;
- public explorer ABI URL;
- public verified-source URL;
- public contract source path;
- public contract label;
- public method names;
- public mutability classification;
- public checksum value;
- public contract address;
- public deployment transaction hash;
- public Git commit;
- public release tag;
- public reviewer name or role;
- public testnet status.

Disallowed response material:

- private key;
- seed phrase;
- recovery phrase;
- deployer key;
- signer key;
- wallet password;
- keystore password;
- hardware wallet recovery phrase;
- private RPC credential;
- private API key;
- bearer token;
- personal access token;
- private multisig credential;
- private custody credential;
- raw environment secret;
- private legal instruction;
- private privileged material.

## Base Sepolia ABI labels requested

The following ABI labels are requested if they exist in the Base Sepolia deployment set:

| Label | Required evidence status |
| --- | --- |
| NSTSBT | OPEN |
| CFT | OPEN |
| TreasuryRouter | OPEN |
| ShieldRegistry | OPEN |
| VaultRegistry | OPEN |
| YieldPool | OPEN |
| RewardEscrow | OPEN |
| ClaimOrCredentialModule | OPEN |
| PublicDemoInterfaceConfig | OPEN |

If a label does not exist, the response must say:

- NOT DEPLOYED;
- NOT APPLICABLE;
- SUPERSEDED;
- UNKNOWN;
- or BLOCKED.

Do not guess missing ABIs.

Do not infer missing ABIs from memory.

Do not create placeholder ABIs.

## ABI source requirements

Each public Base Sepolia ABI must be supported by an ABI evidence record.

The evidence record should identify:

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

ABI evidence is not ABI approval for writes.

ABI evidence is not public demo approval.

ABI evidence is not mainnet approval.

ABI evidence is not production approval.

## ABI checksum receipt requirements

Each public Base Sepolia ABI must have a checksum receipt before use in read-only config or protocol clients.

The checksum receipt should identify:

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

Checksum confirmation is not write approval.

Checksum confirmation is not deployment authorization.

Checksum confirmation is not production approval.

Checksum confirmation is not public demo approval.

## Explorer/source verification requirements

Where available, each public Base Sepolia ABI should include explorer/source verification evidence.

The evidence should identify:

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

Explorer verification is not deployment authorization.

Explorer verification is not production approval.

Explorer verification is not public demo approval.

## Method classification requirements

Each ABI intended for protocol-client use must be classified.

Required categories:

| ABI item | Required default |
| --- | --- |
| view function | Block unless allowlisted |
| pure function | Block unless allowlisted |
| nonpayable function | Block |
| payable function | Block |
| constructor | Block |
| fallback | Block |
| receive | Block |
| event | Read/query only if explicitly allowed |
| error | Safe for decoding only |

If mutability is missing, block.

If method classification is unclear, block.

If method can change state, block.

If method is payable, block.

## Read-only allowlist requirements

The future response should identify candidate read-only methods only.

Potential read categories:

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

A candidate read method is not approved until reviewed.

A read allowlist does not approve writes.

A read allowlist does not approve public demo launch.

## Write method blocker

The response must identify write methods as blocked.

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

ABI evidence does not approve write behavior.

Testnet status does not approve write behavior.

## Response status values

Allowed response status values:

| Status | Meaning |
| --- | --- |
| DRAFT | Response is incomplete |
| COMPLETE_FOR_REVIEW | Response has enough public data for review |
| BLOCKED | Required evidence is missing |
| REJECTED | Evidence cannot be accepted |
| SUPERSEDED | Replaced by newer evidence |
| NOT_DEPLOYED | Contract label not deployed in requested scope |
| NOT_APPLICABLE | Label not applicable in requested scope |

Unknown status values are not allowed.

## ABI source hierarchy

Preferred source order:

1. Committed verified build artifact.
2. Committed release evidence bundle.
3. Verified explorer ABI.
4. Verified contract source output.
5. Repository artifact output.
6. Signed or reviewed source-of-truth response.
7. Human-reviewed public evidence record.

Disallowed source categories:

- screenshot only;
- chat text only;
- memory only;
- guess;
- placeholder;
- manually edited ABI without receipt;
- local uncommitted artifact;
- private dashboard;
- private wallet screen;
- private key material;
- private RPC dashboard;
- unknown source.

## Required response table

Future responses should use this table.

| Label | Network | Chain ID | ABI source | Related address | Explorer/source verification | ABI checksum status | Evidence status | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| NSTSBT | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |
| CFT | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |
| TreasuryRouter | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |
| ShieldRegistry | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |
| VaultRegistry | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |
| YieldPool | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |
| RewardEscrow | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |
| ClaimOrCredentialModule | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |
| PublicDemoInterfaceConfig | Base Sepolia | 84532 | OPEN | OPEN | OPEN | OPEN | OPEN | TBD |

Rows must not be completed with guessed data.

Rows must not be completed with placeholder ABIs.

Rows must not be completed from screenshots alone.

Rows must not be completed from chat alone.

## Future evidence artifact names

Future artifact candidates may include:

- docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORD_NSTSBT.md
- docs/audits/V0_5_2_BASE_SEPOLIA_ABI_CHECKSUM_RECEIPT_NSTSBT.md
- docs/audits/V0_5_2_BASE_SEPOLIA_EXPLORER_SOURCE_VERIFICATION_RECEIPT_NSTSBT.md

Equivalent files may be created for each deployed contract label.

File naming may be adjusted if the final contract label differs.

## Read-only config dependency

Base Sepolia read-only config must remain blocked until:

- address evidence records are complete;
- address checksum receipts are complete;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- explorer/source verification receipts are complete where applicable;
- config package implementation gate allows generated config;
- protocol client package gate allows client use;
- no-secret scan receipt process exists;
- package test strategy is satisfied.

This ABI evidence request packet does not authorize generated config.

## Protocol client dependency

Protocol clients must remain blocked until:

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

This ABI evidence request packet does not authorize protocol client implementation.

## Public demo dependency

Public Base Sepolia demo launch remains blocked until:

- public warning language is implemented;
- network badge is visible;
- address evidence is complete;
- ABI evidence is complete;
- checksum receipts are complete;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

This packet does not authorize public demo launch.

A response to this packet does not authorize public demo launch.

## Mainnet boundary

No Base Sepolia ABI may be used as final Base mainnet ABI evidence without separate review.

No Base Sepolia ABI may be treated as production ABI approval.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## First Nations boundary

This packet does not request First Nations private information.

This packet does not request Treaty-law privileged material.

This packet does not activate First Nations governance.

This packet does not activate First Nations revenue routing.

This packet does not appoint any First Nations key holder.

This packet does not imply First Nations consent.

This packet does not finalize First Nations legal language.

First Nations production language remains subject to specialized Treaty-law review.

## Corporate boundary

This packet does not request corporate private information.

This packet does not activate corporate production integration.

This packet does not create paid service commitments.

This packet does not authorize operational reliance.

This packet does not imply investment solicitation.

Corporate production use remains blocked until separate approvals are complete.

## Treasury boundary

This packet does not approve production treasury routes.

This packet does not approve real funds.

This packet does not approve yield.

This packet does not approve payout.

This packet does not approve reward distribution.

This packet does not authorize sweeping or rescue actions.

Treasury write behavior remains blocked.

## Governance boundary

This packet does not activate governance.

This packet does not approve roles.

This packet does not approve multisig signers.

This packet does not approve admin actions.

This packet does not approve role grants.

This packet does not approve role revocations.

Governance write behavior remains blocked.

## Transaction rail boundary

This packet does not authorize transaction rail execution.

This packet does not authorize transaction broadcast.

This packet does not authorize write clients.

This packet does not authorize wallet signing.

This packet does not authorize signer handling.

Transaction rail remains blocked.

## No-secret rule

A response to this packet must explicitly confirm:

- no private keys included;
- no seed phrases included;
- no wallet recovery phrases included;
- no deployer keys included;
- no signer keys included;
- no wallet secrets included;
- no private RPC credentials included;
- no private API keys included;
- no bearer tokens included;
- no private custody material included.

If any secret is present, the response must be rejected.

## Review checklist

A future reviewer must check:

| Check | Status |
| --- | --- |
| Network is Base Sepolia | OPEN |
| Chain ID is 84532 | OPEN |
| ABI source is public or committed | OPEN |
| ABI source is not screenshot-only | OPEN |
| ABI source is not chat-only | OPEN |
| ABI source is not memory-only | OPEN |
| ABI source is not manually edited without receipt | OPEN |
| ABI checksum can be calculated | OPEN |
| ABI evidence path exists or can be created | OPEN |
| ABI checksum receipt exists or can be created | OPEN |
| Explorer/source verification exists where available | OPEN |
| Related address evidence exists or is clearly pending | OPEN |
| Read methods are classified | OPEN |
| Write methods are blocked | OPEN |
| No secrets present | OPEN |
| No production approval implied | OPEN |
| No public demo approval implied | OPEN |

## No-go conditions

Do not complete this packet with guessed ABIs.

Do not complete this packet with placeholder ABIs.

Do not complete this packet with screenshot-only evidence.

Do not complete this packet with chat-only evidence.

Do not complete this packet with memory-only evidence.

Do not use manually edited ABIs without receipt.

Do not use local uncommitted ABI artifacts.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not request signer keys.

Do not request wallet secrets.

Do not request private RPC credentials.

Do not use this packet as deployment authorization.

Do not use this packet as public demo approval.

Do not use this packet as mainnet approval.

Do not use this packet as production ABI approval.

Do not use this packet as production address approval.

Do not use this packet as treasury approval.

Do not use this packet as governance approval.

## Secret exclusion checklist

This packet must contain none of the following usable secret material:

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

This request packet is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it requests public ABI source only;
- it requests public evidence only;
- it states Base Sepolia is testnet-only;
- it states Base Sepolia has no production value;
- it states Base Sepolia has no mainnet rights;
- it states this packet does not authorize deployment;
- it states this packet does not authorize public demo launch;
- it states this packet does not authorize mainnet approval;
- it defines required response fields;
- it defines ABI source requirements;
- it defines ABI checksum receipt requirements;
- it defines explorer/source verification requirements;
- it defines method classification requirements;
- it defines read-only allowlist requirements;
- it defines write method blockers;
- it defines no-secret rule;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Base Sepolia ABI evidence response review checklist reference

Reference document: docs/checklists/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

Reference commit: 16761b446bc75736dff3e27685fbf82095efb586

Reference captured UTC: 2026-10-10T09:16:06Z

Reference target: Base Sepolia ABI evidence request packet

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

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

This reference does not approve any Base Sepolia write method.

This reference does not approve any Base Sepolia read allowlist by itself.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia ABI evidence response review checklist exists as a controlled response-review gate artifact.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No Base Sepolia method classification is approved by this reference alone.

No Base Sepolia method allowlist is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia ABI evidence response review checklist existence must not be treated as deployment authorization.

Base Sepolia ABI evidence response review checklist existence must not be treated as public demo approval.

Base Sepolia ABI evidence response review checklist existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Review any Base Sepolia ABI evidence response against the checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, manually edited without receipt, or local uncommitted ABI evidence.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Complete Base Sepolia method classification only after ABI evidence review allows drafting.
- Keep write methods blocked by default.
- Complete Base Sepolia address evidence records and checksum receipts.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept memory-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not use local uncommitted ABI artifacts.
- Do not approve write methods from ABI presence.
- Do not approve transaction broadcast from ABI presence.
- Do not use Base Sepolia ABI as mainnet ABI approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not use the checklist as deployment authorization.
- Do not use the checklist as public demo approval.
- Do not use the checklist as mainnet approval.
- Do not use the checklist as production ABI approval.
- Do not use the checklist as production address approval.
- Do not use the checklist as treasury approval.
- Do not use the checklist as governance approval.
- Do not imply this reference authorizes deployment.
