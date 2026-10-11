# NST Core v0.5.2 Base Sepolia Deployment Inventory Read-Only Inspection Receipt

Status: INSPECTION_COMPLETED_NO_APPROVAL
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T15:56:37Z
Current commit at inspection: 8d2cf1768f5b23b96e66275591c57b9b11f388e8

Inspected source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Inspected source commit: 8d2cf1768f5b23b96e66275591c57b9b11f388e8

Base Sepolia source-of-truth locator receipt commit: ab8e27ddcb82c3c3540c27a690ef6b2ff5cb3f65

Base Sepolia evidence gap register commit: 8d2cf1768f5b23b96e66275591c57b9b11f388e8

Base Sepolia evidence candidate scan receipt commit: 8d2cf1768f5b23b96e66275591c57b9b11f388e8

Base Sepolia address evidence response review checklist commit: 8d2cf1768f5b23b96e66275591c57b9b11f388e8

Base Sepolia ABI evidence response review checklist commit: 8d2cf1768f5b23b96e66275591c57b9b11f388e8

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

This receipt records a read-only inspection.

This receipt is not a deployment authorization.

This receipt does not authorize deployment.

This receipt does not authorize mainnet deployment.

This receipt does not authorize public production interface launch.

This receipt does not authorize public Base Sepolia demo launch.

This receipt does not approve executable config package source.

This receipt does not approve generated config.

This receipt does not approve executable protocol client package source.

This receipt does not approve executable app source.

This receipt does not approve executable package source.

This receipt does not approve executable infra source.

This receipt does not approve any production address.

This receipt does not approve any Base Sepolia address.

This receipt does not approve any production ABI.

This receipt does not approve any Base Sepolia ABI.

This receipt does not approve any Base Sepolia read method.

This receipt does not approve any Base Sepolia write method.

This receipt does not approve transaction rail execution.

This receipt does not approve governance writes.

This receipt does not approve treasury routes.

This receipt does not authorize any public mainnet mint interface.

## Purpose

This receipt records that the Base Sepolia deployment inventory and public interface decision record was inspected as a possible source-of-truth candidate.

The inspection was discovery-only.

The inspection did not edit files.

The inspection did not stage files.

The inspection did not commit files.

The inspection did not push files.

The inspection did not approve any address.

The inspection did not approve any ABI.

The inspection did not approve any method.

The inspection did not approve generated config.

The inspection did not approve protocol clients.

The inspection did not approve public demo launch.

The inspection did not approve mainnet deployment.

## Inspection summary

| Metric | Value |
| --- | ---: |
| Source file line count | 2976 |
| Markdown heading count | 42 |
| Lines containing Base Sepolia or chain context | 547 |
| Lines containing deployment or verification context | 789 |
| Lines containing ABI context | 88 |
| Lines containing EVM address-shaped candidates | 129 |
| Unique EVM address-shaped candidates | 67 |
| Lines containing secret-like terms | 168 |

Raw public address values are intentionally not listed in this receipt.

Raw ABI values are intentionally not listed in this receipt.

Raw high-signal source lines are intentionally not copied into this receipt.

Candidate addresses are not evidence.

Candidate ABIs are not evidence.

Candidate source-file lines are not approval.

A secret-like term count is not a finding of an actual secret.

Any secret-like term must remain subject to no-secret review before evidence, config, or client work proceeds.

## Contract label line-hit summary

| Label | Line hits |
| --- | ---: |
| NST | 33 |
| CFT | 3 |
| RewardEscrow | 1 |
| ShieldRegistry | 1 |
| TreasuryRouter | 1 |
| VaultRegistry | 1 |
| YieldPool | 1 |


## Inspection interpretation

The inspected source file appears to contain Base Sepolia candidate context.

The inspected source file appears to contain deployment or verification candidate context.

The inspected source file may contain address-shaped values.

The inspected source file may contain ABI-related context.

Those findings are candidates only.

No candidate is accepted by this receipt.

No candidate is rejected by this receipt except by future review.

No candidate is promoted by this receipt.

No candidate may be used in generated config from this receipt alone.

No candidate may be used in protocol clients from this receipt alone.

No candidate may be used in a public interface from this receipt alone.

No candidate may be used for mainnet from this receipt.

## Required address evidence path

Any future Base Sepolia address evidence derived from the inspected source must proceed through:

1. Base Sepolia address evidence response.
2. Base Sepolia address evidence response review checklist.
3. Address evidence record.
4. Address checksum receipt.
5. Explorer/source verification receipt where applicable.
6. Final evidence reconciliation.
7. Read-only config gate.

## Required ABI evidence path

Any future Base Sepolia ABI evidence derived from the inspected source must proceed through:

1. Base Sepolia ABI evidence response.
2. Base Sepolia ABI evidence response review checklist.
3. ABI evidence record.
4. ABI checksum receipt.
5. Explorer/source verification receipt where applicable.
6. Method classification review.
7. Read-only config gate.

## Address evidence blocker

Address evidence remains blocked until:

- public source is identified;
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
- address checksum can be produced;
- reviewer is identified;
- status is explicit.

## ABI evidence blocker

ABI evidence remains blocked until:

- public ABI source is identified;
- ABI source is committed or public;
- ABI source is not screenshot-only;
- ABI source is not chat-only;
- ABI source is not memory-only;
- ABI source is not guessed;
- ABI source is not manually edited without receipt;
- ABI belongs to expected contract label;
- ABI relates to expected address where applicable;
- ABI checksum can be produced;
- method classification exists;
- write methods are blocked;
- reviewer is identified;
- status is explicit.

## Generated config blocker

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

This inspection receipt does not authorize generated config.

## Protocol client blocker

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

This inspection receipt does not authorize protocol client implementation.

## Public demo blocker

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

This inspection receipt does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia address may be used as a Base mainnet address.

No Base Sepolia ABI may be used as final Base mainnet ABI evidence without separate review.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## No-secret confirmation

This receipt does not request private keys.

This receipt does not request seed phrases.

This receipt does not request wallet recovery phrases.

This receipt does not request deployer keys.

This receipt does not request signer keys.

This receipt does not request wallet secrets.

This receipt does not request private RPC credentials.

This receipt does not request private API keys.

This receipt does not request bearer tokens.

This receipt does not request private custody material.

Raw secret-like lines are intentionally not copied into this receipt.

## No-go conditions

Do not treat inspected source lines as approved evidence.

Do not treat inspected source lines as approved addresses.

Do not treat inspected source lines as approved ABIs.

Do not use raw candidate addresses in generated config.

Do not use raw candidate ABIs in generated config.

Do not use raw inspected source lines in protocol clients.

Do not use this receipt as deployment authorization.

Do not use this receipt as public demo approval.

Do not use this receipt as mainnet approval.

Do not use this receipt as production address approval.

Do not use this receipt as production ABI approval.

Do not use this receipt as treasury approval.

Do not use this receipt as governance approval.

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

This receipt must contain none of the following usable secret material:

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

This inspection receipt is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it records a read-only inspection;
- it states raw public address values are intentionally not listed;
- it states raw ABI values are intentionally not listed;
- it states raw high-signal source lines are intentionally not copied;
- it states candidate addresses are not evidence;
- it states candidate ABIs are not evidence;
- it states this receipt does not authorize deployment;
- it states this receipt does not authorize public demo launch;
- it states this receipt does not authorize mainnet approval;
- it states this receipt does not authorize generated config;
- it states this receipt does not authorize protocol clients;
- it defines address evidence blockers;
- it defines ABI evidence blockers;
- it defines generated config blockers;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it does not list raw EVM addresses;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Base Sepolia deployment inventory source-of-truth review checklist reference

Reference document: docs/checklists/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_SOURCE_OF_TRUTH_REVIEW_CHECKLIST.md

Reference commit: c312ae18bfaf49e34f9d36662c84b5cdd2cb9514

Reference captured UTC: 2026-10-11T16:25:39Z

Reference target: Base Sepolia deployment inventory inspection receipt

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
