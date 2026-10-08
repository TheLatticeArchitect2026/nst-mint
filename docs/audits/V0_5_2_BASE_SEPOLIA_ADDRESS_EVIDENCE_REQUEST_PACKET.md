# NST Core v0.5.2 Base Sepolia Address Evidence Request Packet

Status: DRAFT REQUEST PACKET
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-08T21:12:33Z
Current commit at creation: 4c44d29c0e9ba72aa24f5868268d32fd129f3fd6

Base Sepolia address map commit: 4c44d29c0e9ba72aa24f5868268d32fd129f3fd6

Base Sepolia ABI inventory receipt commit: 4c44d29c0e9ba72aa24f5868268d32fd129f3fd6

Base Sepolia read-only config plan commit: 3d5d608993c1bc7c3971cf9d06c30ae45afec010

Address source policy commit: 4c44d29c0e9ba72aa24f5868268d32fd129f3fd6

Address evidence record template commit: 4c44d29c0e9ba72aa24f5868268d32fd129f3fd6

Address checksum receipt template commit: 4c44d29c0e9ba72aa24f5868268d32fd129f3fd6

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

This document does not approve any production governance object.

This document does not approve any production treasury route.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize production governance gates.

This document does not authorize any public mainnet mint interface.

This document is a request packet only.

## Purpose

This packet defines the controlled request path for collecting public Base Sepolia deployed contract address evidence.

The purpose is to gather public, non-secret, evidence-backed Base Sepolia deployment data so that future address evidence records, checksum receipts, ABI evidence records, ABI checksum receipts, explorer/source verification receipts, and read-only config can be prepared.

This packet requests public addresses only.

This packet requests public explorer links only.

This packet requests public deployment receipts only.

This packet requests public commit references only.

This packet requests public source verification references only.

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

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

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
- public deployed contract addresses;
- public deployment receipts;
- public verified-source explorer links;
- public ABI evidence;
- public checksum evidence;
- public commit references;
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
| Public deployed address | YES |
| Address source | YES |
| Address evidence path or proposed path | YES |
| Address checksum status | YES |
| Explorer URL | YES where available |
| Source verification status | YES where available |
| Deployment receipt path or source | YES where available |
| Deployment commit | YES where available |
| ABI source | YES where applicable |
| ABI evidence path or proposed path | YES where applicable |
| ABI checksum status | YES where applicable |
| Reviewer | YES |
| Response date UTC | YES |
| Secret-free confirmation | YES |
| Status | YES |

## Public-only response rule

A response must contain public information only.

Allowed response material:

- public contract address;
- public explorer link;
- public verified-source URL;
- public deployment transaction hash;
- public deployment block number;
- public Git commit;
- public release tag;
- public deployment receipt path;
- public ABI path;
- public checksum value;
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
- private legal instruction;
- private custody material.

## Base Sepolia address labels requested

The following labels are requested if they exist in the Base Sepolia deployment set:

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

Do not guess missing addresses.

Do not infer missing addresses from memory.

Do not create placeholder addresses.

## Address evidence requirements

Each public Base Sepolia address must be supported by an address evidence record.

The evidence record should identify:

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
- deployer source category without revealing secrets;
- related commit where available;
- review date;
- reviewer;
- no-secret confirmation;
- status.

Address evidence is not address approval.

Address evidence is not mainnet approval.

Address evidence is not production approval.

Address evidence is not public demo approval.

Address evidence is not treasury approval.

Address evidence is not governance approval.

## Checksum receipt requirements

Each public Base Sepolia address must have a checksum receipt before use in read-only config.

The checksum receipt should identify:

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

Checksum confirmation is not ownership proof.

Checksum confirmation is not deployment authorization.

Checksum confirmation is not production approval.

Checksum confirmation is not public demo approval.

## Explorer/source verification requirements

Where available, each public Base Sepolia deployed contract should include explorer/source verification evidence.

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

## ABI evidence requirements

Each contract intended for read-only client use must have ABI evidence.

The ABI evidence should identify:

- contract label;
- ABI source;
- ABI path;
- ABI checksum;
- ABI checksum receipt;
- related deployment address;
- related address evidence record;
- network scope;
- chain ID scope;
- reviewer;
- review date;
- status.

ABI evidence is not write approval.

ABI evidence is not transaction rail approval.

ABI evidence is not public demo approval.

ABI evidence is not mainnet approval.

## Response status values

Allowed response status values:

| Status | Meaning |
| --- | --- |
| DRAFT | Response is incomplete |
| COMPLETE_FOR_REVIEW | Response has enough public data for review |
| BLOCKED | Required evidence is missing |
| REJECTED | Evidence cannot be accepted |
| SUPERSEDED | Replaced by newer evidence |
| NOT_DEPLOYED | Contract not deployed in requested scope |
| NOT_APPLICABLE | Label not applicable in requested scope |

Unknown status values are not allowed.

## Address source hierarchy

Preferred source order:

1. Committed deployment receipt.
2. Committed release evidence bundle.
3. Verified explorer page.
4. Deployment transaction record.
5. Repository deployment artifact.
6. Signed or reviewed source-of-truth response.
7. Human-reviewed public evidence record.

Disallowed source categories:

- screenshot only;
- chat text only;
- memory only;
- guess;
- placeholder;
- local Anvil output;
- private wallet screen;
- private key material;
- private RPC dashboard;
- uncommitted local file.

## Required response table

Future responses should use this table.

| Label | Network | Chain ID | Address | Address source | Explorer/source verification | ABI source | Evidence status | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| NSTSBT | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |
| CFT | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |
| TreasuryRouter | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |
| ShieldRegistry | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |
| VaultRegistry | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |
| YieldPool | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |
| RewardEscrow | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |
| ClaimOrCredentialModule | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |
| PublicDemoInterfaceConfig | Base Sepolia | 84532 | TBD | OPEN | OPEN | OPEN | OPEN | TBD |

Rows must not be completed with guessed data.

Rows must not be completed with placeholder addresses.

Rows must not be completed from screenshots alone.

Rows must not be completed from chat alone.

## Future evidence artifact names

Future artifact candidates may include:

- docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORD_NSTSBT.md
- docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_CHECKSUM_RECEIPT_NSTSBT.md
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

The read-only config plan does not authorize generated config.

This request packet does not authorize generated config.

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

No Base Sepolia address may be used as a Base mainnet address.

No Base Sepolia evidence may be treated as production evidence.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia ABI may be treated as final production ABI without separate review.

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

This packet does not activate production treasury routes.

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
| Address source is public | OPEN |
| Address is not placeholder | OPEN |
| Address is not TBD | OPEN |
| Address evidence path exists | OPEN |
| Address checksum receipt exists | OPEN |
| ABI evidence path exists where required | OPEN |
| ABI checksum receipt exists where required | OPEN |
| Explorer/source verification exists where available | OPEN |
| No secrets present | OPEN |
| No screenshot-only evidence | OPEN |
| No chat-only evidence | OPEN |
| No local Anvil address | OPEN |
| No Base mainnet address | OPEN |
| No production approval implied | OPEN |

## No-go conditions

Do not complete this packet with guessed addresses.

Do not complete this packet with placeholder addresses.

Do not complete this packet with screenshot-only evidence.

Do not complete this packet with chat-only evidence.

Do not complete this packet with memory-only evidence.

Do not use local Anvil addresses.

Do not use Base mainnet addresses.

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

Do not use this packet as production address approval.

Do not use this packet as production ABI approval.

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
- it requests public addresses only;
- it requests public evidence only;
- it states Base Sepolia is testnet-only;
- it states Base Sepolia has no production value;
- it states Base Sepolia has no mainnet rights;
- it states this packet does not authorize deployment;
- it states this packet does not authorize public demo launch;
- it states this packet does not authorize mainnet approval;
- it defines required response fields;
- it defines address evidence requirements;
- it defines checksum receipt requirements;
- it defines explorer/source verification requirements;
- it defines ABI evidence requirements;
- it defines no-secret rule;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
