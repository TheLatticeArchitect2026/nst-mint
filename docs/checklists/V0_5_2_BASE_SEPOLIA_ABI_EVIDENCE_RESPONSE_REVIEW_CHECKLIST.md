# NST Core v0.5.2 Base Sepolia ABI Evidence Response Review Checklist

Status: DRAFT CHECKLIST
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-10T08:28:10Z
Current commit at creation: 35b1af9bca06bb4e6ed7791d0fe2597a5d38e0eb

Base Sepolia ABI evidence request packet commit: 40896fc74b347526b6dfb70f60637c36b6ae39d3

Base Sepolia ABI inventory receipt commit: 35b1af9bca06bb4e6ed7791d0fe2597a5d38e0eb

Base Sepolia address map commit: 35b1af9bca06bb4e6ed7791d0fe2597a5d38e0eb

Base Sepolia address evidence response review checklist commit: 35b1af9bca06bb4e6ed7791d0fe2597a5d38e0eb

Base Sepolia read-only config plan commit: 35b1af9bca06bb4e6ed7791d0fe2597a5d38e0eb

ABI source policy commit: 35b1af9bca06bb4e6ed7791d0fe2597a5d38e0eb

ABI evidence record template commit: 35b1af9bca06bb4e6ed7791d0fe2597a5d38e0eb

ABI checksum receipt template commit: 35b1af9bca06bb4e6ed7791d0fe2597a5d38e0eb

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

This checklist defines how a future response to the Base Sepolia ABI evidence request packet must be reviewed before any ABI, method list, checksum, explorer/source verification, read allowlist, generated config, or protocol-client input is accepted into NST Core v0.5.2 readiness artifacts.

The purpose is to prevent bad ABI data, wrong-contract ABI data, wrong-chain data, manually edited ABI fragments, screenshot-only values, chat-only values, private secrets, write-method exposure, and testnet-to-mainnet confusion from entering the institutional record.

This checklist does not collect ABIs.

This checklist does not approve ABIs.

This checklist does not approve write methods.

This checklist does not create ABI evidence records.

This checklist does not create ABI checksum receipts.

This checklist does not create generated config.

This checklist does not create executable source.

## Current blocker

Base Sepolia ABI evidence response has not been reviewed.

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

## Required response review status

A future response review must end in exactly one of these statuses:

| Status | Meaning |
| --- | --- |
| APPROVED_FOR_EVIDENCE_RECORD_DRAFTING | Response may be used to draft ABI evidence and checksum records |
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

APPROVED_FOR_EVIDENCE_RECORD_DRAFTING is not write-method approval.

## Global acceptance requirements

A response may pass review only if:

- network is Base Sepolia;
- chain ID is 84532;
- ABI source is public or committed;
- ABI source is reviewable;
- ABI source is not screenshot-only;
- ABI source is not chat-only;
- ABI source is not memory-only;
- ABI source is not guessed;
- ABI source is not manually edited without receipt;
- ABI belongs to the expected contract label;
- ABI relates to the expected public deployed address where available;
- ABI checksum can be calculated;
- method classification is provided;
- write methods are identified and blocked;
- explorer/source verification is supplied where available;
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
| ABI source | YES | OPEN |
| ABI path or source URL | YES | OPEN |
| ABI source type | YES | OPEN |
| ABI checksum status | YES | OPEN |
| ABI evidence proposed path | YES | OPEN |
| ABI checksum receipt proposed path | YES | OPEN |
| Related address label | YES | OPEN |
| Related public deployed address | YES where available | OPEN |
| Related address evidence status | YES | OPEN |
| Explorer/source verification URL | YES where available | OPEN |
| Verified contract name | YES where available | OPEN |
| Compiler/source metadata | YES where available | OPEN |
| Read method classification | YES | OPEN |
| Write method classification | YES | OPEN |
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

## ABI source review

For every submitted ABI:

| Check | Status |
| --- | --- |
| ABI source is present unless label is NOT_DEPLOYED | OPEN |
| ABI source is public or committed | OPEN |
| ABI source is reviewable | OPEN |
| ABI source is not screenshot-only | OPEN |
| ABI source is not chat-only | OPEN |
| ABI source is not memory-only | OPEN |
| ABI source is not guessed | OPEN |
| ABI source is not placeholder | OPEN |
| ABI source is not manually edited without receipt | OPEN |
| ABI source is not local uncommitted output | OPEN |
| ABI source belongs to expected contract label | OPEN |
| ABI source has clear network or source scope | OPEN |
| ABI can be parsed where applicable | OPEN |
| ABI checksum can be calculated | OPEN |

Reject the ABI if any required ABI review item fails.

## ABI source hierarchy review

Preferred accepted ABI sources:

1. Committed verified build artifact.
2. Committed release evidence bundle.
3. Verified explorer ABI.
4. Verified contract source output.
5. Repository artifact output.
6. Signed or reviewed source-of-truth response.
7. Human-reviewed public evidence record.

Rejected ABI sources:

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

## Related address review

Every ABI response must be reconciled with related address evidence.

| Check | Status |
| --- | --- |
| Related address label exists or is clearly pending | OPEN |
| Related address is Base Sepolia if supplied | OPEN |
| Related address chain ID is 84532 if supplied | OPEN |
| Related address is not Base mainnet | OPEN |
| Related address is not local Anvil | OPEN |
| Related address evidence status is identified | OPEN |
| Related address checksum status is identified | OPEN |
| ABI is not accepted as standalone production evidence | OPEN |

ABI review may proceed before address evidence is complete, but downstream config must remain blocked until address evidence and checksums are complete.

## Explorer/source verification review

For every explorer/source verification reference:

| Check | Status |
| --- | --- |
| Explorer URL is public | OPEN |
| Explorer URL matches Base Sepolia where address-specific | OPEN |
| Explorer address matches related submitted address where available | OPEN |
| Verified contract name matches expected label or explained alias | OPEN |
| Source verification status is clear | OPEN |
| ABI is available where applicable | OPEN |
| Compiler version is recorded where available | OPEN |
| Optimizer settings are recorded where available | OPEN |
| Constructor args status is recorded where available | OPEN |
| Review date UTC captured | OPEN |

If explorer verification is unavailable, response must explain why.

Unavailable explorer verification does not automatically reject the response, but it keeps downstream evidence in OPEN or BLOCKED status until alternate evidence is accepted.

## ABI parse review

For every ABI intended for config or protocol clients:

| Check | Status |
| --- | --- |
| ABI JSON parses successfully where JSON is provided | OPEN |
| ABI entries are valid ABI objects | OPEN |
| Function entries include type | OPEN |
| Function entries include name where required | OPEN |
| State mutability is present or safely classifiable | OPEN |
| Events are identifiable as events | OPEN |
| Errors are identifiable as errors | OPEN |
| Fallback and receive are identifiable | OPEN |
| Malformed entries are absent or documented | OPEN |

Malformed ABI must be BLOCKED or REJECTED.

## Method classification review

Every ABI intended for protocol-client use must be classified.

| ABI item | Required default | Status |
| --- | --- | --- |
| view function | Block unless allowlisted | OPEN |
| pure function | Block unless allowlisted | OPEN |
| nonpayable function | Block | OPEN |
| payable function | Block | OPEN |
| constructor | Block | OPEN |
| fallback | Block | OPEN |
| receive | Block | OPEN |
| event | Query only if explicitly allowed | OPEN |
| error | Decode only if safe | OPEN |

If mutability is missing, block.

If method classification is unclear, block.

If method can change state, block.

If method is payable, block.

## Read method review

Candidate read methods may be proposed only after classification.

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

A read method proposal does not approve public demo launch.

A read method proposal does not approve mainnet launch.

## Write method blocker review

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

## ABI checksum review

Every accepted ABI must proceed to checksum review.

Required checksum questions:

| Check | Status |
| --- | --- |
| Raw ABI source captured | OPEN |
| Normalized ABI representation captured where applicable | OPEN |
| Checksum method identified | OPEN |
| Checksum value calculated | OPEN |
| Checksum reviewer identified | OPEN |
| Checksum review date UTC identified | OPEN |
| Source document identified | OPEN |
| Source commit identified | OPEN |
| Mismatch status captured | OPEN |
| Network captured | OPEN |
| Chain ID captured | OPEN |
| Contract label captured | OPEN |
| No-secret confirmation captured | OPEN |

Checksum pass is not write approval.

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
| Public ABI source only | OPEN |
| Public explorer links only | OPEN |
| Public source references only | OPEN |
| Public contract labels only | OPEN |
| Public commits or artifacts only | OPEN |
| No private signer material | OPEN |
| No wallet secrets | OPEN |
| No RPC secrets | OPEN |
| No custody secrets | OPEN |
| No privileged legal material | OPEN |

## Screenshot and chat review

Screenshot-only ABI evidence is not accepted.

Chat-only ABI evidence is not accepted.

Memory-only ABI evidence is not accepted.

A screenshot may help locate public information but cannot be the final source of truth.

A chat message may help locate public information but cannot be the final source of truth.

Final evidence must be traceable to public or committed sources.

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
| ABI does not approve public demo launch | OPEN |
| ABI does not approve mainnet use | OPEN |

## Base Sepolia address map reconciliation

Every ABI response must be reconciled with:

docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_MAP.md

Reconciliation checks:

| Check | Status |
| --- | --- |
| Related label appears in address map or justified as new | OPEN |
| Related network matches Base Sepolia if address supplied | OPEN |
| Related chain ID matches 84532 if address supplied | OPEN |
| ABI and address relationship is documented | OPEN |
| No production address approval implied | OPEN |
| No mainnet address approval implied | OPEN |

## Evidence artifact creation decision

After review, each row must be assigned a next action:

| Next action | Meaning |
| --- | --- |
| CREATE_ABI_EVIDENCE_RECORD | Enough data to draft ABI evidence |
| CREATE_ABI_CHECKSUM_RECEIPT | Enough data to draft ABI checksum |
| CREATE_EXPLORER_VERIFICATION_RECEIPT | Enough data to draft explorer/source verification receipt |
| CREATE_METHOD_CLASSIFICATION_RECORD | Enough data to draft method classification record if needed |
| REQUEST_MORE_INFO | More public information required |
| REJECT | Data cannot be accepted |
| MARK_NOT_DEPLOYED | Contract not deployed in scope |
| MARK_NOT_APPLICABLE | Contract not applicable in scope |

No generated config may be created directly from the response.

ABI evidence records and checksum receipts must be created first.

## Public demo boundary

This checklist does not approve public Base Sepolia demo launch.

A reviewed ABI response does not approve public demo launch.

ABI evidence records do not approve public demo launch.

ABI checksum receipts do not approve public demo launch.

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

A reviewed ABI response does not approve generated read-only config.

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

## Protocol client boundary

This checklist does not approve protocol client implementation.

A reviewed ABI response does not approve protocol client implementation.

Protocol clients remain blocked until:

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

## Mainnet boundary

No Base Sepolia ABI response may be used as Base mainnet evidence.

No Base Sepolia ABI may be used as final Base mainnet ABI evidence without separate review.

No Base Sepolia ABI may be treated as production ABI approval.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

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
| I reviewed the ABI response against this checklist | OPEN |
| I confirmed Base Sepolia network and chain ID | OPEN |
| I confirmed public-only ABI source | OPEN |
| I confirmed ABI source is reviewable | OPEN |
| I confirmed no secrets are present | OPEN |
| I confirmed no screenshot-only evidence accepted | OPEN |
| I confirmed no chat-only evidence accepted | OPEN |
| I confirmed no memory-only evidence accepted | OPEN |
| I confirmed no manually edited ABI accepted without receipt | OPEN |
| I confirmed write methods remain blocked | OPEN |
| I confirmed no deployment approval is implied | OPEN |
| I confirmed no public demo approval is implied | OPEN |
| I confirmed no mainnet approval is implied | OPEN |
| I assigned a final review status | OPEN |

## No-go conditions

Do not accept guessed ABIs.

Do not accept placeholder ABIs.

Do not accept screenshot-only ABI evidence.

Do not accept chat-only ABI evidence.

Do not accept memory-only ABI evidence.

Do not accept manually edited ABIs without receipt.

Do not use local uncommitted ABI artifacts.

Do not approve write methods from ABI presence.

Do not approve transaction broadcast from ABI presence.

Do not use Base Sepolia ABI as mainnet ABI approval.

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

Do not use this checklist as production ABI approval.

Do not use this checklist as production address approval.

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
- it reviews public ABI source only;
- it reviews public evidence only;
- it states Base Sepolia is testnet-only;
- it states Base Sepolia has no production value;
- it states Base Sepolia has no mainnet rights;
- it states this checklist does not authorize deployment;
- it states this checklist does not authorize public demo launch;
- it states this checklist does not authorize mainnet approval;
- it defines required response review fields;
- it defines ABI source review requirements;
- it defines ABI source hierarchy review;
- it defines related address review;
- it defines explorer/source verification review;
- it defines ABI parse review;
- it defines method classification review;
- it defines write method blocker review;
- it defines ABI checksum review;
- it defines no-secret review;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
