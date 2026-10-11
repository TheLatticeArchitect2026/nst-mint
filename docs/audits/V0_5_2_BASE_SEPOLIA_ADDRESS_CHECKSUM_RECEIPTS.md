# NST Core v0.5.2 Base Sepolia Address Checksum Receipts

Status: ADDRESS_CHECKSUM_RECEIPTS_COMPLETE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T20:15:17Z
Current commit at checksum receipt creation: 1379d06462222a40e9f7282cefa2590819ce4b24

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Supplemental address evidence response commit: 6429e5a43d8fb6541113f087827448b3dcba6404

Supplemental address evidence response review receipt commit: 75c7864d4302189aef5689c07d2cc4d89ed4365d

Original address evidence response commit: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Original address evidence response review receipt commit: f6acfe1a7e4fb09d9bc9957bddd1b40e4d6643d0

Address checksum receipt template commit: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Address source policy commit: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Base Sepolia evidence gap register commit: 83614aae4a6b4cedd9ff692b79e0bffb08f80e00

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Checksum method: EIP-55 via Foundry cast

Checksum receipt count: 43

This file is not an ABI evidence record.

This file is not a deployment authorization.

This file does not authorize deployment.

This file does not authorize mainnet deployment.

This file does not authorize public production interface launch.

This file does not authorize public Base Sepolia demo launch.

This file does not approve executable config package source.

This file does not approve generated config by itself.

This file does not approve executable protocol client package source.

This file does not approve executable app source.

This file does not approve executable package source.

This file does not approve executable infra source.

This file does not approve any production address.

This file does not approve any Base Sepolia address for use outside evidence processing.

This file does not approve any production ABI.

This file does not approve any Base Sepolia ABI.

This file does not approve any Base Sepolia read method.

This file does not approve any Base Sepolia write method.

This file does not approve transaction rail execution.

This file does not approve governance writes.

This file does not approve treasury routes.

This file does not authorize any public mainnet mint interface.

## Purpose

This document records checksum receipts for Base Sepolia address evidence records.

These receipts verify that each raw address can be normalized to an EIP-55 checksum address with no lower-case mismatch.

These receipts do not unlock generated config by themselves.

These receipts do not unlock protocol clients.

These receipts do not unlock public demo launch.

These receipts do not unlock mainnet deployment.

## Checksum summary table

| Receipt ID | Record ID | Candidate ID | Raw address | Checksum address | Mismatch status | Checksum status |
| --- | --- | --- | --- | --- | --- | --- |
| base-sepolia-address-checksum-receipt-1 | base-sepolia-address-evidence-record-s1 | S1 | `0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266` | `0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-2 | base-sepolia-address-evidence-record-s2 | S2 | `0x3b81f369a25a4a2a41dadf68aebb44206d908db0` | `0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-3 | base-sepolia-address-evidence-record-s3 | S3 | `0xb7f8bc63bbcad18155201308c8f3540b07f84f5e` | `0xB7f8BC63BbcaD18155201308C8f3540b07f84F5e` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-4 | base-sepolia-address-evidence-record-s4 | S4 | `0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9` | `0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-5 | base-sepolia-address-evidence-record-s5 | S5 | `0x65d7a28e3265b37a6474929f336521b332c1681b` | `0x65d7a28e3265b37A6474929f336521B332c1681B` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-6 | base-sepolia-address-evidence-record-s6 | S6 | `0xd8ca133624850dd9e2f19a35606527e7d80c79d4` | `0xD8Ca133624850Dd9E2f19A35606527e7D80C79d4` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-7 | base-sepolia-address-evidence-record-s7 | S7 | `0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b` | `0xe065C2FF035F9d3cCdC4291a1504D6e30daB764B` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-8 | base-sepolia-address-evidence-record-s8 | S8 | `0x9d3f9dc182ef22da7521234e13b0d34220f00a7b` | `0x9D3f9DC182eF22da7521234E13B0d34220F00a7B` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-9 | base-sepolia-address-evidence-record-s9 | S9 | `0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c` | `0xF54F4F6A59568E0FD7DcbEe32B820d9F535a688c` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-10 | base-sepolia-address-evidence-record-s10 | S10 | `0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0` | `0x881db8d5BFc70575B81c29Ca0Cc1ba80beD3FDd0` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-11 | base-sepolia-address-evidence-record-s11 | S11 | `0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c` | `0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-12 | base-sepolia-address-evidence-record-s12 | S12 | `0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15` | `0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-13 | base-sepolia-address-evidence-record-s13 | S13 | `0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D` | `0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-14 | base-sepolia-address-evidence-record-s14 | S14 | `0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b` | `0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-15 | base-sepolia-address-evidence-record-s15 | S15 | `0x70997970C51812dc3A010C7d01b50e0d17dc79C8` | `0x70997970C51812dc3A010C7d01b50e0d17dc79C8` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-16 | base-sepolia-address-evidence-record-s16 | S16 | `0xbbfb55d933c2bfa638763473275b1d84c4418e58` | `0xbBfB55D933c2BFA638763473275B1d84C4418e58` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-17 | base-sepolia-address-evidence-record-s17 | S17 | `0x14dC79964da2C08b23698B3D3cc7Ca32193d9955` | `0x14dC79964da2C08b23698B3D3cc7Ca32193d9955` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-18 | base-sepolia-address-evidence-record-s18 | S18 | `0x2f2ff15d00000000000000000000000000000000` | `0x2F2Ff15D00000000000000000000000000000000` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-19 | base-sepolia-address-evidence-record-s19 | S19 | `0x8a791620dd6260079bf849dc5567adc3f2fdc318` | `0x8A791620dd6260079BF849Dc5567aDC3F2FdC318` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-20 | base-sepolia-address-evidence-record-s20 | S20 | `0xd547741f00000000000000000000000000000000` | `0xd547741f00000000000000000000000000000000` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-21 | base-sepolia-address-evidence-record-s21 | S21 | `0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC` | `0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-22 | base-sepolia-address-evidence-record-s22 | S22 | `0x2f2ff15d65d7a28e3265b37a6474929f336521b3` | `0x2F2FF15D65d7A28e3265b37A6474929F336521b3` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-23 | base-sepolia-address-evidence-record-s23 | S23 | `0x2f2ff15dbbfb55d933c2bfa638763473275b1d84` | `0x2f2Ff15dbBfb55D933c2BFA638763473275B1D84` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-24 | base-sepolia-address-evidence-record-s24 | S24 | `0xd547741f65d7a28e3265b37a6474929f336521b3` | `0xd547741f65d7A28E3265b37a6474929f336521B3` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-25 | base-sepolia-address-evidence-record-s25 | S25 | `0x420acf02ff0b8557021e34ff70cc43a4c4926889` | `0x420aCF02Ff0B8557021E34Ff70cc43a4C4926889` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-26 | base-sepolia-address-evidence-record-s26 | S26 | `0x63ee28336a4efd3e337a49bce4c99589ba3fb66c` | `0x63eE28336A4Efd3e337a49BCe4C99589BA3fB66c` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-27 | base-sepolia-address-evidence-record-s27 | S27 | `0x4915a339439183d8f2c040e56c7310f17c3102ba` | `0x4915a339439183d8F2c040E56C7310f17c3102BA` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-28 | base-sepolia-address-evidence-record-s28 | S28 | `0x90F79bf6EB2c4f870365E785982E1f101E93b906` | `0x90F79bf6EB2c4f870365E785982E1f101E93b906` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-29 | base-sepolia-address-evidence-record-s29 | S29 | `0xea737b9211d831676c5fd044d867f3adc7ec75f5` | `0xEa737B9211D831676C5fD044d867F3aDC7ec75F5` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-30 | base-sepolia-address-evidence-record-s30 | S30 | `0xe4874dc70032d8ea9c58f61b6942350347ffd0b3` | `0xe4874dc70032d8Ea9C58f61B6942350347FFd0B3` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-31 | base-sepolia-address-evidence-record-s31 | S31 | `0x2200e06be1b493cbc9f568f22a841ba846bead38` | `0x2200e06Be1B493CBc9F568f22a841BA846Bead38` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-32 | base-sepolia-address-evidence-record-s32 | S32 | `0x2f2ff15daa281724df8796c05531061ce14f56e5` | `0x2f2ff15DAA281724Df8796C05531061Ce14F56E5` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-33 | base-sepolia-address-evidence-record-s33 | S33 | `0x6336f3ac00000000000000000000000090f79bf6` | `0x6336f3ac00000000000000000000000090f79bF6` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-34 | base-sepolia-address-evidence-record-s34 | S34 | `0x411405669cd08a9afdb63030164d8c2a642056c6` | `0x411405669CD08a9aFDb63030164D8C2A642056c6` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-35 | base-sepolia-address-evidence-record-s35 | S35 | `0x4A679253410272dd5232B3Ff7cF5dbB88f295319` | `0x4A679253410272dd5232B3Ff7cF5dbB88f295319` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-36 | base-sepolia-address-evidence-record-s36 | S36 | `0x610178dA211FEF7D417bC0e6FeD39F05609AD788` | `0x610178dA211FEF7D417bC0e6FeD39F05609AD788` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-37 | base-sepolia-address-evidence-record-s37 | S37 | `0x712516e61C8B383dF4A63CFe83d7701Bce54B03e` | `0x712516e61C8B383dF4A63CFe83d7701Bce54B03e` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-38 | base-sepolia-address-evidence-record-s38 | S38 | `0xde2DB49f523C042686B473A912C31e6eDC0E0979` | `0xde2DB49f523C042686B473A912C31e6eDC0E0979` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-39 | base-sepolia-address-evidence-record-s39 | S39 | `0xfbAb4aa40C202E4e80390171E82379824f7372dd` | `0xfbAb4aa40C202E4e80390171E82379824f7372dd` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-40 | base-sepolia-address-evidence-record-s40 | S40 | `0x798bb3aba78a052f011f8d738c09b7eb2c6b3e30` | `0x798bb3ABa78a052F011f8D738C09B7eb2c6b3e30` | NO_MISMATCH | CHECKSUM_NORMALIZED_FROM_RAW |
| base-sepolia-address-checksum-receipt-41 | base-sepolia-address-evidence-record-s41 | S41 | `0x0D4ff719551E23185Aeb16FFbF2ABEbB90635942` | `0x0D4ff719551E23185Aeb16FFbF2ABEbB90635942` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-42 | base-sepolia-address-evidence-record-s42 | S42 | `0x2279B7A0a67DB372996a5FaB50D91eAA73d2eBe6` | `0x2279B7A0a67DB372996a5FaB50D91eAA73d2eBe6` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |
| base-sepolia-address-checksum-receipt-43 | base-sepolia-address-evidence-record-s43 | S43 | `0x322813Fd9A801c5507c9de605d63CEA4f2CE6c44` | `0x322813Fd9A801c5507c9de605d63CEA4f2CE6c44` | NO_MISMATCH | RAW_ALREADY_CHECKSUM_MATCH |


## Address checksum receipt 1

Receipt ID: base-sepolia-address-checksum-receipt-1

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s1

Candidate ID: S1

Raw address: `0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266`

Checksum-normalized address: `0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, Router, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 343

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 2

Receipt ID: base-sepolia-address-checksum-receipt-2

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s2

Candidate ID: S2

Raw address: `0x3b81f369a25a4a2a41dadf68aebb44206d908db0`

Checksum-normalized address: `0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, Router, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 351

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 3

Receipt ID: base-sepolia-address-checksum-receipt-3

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s3

Candidate ID: S3

Raw address: `0xb7f8bc63bbcad18155201308c8f3540b07f84f5e`

Checksum-normalized address: `0xB7f8BC63BbcaD18155201308C8f3540b07f84F5e`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, Router, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 355

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 4

Receipt ID: base-sepolia-address-checksum-receipt-4

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s4

Candidate ID: S4

Raw address: `0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9`

Checksum-normalized address: `0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 445

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 5

Receipt ID: base-sepolia-address-checksum-receipt-5

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s5

Candidate ID: S5

Raw address: `0x65d7a28e3265b37a6474929f336521b332c1681b`

Checksum-normalized address: `0x65d7a28e3265b37A6474929f336521B332c1681B`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, Router, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 349

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 6

Receipt ID: base-sepolia-address-checksum-receipt-6

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s6

Candidate ID: S6

Raw address: `0xd8ca133624850dd9e2f19a35606527e7d80c79d4`

Checksum-normalized address: `0xD8Ca133624850Dd9E2f19A35606527e7D80C79d4`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 531

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 7

Receipt ID: base-sepolia-address-checksum-receipt-7

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s7

Candidate ID: S7

Raw address: `0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b`

Checksum-normalized address: `0xe065C2FF035F9d3cCdC4291a1504D6e30daB764B`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 532

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 8

Receipt ID: base-sepolia-address-checksum-receipt-8

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s8

Candidate ID: S8

Raw address: `0x9d3f9dc182ef22da7521234e13b0d34220f00a7b`

Checksum-normalized address: `0x9D3f9DC182eF22da7521234E13B0d34220F00a7B`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 533

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 9

Receipt ID: base-sepolia-address-checksum-receipt-9

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s9

Candidate ID: S9

Raw address: `0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c`

Checksum-normalized address: `0xF54F4F6A59568E0FD7DcbEe32B820d9F535a688c`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 534

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 10

Receipt ID: base-sepolia-address-checksum-receipt-10

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s10

Candidate ID: S10

Raw address: `0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0`

Checksum-normalized address: `0x881db8d5BFc70575B81c29Ca0Cc1ba80beD3FDd0`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 535

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 11

Receipt ID: base-sepolia-address-checksum-receipt-11

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s11

Candidate ID: S11

Raw address: `0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c`

Checksum-normalized address: `0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 536

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 12

Receipt ID: base-sepolia-address-checksum-receipt-12

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s12

Candidate ID: S12

Raw address: `0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15`

Checksum-normalized address: `0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 537

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 13

Receipt ID: base-sepolia-address-checksum-receipt-13

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s13

Candidate ID: S13

Raw address: `0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D`

Checksum-normalized address: `0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 538

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 14

Receipt ID: base-sepolia-address-checksum-receipt-14

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s14

Candidate ID: S14

Raw address: `0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b`

Checksum-normalized address: `0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, Escrow, Founder, NST, NSTSBT, Registry, RewardEscrow, Router, SBT, ShieldRegistry, Soul, Treasury, TreasuryRouter, VaultRegistry, Yield, YieldPool

Source file: docs/NST_LATTICE_MASTER_SPEC.md

Source line: 539

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 15

Receipt ID: base-sepolia-address-checksum-receipt-15

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s15

Candidate ID: S15

Raw address: `0x70997970C51812dc3A010C7d01b50e0d17dc79C8`

Checksum-normalized address: `0x70997970C51812dc3A010C7d01b50e0d17dc79C8`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, Router, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 357

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 16

Receipt ID: base-sepolia-address-checksum-receipt-16

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s16

Candidate ID: S16

Raw address: `0xbbfb55d933c2bfa638763473275b1d84c4418e58`

Checksum-normalized address: `0xbBfB55D933c2BFA638763473275B1d84C4418e58`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 364

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 17

Receipt ID: base-sepolia-address-checksum-receipt-17

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s17

Candidate ID: S17

Raw address: `0x14dC79964da2C08b23698B3D3cc7Ca32193d9955`

Checksum-normalized address: `0x14dC79964da2C08b23698B3D3cc7Ca32193d9955`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 365

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 18

Receipt ID: base-sepolia-address-checksum-receipt-18

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s18

Candidate ID: S18

Raw address: `0x2f2ff15d00000000000000000000000000000000`

Checksum-normalized address: `0x2F2Ff15D00000000000000000000000000000000`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 340

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 19

Receipt ID: base-sepolia-address-checksum-receipt-19

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s19

Candidate ID: S19

Raw address: `0x8a791620dd6260079bf849dc5567adc3f2fdc318`

Checksum-normalized address: `0x8A791620dd6260079BF849Dc5567aDC3F2FdC318`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 341

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 20

Receipt ID: base-sepolia-address-checksum-receipt-20

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s20

Candidate ID: S20

Raw address: `0xd547741f00000000000000000000000000000000`

Checksum-normalized address: `0xd547741f00000000000000000000000000000000`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, Router, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 348

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 21

Receipt ID: base-sepolia-address-checksum-receipt-21

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s21

Candidate ID: S21

Raw address: `0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC`

Checksum-normalized address: `0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 350

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 22

Receipt ID: base-sepolia-address-checksum-receipt-22

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s22

Candidate ID: S22

Raw address: `0x2f2ff15d65d7a28e3265b37a6474929f336521b3`

Checksum-normalized address: `0x2F2FF15D65d7A28e3265b37A6474929F336521b3`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 354

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 23

Receipt ID: base-sepolia-address-checksum-receipt-23

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s23

Candidate ID: S23

Raw address: `0x2f2ff15dbbfb55d933c2bfa638763473275b1d84`

Checksum-normalized address: `0x2f2Ff15dbBfb55D933c2BFA638763473275B1D84`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 370

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 24

Receipt ID: base-sepolia-address-checksum-receipt-24

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s24

Candidate ID: S24

Raw address: `0xd547741f65d7a28e3265b37a6474929f336521b3`

Checksum-normalized address: `0xd547741f65d7A28E3265b37a6474929f336521B3`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 392

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 25

Receipt ID: base-sepolia-address-checksum-receipt-25

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s25

Candidate ID: S25

Raw address: `0x420acf02ff0b8557021e34ff70cc43a4c4926889`

Checksum-normalized address: `0x420aCF02Ff0B8557021E34Ff70cc43a4C4926889`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 339

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 26

Receipt ID: base-sepolia-address-checksum-receipt-26

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s26

Candidate ID: S26

Raw address: `0x63ee28336a4efd3e337a49bce4c99589ba3fb66c`

Checksum-normalized address: `0x63eE28336A4Efd3e337a49BCe4C99589BA3fB66c`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 344

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 27

Receipt ID: base-sepolia-address-checksum-receipt-27

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s27

Candidate ID: S27

Raw address: `0x4915a339439183d8f2c040e56c7310f17c3102ba`

Checksum-normalized address: `0x4915a339439183d8F2c040E56C7310f17c3102BA`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Registry, ShieldRegistry, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 353

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 28

Receipt ID: base-sepolia-address-checksum-receipt-28

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s28

Candidate ID: S28

Raw address: `0x90F79bf6EB2c4f870365E785982E1f101E93b906`

Checksum-normalized address: `0x90F79bf6EB2c4f870365E785982E1f101E93b906`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 358

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 29

Receipt ID: base-sepolia-address-checksum-receipt-29

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s29

Candidate ID: S29

Raw address: `0xea737b9211d831676c5fd044d867f3adc7ec75f5`

Checksum-normalized address: `0xEa737B9211D831676C5fD044d867F3aDC7ec75F5`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: CFT, NST, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 359

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 30

Receipt ID: base-sepolia-address-checksum-receipt-30

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s30

Candidate ID: S30

Raw address: `0xe4874dc70032d8ea9c58f61b6942350347ffd0b3`

Checksum-normalized address: `0xe4874dc70032d8Ea9C58f61B6942350347FFd0B3`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 366

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 31

Receipt ID: base-sepolia-address-checksum-receipt-31

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s31

Candidate ID: S31

Raw address: `0x2200e06be1b493cbc9f568f22a841ba846bead38`

Checksum-normalized address: `0x2200e06Be1B493CBc9F568f22a841BA846Bead38`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 369

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 32

Receipt ID: base-sepolia-address-checksum-receipt-32

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s32

Candidate ID: S32

Raw address: `0x2f2ff15daa281724df8796c05531061ce14f56e5`

Checksum-normalized address: `0x2f2ff15DAA281724Df8796C05531061Ce14F56E5`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 429

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 33

Receipt ID: base-sepolia-address-checksum-receipt-33

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s33

Candidate ID: S33

Raw address: `0x6336f3ac00000000000000000000000090f79bf6`

Checksum-normalized address: `0x6336f3ac00000000000000000000000090f79bF6`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 435

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 34

Receipt ID: base-sepolia-address-checksum-receipt-34

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s34

Candidate ID: S34

Raw address: `0x411405669cd08a9afdb63030164d8c2a642056c6`

Checksum-normalized address: `0x411405669CD08a9aFDb63030164D8C2A642056c6`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 436

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 35

Receipt ID: base-sepolia-address-checksum-receipt-35

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s35

Candidate ID: S35

Raw address: `0x4A679253410272dd5232B3Ff7cF5dbB88f295319`

Checksum-normalized address: `0x4A679253410272dd5232B3Ff7cF5dbB88f295319`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 442

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 36

Receipt ID: base-sepolia-address-checksum-receipt-36

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s36

Candidate ID: S36

Raw address: `0x610178dA211FEF7D417bC0e6FeD39F05609AD788`

Checksum-normalized address: `0x610178dA211FEF7D417bC0e6FeD39F05609AD788`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 443

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 37

Receipt ID: base-sepolia-address-checksum-receipt-37

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s37

Candidate ID: S37

Raw address: `0x712516e61C8B383dF4A63CFe83d7701Bce54B03e`

Checksum-normalized address: `0x712516e61C8B383dF4A63CFe83d7701Bce54B03e`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 444

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 38

Receipt ID: base-sepolia-address-checksum-receipt-38

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s38

Candidate ID: S38

Raw address: `0xde2DB49f523C042686B473A912C31e6eDC0E0979`

Checksum-normalized address: `0xde2DB49f523C042686B473A912C31e6eDC0E0979`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 446

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 39

Receipt ID: base-sepolia-address-checksum-receipt-39

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s39

Candidate ID: S39

Raw address: `0xfbAb4aa40C202E4e80390171E82379824f7372dd`

Checksum-normalized address: `0xfbAb4aa40C202E4e80390171E82379824f7372dd`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 447

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 40

Receipt ID: base-sepolia-address-checksum-receipt-40

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s40

Candidate ID: S40

Raw address: `0x798bb3aba78a052f011f8d738c09b7eb2c6b3e30`

Checksum-normalized address: `0x798bb3ABa78a052F011f8D738C09B7eb2c6b3e30`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: CHECKSUM_NORMALIZED_FROM_RAW

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 448

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 41

Receipt ID: base-sepolia-address-checksum-receipt-41

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s41

Candidate ID: S41

Raw address: `0x0D4ff719551E23185Aeb16FFbF2ABEbB90635942`

Checksum-normalized address: `0x0D4ff719551E23185Aeb16FFbF2ABEbB90635942`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 455

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 42

Receipt ID: base-sepolia-address-checksum-receipt-42

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s42

Candidate ID: S42

Raw address: `0x2279B7A0a67DB372996a5FaB50D91eAA73d2eBe6`

Checksum-normalized address: `0x2279B7A0a67DB372996a5FaB50D91eAA73d2eBe6`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 456

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.


## Address checksum receipt 43

Receipt ID: base-sepolia-address-checksum-receipt-43

Status: CHECKSUM_RECEIPT_COMPLETE

Record ID: base-sepolia-address-evidence-record-s43

Candidate ID: S43

Raw address: `0x322813Fd9A801c5507c9de605d63CEA4f2CE6c44`

Checksum-normalized address: `0x322813Fd9A801c5507c9de605d63CEA4f2CE6c44`

Checksum method: EIP-55 via Foundry cast to-check-sum-address

Checksum status: RAW_ALREADY_CHECKSUM_MATCH

Mismatch status: NO_MISMATCH

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Contract label context: NST, Router, Treasury

Source file: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source line: 457

Address evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RECORDS.md

Address evidence records commit: 1379d06462222a40e9f7282cefa2590819ce4b24

Receipt created UTC: 2026-10-11T20:15:17Z

This checksum receipt does not authorize deployment.

This checksum receipt does not authorize mainnet deployment.

This checksum receipt does not authorize generated config by itself.

This checksum receipt does not authorize protocol client implementation.

This checksum receipt does not authorize public demo launch.

This checksum receipt does not authorize treasury actions.

This checksum receipt does not authorize governance actions.

This checksum receipt does not authorize transaction rail execution.



## Remaining blockers before generated config

Generated Base Sepolia read-only config remains blocked until:

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

Address checksums alone are not enough to generate config.

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

This file does not authorize protocol client implementation.

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

This file does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia address may be used as a Base mainnet address.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## No-secret confirmation

This file does not request private keys.

This file does not request seed phrases.

This file does not request wallet recovery phrases.

This file does not request deployer keys.

This file does not request signer keys.

This file does not request wallet secrets.

This file does not request private RPC credentials.

This file does not request private API keys.

This file does not request bearer tokens.

This file does not request private custody material.

## No-go conditions

Do not use these checksum receipts as ABI evidence.

Do not use these checksum receipts alone in generated config.

Do not use these checksum receipts alone in protocol clients.

Do not use these checksum receipts alone in public demo source.

Do not use these checksum receipts for mainnet.

Do not use this file as deployment authorization.

Do not use this file as public demo approval.

Do not use this file as mainnet approval.

Do not use this file as production address approval.

Do not use this file as production ABI approval.

Do not use this file as treasury approval.

Do not use this file as governance approval.

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

This file must contain none of the following usable secret material:

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

This address checksum receipts file is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it records the address evidence records commit;
- it records Base Sepolia;
- it records chain ID 84532;
- it records raw address and checksum-normalized address for each record;
- it records no checksum mismatch;
- it states generated config remains blocked;
- it states protocol clients remain blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
