# NST Core v0.5.2 Base Sepolia Supplemental Address Evidence Response

Status: SUPPLEMENTAL_DRAFT_RESPONSE_PENDING_REVIEW
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T18:15:39Z
Current commit at supplemental response creation: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Primary source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Primary source file commit: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Source-of-truth review receipt commit: 177590ef7e3a192bf423bfa1f10c95f6f718a253

Original address evidence response commit: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Original address evidence response review receipt commit: f6acfe1a7e4fb09d9bc9957bddd1b40e4d6643d0

Address evidence request packet commit: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Address evidence response review checklist commit: 9e2ad697af1ffe402ff16309e941e2f88e3ec0fa

Base Sepolia evidence gap register commit: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Reason for supplemental response: original address evidence response review completed with no approved candidate IDs.

This supplemental response excludes the original response and review artifacts as candidate sources.

This supplemental response is not an address evidence record.

This supplemental response is not an address checksum receipt.

This supplemental response is not a deployment authorization.

This supplemental response does not authorize deployment.

This supplemental response does not authorize mainnet deployment.

This supplemental response does not authorize public production interface launch.

This supplemental response does not authorize public Base Sepolia demo launch.

This supplemental response does not approve executable config package source.

This supplemental response does not approve generated config.

This supplemental response does not approve executable protocol client package source.

This supplemental response does not approve executable app source.

This supplemental response does not approve executable package source.

This supplemental response does not approve executable infra source.

This supplemental response does not approve any production address.

This supplemental response does not approve any Base Sepolia address.

This supplemental response does not approve any production ABI.

This supplemental response does not approve any Base Sepolia ABI.

This supplemental response does not approve any Base Sepolia read method.

This supplemental response does not approve any Base Sepolia write method.

This supplemental response does not approve transaction rail execution.

This supplemental response does not approve governance writes.

This supplemental response does not approve treasury routes.

This supplemental response does not authorize any public mainnet mint interface.

## Purpose

This supplemental response extracts non-derived label-qualified Base Sepolia address candidates.

The purpose is to remediate the original response review blocker where no candidate IDs were approved.

This response requires separate review before any supplemental candidate may become an address evidence record.

No address in this response is approved.

No address in this response may be used in generated config.

No address in this response may be used in protocol clients.

No address in this response may be used in a public interface.

No address in this response may be used for mainnet.

## Extraction method

Extraction scope: tracked non-derived source files.

Excluded as candidate sources:

- original Base Sepolia address evidence response;
- original address evidence response review receipt;
- source-of-truth locator receipts;
- inspection receipts;
- source-of-truth review receipts;
- address evidence records;
- address checksum receipts;
- generated/build/cache/output files.

Extraction method: strict EVM address-shaped regex with hex-boundary protection.

Qualification method:

- Base Sepolia context required;
- chain ID 84532 context required;
- deployment or verification context required;
- label context required.

## Supplemental extraction summary

| Metric | Value |
| --- | ---: |
| Supplemental qualified candidates | 43 |
| Zero address included | NO |
| Derived response artifacts used as sources | NO |
| Secret-assignment-shaped source files used | NO |

## Supplemental candidate address table

| Supplemental ID | Candidate address | Source file | Source line | Source heading context | Detected labels | Base context | Chain 84532 context | Deployment context | Supplemental response status |
| ---: | --- | --- | ---: | --- | --- | --- | --- | --- | --- |
| S1 | `0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 343 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, Router, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S2 | `0x3b81f369a25a4a2a41dadf68aebb44206d908db0` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 351 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, Router, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S3 | `0xb7f8bc63bbcad18155201308c8f3540b07f84f5e` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 355 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, Router, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S4 | `0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 445 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S5 | `0x65d7a28e3265b37a6474929f336521b332c1681b` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 349 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, Router, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S6 | `0xd8ca133624850dd9e2f19a35606527e7d80c79d4` | docs/NST_LATTICE_MASTER_SPEC.md | 531 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S7 | `0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b` | docs/NST_LATTICE_MASTER_SPEC.md | 532 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S8 | `0x9d3f9dc182ef22da7521234e13b0d34220f00a7b` | docs/NST_LATTICE_MASTER_SPEC.md | 533 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S9 | `0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c` | docs/NST_LATTICE_MASTER_SPEC.md | 534 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S10 | `0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0` | docs/NST_LATTICE_MASTER_SPEC.md | 535 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S11 | `0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c` | docs/NST_LATTICE_MASTER_SPEC.md | 536 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S12 | `0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15` | docs/NST_LATTICE_MASTER_SPEC.md | 537 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S13 | `0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D` | docs/NST_LATTICE_MASTER_SPEC.md | 538 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S14 | `0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b` | docs/NST_LATTICE_MASTER_SPEC.md | 539 | ## 20. Immediate Build Tranche<br>## 21. Immediate Next Task<br># NST Core Base Sepolia Release v0.5.1-base-sepolia-live<br>## Deployed contracts | CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S15 | `0x70997970C51812dc3A010C7d01b50e0d17dc79C8` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 357 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, Router, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S16 | `0xbbfb55d933c2bfa638763473275b1d84c4418e58` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 364 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S17 | `0x14dC79964da2C08b23698B3D3cc7Ca32193d9955` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 365 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S18 | `0x2f2ff15d00000000000000000000000000000000` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 340 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S19 | `0x8a791620dd6260079bf849dc5567adc3f2fdc318` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 341 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S20 | `0xd547741f00000000000000000000000000000000` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 348 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, Router, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S21 | `0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 350 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S22 | `0x2f2ff15d65d7a28e3265b37a6474929f336521b3` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 354 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S23 | `0x2f2ff15dbbfb55d933c2bfa638763473275b1d84` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 370 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S24 | `0xd547741f65d7a28e3265b37a6474929f336521b3` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 392 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S25 | `0x420acf02ff0b8557021e34ff70cc43a4c4926889` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 339 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S26 | `0x63ee28336a4efd3e337a49bce4c99589ba3fb66c` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 344 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S27 | `0x4915a339439183d8f2c040e56c7310f17c3102ba` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 353 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Registry, ShieldRegistry, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S28 | `0x90F79bf6EB2c4f870365E785982E1f101E93b906` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 358 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S29 | `0xea737b9211d831676c5fd044d867f3adc7ec75f5` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 359 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | CFT, NST, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S30 | `0xe4874dc70032d8ea9c58f61b6942350347ffd0b3` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 366 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S31 | `0x2200e06be1b493cbc9f568f22a841ba846bead38` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 369 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S32 | `0x2f2ff15daa281724df8796c05531061ce14f56e5` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 429 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S33 | `0x6336f3ac00000000000000000000000090f79bf6` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 435 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S34 | `0x411405669cd08a9afdb63030164d8c2a642056c6` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 436 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S35 | `0x4A679253410272dd5232B3Ff7cF5dbB88f295319` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 442 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S36 | `0x610178dA211FEF7D417bC0e6FeD39F05609AD788` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 443 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S37 | `0x712516e61C8B383dF4A63CFe83d7701Bce54B03e` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 444 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S38 | `0xde2DB49f523C042686B473A912C31e6eDC0E0979` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 446 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S39 | `0xfbAb4aa40C202E4e80390171E82379824f7372dd` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 447 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S40 | `0x798bb3aba78a052f011f8d738c09b7eb2c6b3e30` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 448 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S41 | `0x0D4ff719551E23185Aeb16FFbF2ABEbB90635942` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 455 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S42 | `0x2279B7A0a67DB372996a5FaB50D91eAA73d2eBe6` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 456 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| S43 | `0x322813Fd9A801c5507c9de605d63CEA4f2CE6c44` | docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md | 457 | ## No-go conditions<br>## Current status<br>## Base Sepolia keyword hit excerpt<br>## Unique address-like string excerpt | NST, Router, Treasury | YES | YES | YES | SUPPLEMENTAL_CANDIDATE_NEEDS_RESPONSE_REVIEW |


## Required review

This supplemental response must be reviewed against:

- docs/checklists/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

The review must decide which supplemental candidates, if any, may proceed to:

- Base Sepolia address evidence records;
- address checksum receipts;
- explorer/source verification receipts where applicable.

No supplemental candidate may proceed directly to generated config.

No supplemental candidate may proceed directly to protocol clients.

No supplemental candidate may proceed directly to a public demo.

No supplemental candidate may proceed directly to mainnet.

## Candidate acceptance requirements

A supplemental candidate address may proceed only if review confirms:

- the source file is committed;
- the source file is non-derived;
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

Address evidence records remain blocked until this supplemental response passes review.

This supplemental response does not create address evidence records.

This supplemental response does not create address checksum receipts.

This supplemental response does not create explorer verification receipts.

This supplemental response does not close Base Sepolia evidence gaps.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- supplemental address evidence response review is complete;
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

This supplemental response does not authorize generated config.

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

This supplemental response does not authorize protocol client implementation.

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

This supplemental response does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia address may be used as a Base mainnet address.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## No-secret confirmation

This supplemental response does not request private keys.

This supplemental response does not request seed phrases.

This supplemental response does not request wallet recovery phrases.

This supplemental response does not request deployer keys.

This supplemental response does not request signer keys.

This supplemental response does not request wallet secrets.

This supplemental response does not request private RPC credentials.

This supplemental response does not request private API keys.

This supplemental response does not request bearer tokens.

This supplemental response does not request private custody material.

## No-go conditions

Do not treat supplemental candidate addresses as approved evidence.

Do not treat supplemental candidate addresses as approved Base Sepolia addresses.

Do not use supplemental candidate addresses in generated config.

Do not use supplemental candidate addresses in protocol clients.

Do not use supplemental candidate addresses in public demo source.

Do not use supplemental candidate addresses for mainnet.

Do not use this supplemental response as deployment authorization.

Do not use this supplemental response as public demo approval.

Do not use this supplemental response as mainnet approval.

Do not use this supplemental response as production address approval.

Do not use this supplemental response as production ABI approval.

Do not use this supplemental response as treasury approval.

Do not use this supplemental response as governance approval.

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

This supplemental response must contain none of the following usable secret material:

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

This supplemental address evidence response is acceptable only if:

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
- it excludes original response and review artifacts as candidate sources;
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
