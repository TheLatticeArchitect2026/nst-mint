# NST Core v0.5.2 Base Sepolia Address Evidence Response Review Checklist

Status: DRAFT CHECKLIST
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-08T21:34:50Z
Current commit at creation: 27dddec2b7541489a3f1558f6438cf32111f073c

Base Sepolia address evidence request packet commit: 35fc42e2b0ceee421522f9c1da24d6d692387576

Base Sepolia address map commit: 27dddec2b7541489a3f1558f6438cf32111f073c

Base Sepolia ABI inventory receipt commit: 27dddec2b7541489a3f1558f6438cf32111f073c

Base Sepolia read-only config plan commit: 27dddec2b7541489a3f1558f6438cf32111f073c

No-secret package scan rule commit: 27dddec2b7541489a3f1558f6438cf32111f073c

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

This document is a response review checklist only.

## Purpose

This checklist defines how a future response to the Base Sepolia address evidence request packet must be reviewed before any address, ABI, checksum, explorer verification, or deployment evidence is accepted into NST Core v0.5.2 readiness artifacts.

The purpose is to prevent bad address data, wrong-chain data, placeholder values, screenshot-only values, chat-only values, private secrets, and testnet-to-mainnet confusion from entering the institutional record.

This checklist does not collect addresses.

This checklist does not approve addresses.

This checklist does not create address evidence records.

This checklist does not create checksum receipts.

This checklist does not create ABI evidence records.

This checklist does not create generated config.

This checklist does not create executable source.

## Current blocker

Base Sepolia address evidence response has not been reviewed.

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

## Required response review status

A future response review must end in exactly one of these statuses:

| Status | Meaning |
| --- | --- |
| APPROVED_FOR_EVIDENCE_RECORD_DRAFTING | Response may be used to draft address and ABI evidence records |
| BLOCKED | Response is incomplete or unsafe |
| REJECTED | Response is unacceptable |
| SUPERSEDED | Response replaced by newer response |
| NOT_APPLICABLE | Response item does not apply |
| NOT_DEPLOYED | Contract label not deployed in requested scope |

Unknown statuses are not allowed.

APPROVED_FOR_EVIDENCE_RECORD_DRAFTING is not deployment approval.

APPROVED_FOR_EVIDENCE_RECORD_DRAFTING is not public demo approval.

APPROVED_FOR_EVIDENCE_RECORD_DRAFTING is not mainnet approval.

APPROVED_FOR_EVIDENCE_RECORD_DRAFTING is not production approval.

## Global acceptance requirements

A response may pass review only if:

- network is Base Sepolia;
- chain ID is 84532;
- address source is public;
- address is not placeholder;
- address is not TBD;
- address is not local Anvil;
- address is not Base mainnet;
- address is not screenshot-only;
- address is not chat-only;
- address is not memory-only;
- address is not guessed;
- explorer/source verification is supplied where available;
- deployment transaction is supplied where available;
- deployment commit is supplied where available;
- ABI source is supplied where applicable;
- no secrets are present;
- reviewer is identified;
- review date UTC is identified;
- response status is explicit.

## Required response fields check

| Field | Required | Status |
| --- | --- | --- |
| Network | YES | OPEN |
| Chain ID | YES | OPEN |
| Contract label | YES | OPEN |
| Public deployed address | YES unless NOT_DEPLOYED | OPEN |
| Address source | YES | OPEN |
| Explorer URL | YES where available | OPEN |
| Source verification status | YES where available | OPEN |
| Deployment transaction | YES where available | OPEN |
| Deployment block | YES where available | OPEN |
| Deployment commit | YES where available | OPEN |
| ABI source | YES where applicable | OPEN |
| ABI evidence proposed path | YES where applicable | OPEN |
| Address evidence proposed path | YES | OPEN |
| Address checksum status | YES | OPEN |
| ABI checksum status | YES where applicable | OPEN |
| Reviewer | YES | OPEN |
| Response date UTC | YES | OPEN |
| Secret-free confirmation | YES | OPEN |
| Final response status | YES | OPEN |

## Network review

The response must state:

- Base Sepolia;
- chain ID 84532;
- testnet-only;
- no production value;
- no mainnet rights.

Reject response if:

- network is missing;
- chain ID is missing;
- chain ID is not 84532;
- network is Base mainnet;
- network is local Anvil;
- network is ambiguous;
- response implies Base Sepolia is production;
- response implies Base Sepolia has mainnet rights.

## Address review

For every submitted address:

| Check | Status |
| --- | --- |
| Address is present unless label is NOT_DEPLOYED | OPEN |
| Address is valid EVM address format | OPEN |
| Address is not zero address unless explicitly allowed as disabled dependency | OPEN |
| Address is not placeholder | OPEN |
| Address is not TBD | OPEN |
| Address is not mock | OPEN |
| Address is not local Anvil | OPEN |
| Address is not Base mainnet | OPEN |
| Address is not from screenshot only | OPEN |
| Address is not from chat only | OPEN |
| Address is not from memory only | OPEN |
| Address source is public | OPEN |
| Address source is reviewable | OPEN |
| Address checksum can be calculated | OPEN |

Reject the address if any required address review item fails.

## Address source review

Preferred accepted address sources:

1. Committed deployment receipt.
2. Committed release evidence bundle.
3. Verified explorer page.
4. Deployment transaction record.
5. Repository deployment artifact.
6. Signed or reviewed source-of-truth response.
7. Human-reviewed public evidence record.

Rejected address sources:

- screenshot only;
- chat text only;
- memory only;
- guess;
- placeholder;
- local Anvil output;
- uncommitted terminal output;
- private wallet screen;
- private key material;
- private RPC dashboard;
- private custody dashboard;
- unknown source.

## Contract label review

Allowed label states:

| Label | Review status |
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

If a contract label differs, reviewer must determine whether it is:

- same module under different name;
- superseded label;
- not applicable;
- not deployed;
- unknown and blocked.

Do not invent labels.

Do not map labels by assumption.

Do not accept a label mismatch without explanation.

## Explorer/source verification review

For every explorer/source verification reference:

| Check | Status |
| --- | --- |
| Explorer URL is public | OPEN |
| Explorer URL matches Base Sepolia | OPEN |
| Explorer address matches submitted address | OPEN |
| Verified contract name matches expected label or explained alias | OPEN |
| Source verification status is clear | OPEN |
| ABI is available where applicable | OPEN |
| Deployment transaction matches address where available | OPEN |
| Review date UTC captured | OPEN |

If explorer verification is unavailable, response must explain why.

Unavailable explorer verification does not automatically reject the response, but it keeps downstream evidence in OPEN or BLOCKED status until alternate evidence is accepted.

## Deployment transaction review

For every deployment transaction:

| Check | Status |
| --- | --- |
| Transaction hash is public | OPEN |
| Transaction is on Base Sepolia | OPEN |
| Transaction created the submitted address | OPEN |
| Deployment block is public | OPEN |
| Deployer address is public | OPEN |
| No deployer private key is included | OPEN |
| Contract label matches deployment artifact or explorer data | OPEN |
| Commit or release relation is identified where available | OPEN |

Do not request deployer private keys.

Do not request signer secrets.

Do not request custody credentials.

## ABI source review

For every ABI source:

| Check | Status |
| --- | --- |
| ABI source is public or committed | OPEN |
| ABI belongs to expected contract label | OPEN |
| ABI belongs to expected network or contract source scope | OPEN |
| ABI is parseable JSON where applicable | OPEN |
| ABI evidence record can be created | OPEN |
| ABI checksum receipt can be created | OPEN |
| ABI is not screenshot-derived | OPEN |
| ABI is not chat-derived | OPEN |
| ABI is not memory-derived | OPEN |
| ABI is not manually edited without receipt | OPEN |

ABI evidence is not write approval.

ABI evidence is not public demo approval.

ABI evidence is not mainnet approval.

## Checksum review

Every accepted address must proceed to checksum review.

Every accepted ABI must proceed to checksum review.

Required checksum questions:

| Check | Status |
| --- | --- |
| Raw submitted value captured | OPEN |
| Normalized value captured | OPEN |
| Checksum method identified | OPEN |
| Checksum reviewer identified | OPEN |
| Checksum review date UTC identified | OPEN |
| Source document identified | OPEN |
| Source commit identified | OPEN |
| Mismatch status captured | OPEN |
| Network captured | OPEN |
| Chain ID captured | OPEN |
| No-secret confirmation captured | OPEN |

Checksum pass is not deployment approval.

Checksum pass is not public demo approval.

Checksum pass is not mainnet approval.

## Secret review

A response must be rejected if it contains any of:

- private key;
- seed phrase;
- wallet recovery phrase;
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

If a possible secret cannot be proven safe, the response must be BLOCKED or REJECTED.

## Public-only confirmation

Reviewer must confirm:

| Public-only item | Status |
| --- | --- |
| Public addresses only | OPEN |
| Public explorer links only | OPEN |
| Public transaction hashes only | OPEN |
| Public commits or artifacts only | OPEN |
| No private signer material | OPEN |
| No wallet secrets | OPEN |
| No RPC secrets | OPEN |
| No custody secrets | OPEN |
| No privileged legal material | OPEN |

## Screenshot and chat review

Screenshot-only evidence is not accepted.

Chat-only evidence is not accepted.

Memory-only evidence is not accepted.

A screenshot may help locate public information but cannot be the final source of truth.

A chat message may help locate public information but cannot be the final source of truth.

Final evidence must be traceable to public or committed sources.

## Base Sepolia address map reconciliation

Every reviewed response must be reconciled with:

docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_MAP.md

Reconciliation checks:

| Check | Status |
| --- | --- |
| Label appears in address map or justified as new | OPEN |
| Network matches Base Sepolia | OPEN |
| Chain ID matches 84532 | OPEN |
| Address status can be updated from OPEN only by evidence | OPEN |
| No production address approval implied | OPEN |
| No mainnet address approval implied | OPEN |

## Base Sepolia ABI inventory reconciliation

Every reviewed ABI response must be reconciled with:

docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md

Reconciliation checks:

| Check | Status |
| --- | --- |
| ABI label appears in inventory or justified as new | OPEN |
| ABI source can be reviewed | OPEN |
| ABI checksum can be created | OPEN |
| ABI network or scope is clear | OPEN |
| ABI does not approve writes | OPEN |
| ABI does not approve production use | OPEN |

## Evidence artifact creation decision

After review, each row must be assigned a next action:

| Next action | Meaning |
| --- | --- |
| CREATE_ADDRESS_EVIDENCE_RECORD | Enough data to draft address evidence |
| CREATE_ADDRESS_CHECKSUM_RECEIPT | Enough data to draft checksum receipt |
| CREATE_ABI_EVIDENCE_RECORD | Enough data to draft ABI evidence |
| CREATE_ABI_CHECKSUM_RECEIPT | Enough data to draft ABI checksum |
| CREATE_EXPLORER_VERIFICATION_RECEIPT | Enough data to draft explorer/source verification receipt |
| REQUEST_MORE_INFO | More public information required |
| REJECT | Data cannot be accepted |
| MARK_NOT_DEPLOYED | Contract not deployed in scope |
| MARK_NOT_APPLICABLE | Contract not applicable in scope |

No generated config may be created directly from the response.

Evidence records and checksum receipts must be created first.

## Public demo boundary

This checklist does not approve public Base Sepolia demo launch.

A reviewed address response does not approve public demo launch.

Address evidence records do not approve public demo launch.

Checksum receipts do not approve public demo launch.

Public demo remains blocked until:

- warning language is implemented;
- network badge is visible;
- address evidence is complete;
- ABI evidence is complete;
- checksum receipts are complete;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

## Read-only config boundary

This checklist does not approve generated read-only config.

A reviewed address response does not approve generated read-only config.

Generated read-only config remains blocked until:

- address evidence records are complete;
- address checksum receipts are complete;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- no-secret scan receipt process exists;
- package tests are satisfied.

## Mainnet boundary

No Base Sepolia response may be used as Base mainnet evidence.

No Base Sepolia address may be used as a Base mainnet address.

No Base Sepolia ABI may be used as final production ABI evidence without separate review.

No Base Sepolia deployment may be treated as mainnet deployment.

Mainnet requires separate production evidence and final human approval.

## First Nations boundary

This checklist does not approve First Nations production language.

This checklist does not activate First Nations governance.

This checklist does not activate First Nations revenue routing.

This checklist does not appoint any First Nations key holder.

This checklist does not imply First Nations consent.

First Nations production scope remains subject to specialized Treaty-law review.

## Corporate boundary

This checklist does not approve corporate production integration.

This checklist does not create enterprise commitments.

This checklist does not authorize operational reliance.

This checklist does not imply investment solicitation.

Corporate production use remains blocked until separate approvals are complete.

## Treasury boundary

This checklist does not approve production treasury routes.

This checklist does not approve real funds.

This checklist does not approve yield.

This checklist does not approve payout.

This checklist does not approve reward distribution.

This checklist does not authorize sweeping or rescue actions.

Treasury write behavior remains blocked.

## Governance boundary

This checklist does not activate governance.

This checklist does not approve roles.

This checklist does not approve multisig signers.

This checklist does not approve admin actions.

This checklist does not approve role grants.

This checklist does not approve role revocations.

Governance write behavior remains blocked.

## Transaction rail boundary

This checklist does not authorize transaction rail execution.

This checklist does not authorize transaction broadcast.

This checklist does not authorize write clients.

This checklist does not authorize wallet signing.

This checklist does not authorize signer handling.

Transaction rail remains blocked.

## Final reviewer certification

A future completed review must include:

| Certification | Status |
| --- | --- |
| I reviewed the response against this checklist | OPEN |
| I confirmed Base Sepolia network and chain ID | OPEN |
| I confirmed public-only evidence | OPEN |
| I confirmed no secrets are present | OPEN |
| I confirmed no screenshot-only evidence accepted | OPEN |
| I confirmed no chat-only evidence accepted | OPEN |
| I confirmed no local Anvil address accepted | OPEN |
| I confirmed no Base mainnet address accepted | OPEN |
| I confirmed no deployment approval is implied | OPEN |
| I confirmed no public demo approval is implied | OPEN |
| I confirmed no mainnet approval is implied | OPEN |
| I assigned a final review status | OPEN |

## No-go conditions

Do not accept guessed addresses.

Do not accept placeholder addresses.

Do not accept screenshot-only evidence.

Do not accept chat-only evidence.

Do not accept memory-only evidence.

Do not use local Anvil addresses.

Do not use Base mainnet addresses.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not request signer keys.

Do not request wallet secrets.

Do not request private RPC credentials.

Do not use this checklist as deployment authorization.

Do not use this checklist as public demo approval.

Do not use this checklist as mainnet approval.

Do not use this checklist as production address approval.

Do not use this checklist as production ABI approval.

Do not use this checklist as treasury approval.

Do not use this checklist as governance approval.

## Secret exclusion checklist

This checklist must contain none of the following usable secret material:

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

This response review checklist is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it reviews public addresses only;
- it reviews public evidence only;
- it states Base Sepolia is testnet-only;
- it states Base Sepolia has no production value;
- it states Base Sepolia has no mainnet rights;
- it states this checklist does not authorize deployment;
- it states this checklist does not authorize public demo launch;
- it states this checklist does not authorize mainnet approval;
- it defines required response review fields;
- it defines address review requirements;
- it defines address source review requirements;
- it defines explorer/source verification review;
- it defines deployment transaction review;
- it defines ABI source review;
- it defines checksum review;
- it defines no-secret review;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
