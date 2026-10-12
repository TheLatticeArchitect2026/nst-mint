# NST Core v0.5.2 Base Sepolia Deployment Inventory Source-of-Truth Review Receipt

Status: APPROVED_FOR_RESPONSE_DRAFTING
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T16:34:11Z
Current commit at review: 04043722a316b517a4b60ea46c1f1076357bd25a

Source file reviewed: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source file commit: 04043722a316b517a4b60ea46c1f1076357bd25a

Source-of-truth review checklist commit: c312ae18bfaf49e34f9d36662c84b5cdd2cb9514

Deployment inventory read-only inspection receipt commit: 04043722a316b517a4b60ea46c1f1076357bd25a

Base Sepolia source-of-truth locator receipt commit: 04043722a316b517a4b60ea46c1f1076357bd25a

Base Sepolia evidence gap register commit: 04043722a316b517a4b60ea46c1f1076357bd25a

Base Sepolia address evidence response review checklist commit: 04043722a316b517a4b60ea46c1f1076357bd25a

Base Sepolia ABI evidence response review checklist commit: 04043722a316b517a4b60ea46c1f1076357bd25a

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Final source-review status: APPROVED_FOR_RESPONSE_DRAFTING

Decision: Source may be used to draft Base Sepolia address and ABI evidence responses only.

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

This receipt records a source-of-truth review of the Base Sepolia deployment inventory and public interface decision record.

The review is limited to deciding whether the source may be used to draft evidence-response artifacts.

This receipt does not approve addresses.

This receipt does not approve ABIs.

This receipt does not approve checksum receipts.

This receipt does not approve generated config.

This receipt does not approve protocol clients.

This receipt does not approve public demo launch.

This receipt does not approve mainnet deployment.

## Review summary

| Metric | Value |
| --- | ---: |
| Source file line count | 3255 |
| Markdown heading count | 44 |
| Lines containing Base Sepolia context | 607 |
| Lines containing chain ID 84532 context | 17 |
| Lines containing deployment or verification context | 708 |
| Lines containing ABI context | 100 |
| Lines containing EVM address-shaped candidates | 129 |
| Unique EVM address-shaped candidates | 67 |
| Lines containing secret-like terms | 205 |
| Actual secret-assignment-shaped values detected | 0 |

Raw public address values are intentionally not listed in this receipt.

Raw ABI values are intentionally not listed in this receipt.

Raw source lines are intentionally not copied into this receipt.

Candidate addresses are not evidence.

Candidate ABIs are not evidence.

Candidate source lines are not approval.

A secret-like term count is not a finding of an actual secret.

Actual secret-assignment-shaped values are treated as blockers.

## Hard blockers

- NONE

## Contract label line-hit summary

| Label | Line hits |
| --- | ---: |
| NST | 37 |
| CFT | 3 |
| RewardEscrow | 1 |
| ShieldRegistry | 1 |
| TreasuryRouter | 1 |
| VaultRegistry | 1 |
| YieldPool | 1 |


## Source review conclusion

The source review status is: APPROVED_FOR_RESPONSE_DRAFTING

If status is APPROVED_FOR_RESPONSE_DRAFTING, the source may be used only to draft:

- Base Sepolia address evidence response;
- Base Sepolia ABI evidence response;
- Base Sepolia explorer/source verification response.

If status is APPROVED_FOR_RESPONSE_DRAFTING, the source still may not be used to approve:

- address evidence records;
- address checksum receipts;
- ABI evidence records;
- ABI checksum receipts;
- generated read-only config;
- protocol client implementation;
- application source;
- package source;
- infrastructure source;
- public demo launch;
- mainnet deployment.

If status is BLOCKED, blockers must be resolved before evidence-response drafting.

## Address response drafting boundary

Address evidence response drafting is allowed only if the final source-review status is APPROVED_FOR_RESPONSE_DRAFTING.

Any drafted address response must still pass:

- Base Sepolia address evidence response review checklist;
- address evidence record review;
- address checksum receipt review;
- explorer/source verification review where applicable.

No address is approved by this receipt.

## ABI response drafting boundary

ABI evidence response drafting is allowed only if the final source-review status is APPROVED_FOR_RESPONSE_DRAFTING.

Any drafted ABI response must still pass:

- Base Sepolia ABI evidence response review checklist;
- ABI evidence record review;
- ABI checksum receipt review;
- explorer/source verification review where applicable;
- method classification review;
- write blocklist review.

No ABI is approved by this receipt.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- source review permits response drafting;
- address evidence response review is complete;
- ABI evidence response review is complete;
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
- package tests are satisfied.

This receipt does not authorize generated config.

## Protocol client blocker

Protocol-client implementation remains blocked until:

- Base Sepolia read-only config is approved;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

This receipt does not authorize protocol client implementation.

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

This receipt does not authorize public demo launch.

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

This source-of-truth review receipt is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states the final source-review status;
- it states no address is approved;
- it states no ABI is approved;
- it states no generated config is approved;
- it states no protocol client is approved;
- it states no public demo is approved;
- it states no mainnet deployment is approved;
- it states raw public address values are intentionally not listed;
- it states raw ABI values are intentionally not listed;
- it defines address response drafting boundaries;
- it defines ABI response drafting boundaries;
- it defines generated config blockers;
- it defines protocol client blockers;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it does not list raw EVM addresses;
- it is committed and pushed to the v0.5.2 phase branch.

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
