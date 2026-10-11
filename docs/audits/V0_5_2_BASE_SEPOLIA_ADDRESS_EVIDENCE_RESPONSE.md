# NST Core v0.5.2 Base Sepolia Address Evidence Response

Status: DRAFT_RESPONSE_PENDING_REVIEW
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T17:17:24Z
Current commit at response creation: 9e2ad697af1ffe402ff16309e941e2f88e3ec0fa

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source file commit: 9e2ad697af1ffe402ff16309e941e2f88e3ec0fa

Source-of-truth review receipt commit: 177590ef7e3a192bf423bfa1f10c95f6f718a253

Address evidence request packet commit: 9e2ad697af1ffe402ff16309e941e2f88e3ec0fa

Address evidence response review checklist commit: 9e2ad697af1ffe402ff16309e941e2f88e3ec0fa

Base Sepolia evidence gap register commit: 9e2ad697af1ffe402ff16309e941e2f88e3ec0fa

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Source-review status required before this response: APPROVED_FOR_RESPONSE_DRAFTING

This response is not an address evidence record.

This response is not an address checksum receipt.

This response is not a deployment authorization.

This response does not authorize deployment.

This response does not authorize mainnet deployment.

This response does not authorize public production interface launch.

This response does not authorize public Base Sepolia demo launch.

This response does not approve executable config package source.

This response does not approve generated config.

This response does not approve executable protocol client package source.

This response does not approve executable app source.

This response does not approve executable package source.

This response does not approve executable infra source.

This response does not approve any production address.

This response does not approve any Base Sepolia address.

This response does not approve any production ABI.

This response does not approve any Base Sepolia ABI.

This response does not approve any Base Sepolia read method.

This response does not approve any Base Sepolia write method.

This response does not approve transaction rail execution.

This response does not approve governance writes.

This response does not approve treasury routes.

This response does not authorize any public mainnet mint interface.

## Purpose

This document responds to the Base Sepolia address evidence request packet by listing strict non-zero EVM address candidates found in the approved source-of-truth boundary.

The response is intentionally limited to candidate extraction.

The response requires separate review before any address can become an evidence record.

No address in this response is approved.

No address in this response may be used in generated config.

No address in this response may be used in protocol clients.

No address in this response may be used in a public interface.

No address in this response may be used for mainnet.

## Extraction method

Extraction source: committed Base Sepolia deployment inventory and public interface decision record.

Extraction method: strict EVM address-shaped regex with hex-boundary protection.

Reason for strict extraction: avoid accidentally capturing the first forty hex characters of calldata, constructor args, transaction input, or long byte strings.

Zero address handling: zero address occurrences are excluded from the candidate table.

Raw source lines are intentionally not copied into this response.

Candidate addresses are listed because this is an address evidence response draft, but the addresses remain unapproved pending review.

## Extraction summary

| Metric | Value |
| --- | ---: |
| Source file line count | 3392 |
| Strict non-zero address candidates | 66 |
| Excluded zero-address occurrences | 4 |
| High-signal candidates needing response review | 0 |
| Candidate entries needing response review | 11 |
| Low-signal candidates needing response review | 55 |
| Actual secret-assignment-shaped values detected | 0 |

## Candidate address table

| ID | Candidate address | Source lines | Nearest heading(s) | Detected labels | Base context | Chain 84532 context | Deployment context | Response status |
| ---: | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | `0xd8ca133624850dd9e2f19a35606527e7d80c79d4` | 258, 347, 352, 362, 368, 377, 390, 401, 407, 426, 428, 433 | ## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, RewardEscrow | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 2 | `0xee9e20b753134e59036ddc8dfa3d15d9be0dda9b` | 266, 394 | ## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, RewardEscrow, TreasuryRouter, VaultRegistry, YieldPool | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 3 | `0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c` | 261, 451 | ## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, RewardEscrow, TreasuryRouter, VaultRegistry, YieldPool | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 4 | `0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0` | 262 | ## Base Sepolia keyword hit excerpt | CFT, NST, RewardEscrow, TreasuryRouter, VaultRegistry, YieldPool | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 5 | `0x9d3f9dc182ef22da7521234e13b0d34220f00a7b` | 260 | ## Base Sepolia keyword hit excerpt | CFT, NST, RewardEscrow, TreasuryRouter, VaultRegistry | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 6 | `0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D` | 265 | ## Base Sepolia keyword hit excerpt | NST, RewardEscrow, TreasuryRouter, VaultRegistry, YieldPool | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 7 | `0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15` | 264 | ## Base Sepolia keyword hit excerpt | NST, RewardEscrow, TreasuryRouter, VaultRegistry, YieldPool | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 8 | `0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b` | 259 | ## Base Sepolia keyword hit excerpt | CFT, NST, RewardEscrow, TreasuryRouter | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 9 | `0x2f2ff15d00000000000000000000000000000000` | 340, 363 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 10 | `0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0` | 351, 367, 388, 389, 405, 406, 422, 424, 431, 432, 434, 441, 458 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 11 | `0x8a791620dd6260079bf849dc5567adc3f2fdc318` | 341, 346 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 12 | `0xb7f8bc63bbcad18155201308c8f3540b07f84f5e` | 355, 361, 371, 376, 393, 400, 416, 421, 438, 450 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 13 | `0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266` | 343, 345, 360, 375, 395, 399, 420, 427, 440, 449 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 14 | `0x420acf02ff0b8557021e34ff70cc43a4c4926889` | 339 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | YES | CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 15 | `0x65d7a28e3265b37a6474929f336521b332c1681b` | 349, 372, 387, 439 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 16 | `0x14dC79964da2C08b23698B3D3cc7Ca32193d9955` | 365, 397, 418 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 17 | `0x70997970C51812dc3A010C7d01b50e0d17dc79C8` | 357, 425, 454 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 18 | `0xbbfb55d933c2bfa638763473275b1d84c4418e58` | 364, 396, 404 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 19 | `0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c` | 263 | ## Base Sepolia keyword hit excerpt | CFT, NST, RewardEscrow, TreasuryRouter, VaultRegistry, YieldPool | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 20 | `0x2f2ff15d65d7a28e3265b37a6474929f336521b3` | 354, 378 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 21 | `0x2f2ff15dbbfb55d933c2bfa638763473275b1d84` | 370, 403 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 22 | `0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC` | 350, 373 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 23 | `0xd547741f00000000000000000000000000000000` | 348, 437 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 24 | `0xd547741f65d7a28e3265b37a6474929f336521b3` | 392, 452 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 25 | `0x09635f643e140090a9a8dcd712ed6285858cebef` | 409 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 26 | `0x0D4ff719551E23185Aeb16FFbF2ABEbB90635942` | 455 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 27 | `0x0dcd1bf9a1b36ce34237eeafef220932846bcd82` | 423 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 28 | `0x14cf8854c81a9b4e8a667a4e34d8fb35568209f2` | 398 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 29 | `0x2200e06be1b493cbc9f568f22a841ba846bead38` | 369 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 30 | `0x2279B7A0a67DB372996a5FaB50D91eAA73d2eBe6` | 456 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 31 | `0x25823337b2857ea143c2faa955c9db28c54e9c88` | 379 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 32 | `0x2f2ff15daa281724df8796c05531061ce14f56e5` | 429 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 33 | `0x2fc631e4b3018258759c52af169200213e84abab` | 410 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 34 | `0x322813Fd9A801c5507c9de605d63CEA4f2CE6c44` | 457 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 35 | `0x394e5e1fa9aaab83c164c78d5a3e1c0fa61a2478` | 380 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 36 | `0x3e8b26ad2827fd545a3c107fb3918e874ca46acd` | 419 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 37 | `0x411405669cd08a9afdb63030164d8c2a642056c6` | 436 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 38 | `0x44bc25c39ccbc05c6afcbd09cbb5d5c0845ff4fa` | 381 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 39 | `0x4915a339439183d8f2c040e56c7310f17c3102ba` | 353 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 40 | `0x4A679253410272dd5232B3Ff7cF5dbB88f295319` | 442 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 41 | `0x4cedf6104ba9ee94465add7452adc6f093660c3c` | 411 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 42 | `0x59f2f1fcfe2474fd5f0b9ba1e73ca90b143eb8d0` | 412 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 43 | `0x5fc8d32690cc91d4c39d9d3abcbd16989f875707` | 413 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 44 | `0x610178dA211FEF7D417bC0e6FeD39F05609AD788` | 443 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 45 | `0x62d42819dca354d6c688847a3a6893e95ff0f22b` | 382 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 46 | `0x6336f3ac00000000000000000000000090f79bf6` | 435 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 47 | `0x63ee28336a4efd3e337a49bce4c99589ba3fb66c` | 344 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 48 | `0x6ebc066c96e81b67b92b2e428ffded6c6b36cec6` | 374 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 49 | `0x712516e61C8B383dF4A63CFe83d7701Bce54B03e` | 444 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 50 | `0x798bb3aba78a052f011f8d738c09b7eb2c6b3e30` | 448 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 51 | `0x90F79bf6EB2c4f870365E785982E1f101E93b906` | 358 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 52 | `0x955b1f83caec5b90dbc6eee8af9ce4599fb99a96` | 408 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 53 | `0x9cc65f4fb56ede7c29a9ee1f8b27f844d28a4ec7` | 383 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 54 | `0x9fe46736679d2d9a65f0992f2272de9f3c7fa6e0` | 402 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 55 | `0xa51c1fc2f0d1a1b8494ed1fe312d7c3a78ed91c0` | 414 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 56 | `0xaa281724df8796c05531061ce14f56e5f1d6bed4` | 417 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 57 | `0xb4f1cf299983f0e377ce204adfa93decfea46698` | 384 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 58 | `0xc674b68eb8b639e3662755cad99fa99f89821420` | 391 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 59 | `0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9` | 445 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 60 | `0xd547741fbbfb55d933c2bfa638763473275b1d84` | 415 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 61 | `0xde2DB49f523C042686B473A912C31e6eDC0E0979` | 446 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 62 | `0xe4874dc70032d8ea9c58f61b6942350347ffd0b3` | 366 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 63 | `0xea737b9211d831676c5fd044d867f3adc7ec75f5` | 359 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 64 | `0xf4699ec33753af3bfa348feabe5881b1a9e379bb` | 385 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 65 | `0xfbAb4aa40C202E4e80390171E82379824f7372dd` | 447 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| 66 | `0xfc314a6fde1955aff2ab9b0528f5dfd207a7aff3` | 386 | ## Unique address-like string excerpt | UNLABELED_REQUIRES_REVIEW | YES | NO | NO | LOW_SIGNAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |


## Required review

This response must be reviewed against:

- docs/checklists/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

The review must decide which candidates, if any, may proceed to:

- Base Sepolia address evidence records;
- address checksum receipts;
- explorer/source verification receipts where applicable.

No candidate may proceed directly to generated config.

No candidate may proceed directly to protocol clients.

No candidate may proceed directly to a public demo.

No candidate may proceed directly to mainnet.

## Candidate acceptance requirements

A candidate address may proceed only if review confirms:

- the source file is committed;
- the source file is Base Sepolia scoped;
- chain ID is 84532;
- the candidate is not a placeholder;
- the candidate is not TBD;
- the candidate is not local Anvil;
- the candidate is not Base mainnet;
- the candidate is not screenshot-only;
- the candidate is not chat-only;
- the candidate is not memory-only;
- the candidate is not guessed;
- the candidate can be tied to a contract label or explicitly marked as rejected;
- the candidate can be checksum-normalized in a later receipt;
- no secret material is present;
- the final review status is explicit.

## Address evidence record blocker

Address evidence records remain blocked until this response passes the address evidence response review checklist.

This response does not create address evidence records.

This response does not create address checksum receipts.

This response does not create explorer verification receipts.

This response does not close Base Sepolia evidence gaps.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- address evidence response review is complete;
- accepted address evidence records are complete;
- accepted address checksum receipts are complete;
- ABI evidence response review is complete;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- explorer/source verification receipts are complete where applicable;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

This response does not authorize generated config.

## Protocol client blocker

Protocol-client implementation remains blocked until:

- Base Sepolia read-only config is approved;
- address evidence records are complete;
- address checksum receipts are complete;
- ABI evidence records are complete;
- ABI checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

This response does not authorize protocol client implementation.

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

This response does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia address may be used as a Base mainnet address.

No Base Sepolia ABI may be used as final Base mainnet ABI evidence without separate review.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## No-secret confirmation

This response does not request private keys.

This response does not request seed phrases.

This response does not request wallet recovery phrases.

This response does not request deployer keys.

This response does not request signer keys.

This response does not request wallet secrets.

This response does not request private RPC credentials.

This response does not request private API keys.

This response does not request bearer tokens.

This response does not request private custody material.

Raw source lines are intentionally not copied into this response.

## No-go conditions

Do not treat candidate addresses as approved evidence.

Do not treat candidate addresses as approved Base Sepolia addresses.

Do not use candidate addresses in generated config.

Do not use candidate addresses in protocol clients.

Do not use candidate addresses in public demo source.

Do not use candidate addresses for mainnet.

Do not use this response as deployment authorization.

Do not use this response as public demo approval.

Do not use this response as mainnet approval.

Do not use this response as production address approval.

Do not use this response as production ABI approval.

Do not use this response as treasury approval.

Do not use this response as governance approval.

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

## Secret exclusion checklist

This response must contain none of the following usable secret material:

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

This address evidence response is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states the response is pending review;
- it states no address is approved;
- it states no generated config is approved;
- it states no protocol client is approved;
- it states no public demo is approved;
- it states no mainnet deployment is approved;
- it lists strict non-zero address candidates only;
- it excludes zero address occurrences from the candidate table;
- it defines candidate acceptance requirements;
- it defines generated config blockers;
- it defines protocol client blockers;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
