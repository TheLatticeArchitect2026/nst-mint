# NST Core v0.5.2 Base Sepolia Read Method Allowlist

Status: READ_METHOD_ALLOWLIST_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T11:11:58Z
Current commit at read allowlist creation: c44cbd2fe828419ca7c76a3bd9d7c5a6ab869191

ABI method classification file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_METHOD_CLASSIFICATION.md

ABI method classification commit: c44cbd2fe828419ca7c76a3bd9d7c5a6ab869191

ABI checksum receipts commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

ABI evidence records commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Base Sepolia address checksum receipts commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Read methods allowlisted: 238

This file is not a generated config.

This file is not a write blocklist.

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

This file does not approve any Base Sepolia address.

This file does not approve any production ABI.

This file does not approve any Base Sepolia ABI for use outside evidence processing.

This file does not approve transaction rail execution.

This file does not approve governance writes.

This file does not approve treasury routes.

This file does not authorize any public mainnet mint interface.

## Purpose

This document records the Base Sepolia read method allowlist derived from the committed ABI method classification.

Only methods classified as read-only with state mutability view or pure are included.

No write methods are included.

No write method may be included in generated read-only config.

This read allowlist does not unlock generated config by itself.

Write blocklist remains required.

Config package gate remains required.

Protocol client package gate remains required.

## Read allowlist table

| Allowlist ID | ABI record ID | Supplemental ABI ID | Contract name | Source file | Method name | Signature | Selector | State mutability | Input count | Output count | Inclusion reason | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | ---: | ---: | --- | --- |
| base-sepolia-read-allow-1 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-2 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | BUILDING_TREASURY | `BUILDING_TREASURY()` | `0x186a8465` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-3 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | BUILDING_TREASURY_BPS | `BUILDING_TREASURY_BPS()` | `0x79d8cbe4` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-4 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | BURNER_ROLE | `BURNER_ROLE()` | `0x282c51f3` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-5 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-6 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-7 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | DIRECT_MINTER_ROLE | `DIRECT_MINTER_ROLE()` | `0x0ab3eb25` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-8 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | FIRST_NATIONS_BPS | `FIRST_NATIONS_BPS()` | `0x009d11f1` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-9 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | FIRST_NATIONS_TREASURY | `FIRST_NATIONS_TREASURY()` | `0x2790963a` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-10 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | FOUNDER_BPS | `FOUNDER_BPS()` | `0xb4f20e45` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-11 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | FOUNDER_TREASURY | `FOUNDER_TREASURY()` | `0x97021e44` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-12 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | GENESIS_SUPPLY | `GENESIS_SUPPLY()` | `0x99ec6765` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-13 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-14 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-15 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | TREASURY_MINT_ROLE | `TREASURY_MINT_ROLE()` | `0xfd8c7e0d` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-16 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | VIRILITY_BPS | `VIRILITY_BPS()` | `0xfffbc1fa` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-17 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | VIRILITY_TREASURY | `VIRILITY_TREASURY()` | `0xe496f7af` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-18 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | YIELD_POOL | `YIELD_POOL()` | `0xf46298cb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-19 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | YIELD_POOL_BPS | `YIELD_POOL_BPS()` | `0x6fc2a137` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-20 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | allowance | `allowance(address,address)` | `0xdd62ed3e` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-21 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | balanceOf | `balanceOf(address)` | `0x70a08231` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-22 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | decimals | `decimals()` | `0x313ce567` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-23 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-24 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-25 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | isTransferParticipantAllowed | `isTransferParticipantAllowed(address)` | `0xe9afddac` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-26 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | name | `name()` | `0x06fdde03` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-27 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | paused | `paused()` | `0x5c975abb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-28 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | previewTreasurySplit | `previewTreasurySplit(uint256)` | `0x0519ab96` | pure | 1 | 5 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-29 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-30 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | symbol | `symbol()` | `0x95d89b41` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-31 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | totalSupply | `totalSupply()` | `0x18160ddd` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-32 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | BAN_REGISTRY | `BAN_REGISTRY()` | `0x252a72b1` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-33 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-34 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | CFT | `CFT()` | `0x877bbadb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-35 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | CONFIG_DELAY | `CONFIG_DELAY()` | `0x91311979` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-36 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-37 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | FOUNDER_BPS | `FOUNDER_BPS()` | `0xb4f20e45` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-38 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | FOUNDER_TOKEN_ID | `FOUNDER_TOKEN_ID()` | `0x63da3d45` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-39 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | FOUNDER_WALLET | `FOUNDER_WALLET()` | `0x153faf2c` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-40 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | GENESIS_RECIPIENT | `GENESIS_RECIPIENT()` | `0x4b384b93` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-41 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | GENESIS_TOKEN_ID | `GENESIS_TOKEN_ID()` | `0xa5ee9f37` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-42 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | METADATA_MANAGER_ROLE | `METADATA_MANAGER_ROLE()` | `0x529470e8` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-43 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | MINT_MANAGER_ROLE | `MINT_MANAGER_ROLE()` | `0xc202aaf8` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-44 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | MINT_PRICE | `MINT_PRICE()` | `0xc002d23d` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-45 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-46 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | ROUTER | `ROUTER()` | `0x32fe7b26` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-47 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-48 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | SWAP_DEADLINE_BUFFER | `SWAP_DEADLINE_BUFFER()` | `0xcbb117a3` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-49 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | SWAP_OPERATOR_ROLE | `SWAP_OPERATOR_ROLE()` | `0xfef133e4` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-50 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | TREASURY_MANAGER_ROLE | `TREASURY_MANAGER_ROLE()` | `0xebdf690f` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-51 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | VETTING_REGISTRY | `VETTING_REGISTRY()` | `0x1d2a37ec` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-52 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | WETH | `WETH()` | `0xad5c4648` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-53 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | YIELD_POOL | `YIELD_POOL()` | `0xf46298cb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-54 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | YIELD_POOL_BPS | `YIELD_POOL_BPS()` | `0x6fc2a137` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-55 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | approve | `approve(address,uint256)` | `0x095ea7b3` | pure | 2 | 0 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-56 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | balanceOf | `balanceOf(address)` | `0x70a08231` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-57 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | baseURIFrozen | `baseURIFrozen()` | `0xfb565bfd` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-58 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | burn | `burn(uint256)` | `0x42966c68` | pure | 1 | 0 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-59 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | contractURI | `contractURI()` | `0xe8a3d485` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-60 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | contractURIFrozen | `contractURIFrozen()` | `0x5d6fd54d` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-61 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | exists | `exists(uint256)` | `0x4f558e79` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-62 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | founderSharePerMint | `founderSharePerMint()` | `0xd7104ab8` | pure | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-63 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | genesisHolder | `genesisHolder()` | `0xba1bccf6` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-64 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | getApproved | `getApproved(uint256)` | `0x081812fc` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-65 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-66 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | hasMinted | `hasMinted(address)` | `0x38e21cce` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-67 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-68 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | isApprovedForAll | `isApprovedForAll(address,address)` | `0xe985e9c5` | pure | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-69 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | locked | `locked(uint256)` | `0xb45a3c0e` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-70 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | mintOpen | `mintOpen()` | `0x24bbd049` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-71 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | mintPermanentlyClosed | `mintPermanentlyClosed()` | `0xa0da4659` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-72 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | name | `name()` | `0x06fdde03` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-73 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | nextTokenId | `nextTokenId()` | `0x75794a3c` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-74 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | ownerOf | `ownerOf(uint256)` | `0x6352211e` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-75 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | paused | `paused()` | `0x5c975abb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-76 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | pendingYieldETH | `pendingYieldETH()` | `0xd8ae48c0` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-77 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | pendingYieldSwapMinOut | `pendingYieldSwapMinOut()` | `0x609146e2` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-78 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | pendingYieldSwapMinOutExecuteAfter | `pendingYieldSwapMinOutExecuteAfter()` | `0x1f53085b` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-79 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | pendingYieldSwapMinOutState | `pendingYieldSwapMinOutState()` | `0x79d01b3a` | view | 0 | 2 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-80 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | previewSplit | `previewSplit(uint256)` | `0x13a6c05f` | pure | 1 | 2 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-81 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | publicMintCount | `publicMintCount()` | `0x0d84d1ce` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-82 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | safeTransferFrom | `safeTransferFrom(address,address,uint256,bytes)` | `0xb88d4fde` | pure | 4 | 0 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-83 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | setApprovalForAll | `setApprovalForAll(address,bool)` | `0xa22cb465` | pure | 2 | 0 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-84 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-85 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | sweepableETH | `sweepableETH()` | `0xde59d0a5` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-86 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | symbol | `symbol()` | `0x95d89b41` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-87 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | tokenURI | `tokenURI(uint256)` | `0xc87b56dd` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-88 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | totalMinted | `totalMinted()` | `0xa2309ff8` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-89 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | transferFrom | `transferFrom(address,address,uint256)` | `0x23b872dd` | pure | 3 | 0 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-90 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | yieldSharePerMint | `yieldSharePerMint()` | `0x050c8343` | pure | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-91 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | yieldSwapMinOut | `yieldSwapMinOut()` | `0x83f1483f` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-92 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-93 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-94 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | ESCROW_DURATION | `ESCROW_DURATION()` | `0xa6efccf9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-95 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | PAIR_REWARD | `PAIR_REWARD()` | `0x7984939a` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-96 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | PAIR_SIZE | `PAIR_SIZE()` | `0xa05f437e` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-97 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-98 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-99 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | canBindReferral | `canBindReferral(address,address)` | `0xac1e89ef` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-100 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | canSponsor | `canSponsor(address)` | `0xd884c1c1` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-101 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | completedPairs | `completedPairs(address)` | `0xbd0e491b` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-102 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | escrowPairsCreated | `escrowPairsCreated(address)` | `0x6338537f` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-103 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-104 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | getSponsorSummary | `getSponsorSummary(address)` | `0x06ab5ad0` | view | 1 | 6 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-105 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-106 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | isSuccessfulReferralRecorded | `isSuccessfulReferralRecorded(address)` | `0x45df58a9` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-107 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | liquidPairsRewarded | `liquidPairsRewarded(address)` | `0xd7b20590` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-108 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | mintsUntilNextPair | `mintsUntilNextPair(address)` | `0x8ae0d859` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-109 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | nextPairWillBeEscrowed | `nextPairWillBeEscrowed(address)` | `0xafd0ce11` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-110 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | paused | `paused()` | `0x5c975abb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-111 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | referralBoundAt | `referralBoundAt(address)` | `0x8a239f3c` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-112 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | rewardEscrow | `rewardEscrow()` | `0xa430be6c` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-113 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | rewardToken | `rewardToken()` | `0xf7c618c1` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-114 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | sponsorOf | `sponsorOf(address)` | `0x34e108a6` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-115 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | successfulReferralMints | `successfulReferralMints(address)` | `0x29260fd1` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-116 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-117 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-118 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-119 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | GRANT_CREATOR_ROLE | `GRANT_CREATOR_ROLE()` | `0x523cfc25` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-120 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-121 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-122 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | amountOf | `amountOf(uint256)` | `0xe8eb2284` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-123 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | beneficiaryOf | `beneficiaryOf(uint256)` | `0x124cfc8c` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-124 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | getGrant | `getGrant(uint256)` | `0xb8cc6c93` | view | 1 | 4 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-125 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-126 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-127 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | isClaimable | `isClaimable(uint256)` | `0x89610a09` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-128 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | isClaimed | `isClaimed(uint256)` | `0x9e34070f` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-129 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | nextGrantId | `nextGrantId()` | `0xbb8b3ea9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-130 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | paused | `paused()` | `0x5c975abb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-131 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | rewardToken | `rewardToken()` | `0xf7c618c1` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-132 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-133 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | unlockAtOf | `unlockAtOf(uint256)` | `0x59bcb546` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-134 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | BAN_MANAGER_ROLE | `BAN_MANAGER_ROLE()` | `0xb93e0b42` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-135 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-136 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | EXEMPTION_MANAGER_ROLE | `EXEMPTION_MANAGER_ROLE()` | `0x31af9957` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-137 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-138 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | PROFILE_MANAGER_ROLE | `PROFILE_MANAGER_ROLE()` | `0x091cfe70` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-139 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | VETTING_MANAGER_ROLE | `VETTING_MANAGER_ROLE()` | `0xb15ce9be` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-140 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | activeMember | `activeMember(address)` | `0xb0d99a40` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-141 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | beneficialOwnerHash | `beneficialOwnerHash(address)` | `0x0cf8b753` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-142 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | canInviteMembers | `canInviteMembers(address)` | `0x008a28f7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-143 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | canOriginateInvoices | `canOriginateInvoices(address)` | `0xce0467d1` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-144 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | canResolveDisputes | `canResolveDisputes(address)` | `0x42aa5b83` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-145 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | canTouchSystem | `canTouchSystem(address)` | `0x25bbcfc1` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-146 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | entityType | `entityType(address)` | `0xce793b79` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-147 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | getAccountState | `getAccountState(address)` | `0x9ee2735b` | view | 1 | 11 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-148 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-149 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-150 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | isBanned | `isBanned(address)` | `0x97f735d5` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-151 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | isMintEligible | `isMintEligible(address)` | `0x8f1bb345` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-152 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | isSystemExempt | `isSystemExempt(address)` | `0xf186fb39` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-153 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | isVetted | `isVetted(address)` | `0x09c4a273` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-154 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | jurisdictionTier | `jurisdictionTier(address)` | `0x4069382b` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-155 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | membershipToken | `membershipToken()` | `0x62ad351b` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-156 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | ownsNST | `ownsNST(address)` | `0xac0fa1de` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-157 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | paused | `paused()` | `0x5c975abb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-158 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-159 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | ASSET_MANAGER_ROLE | `ASSET_MANAGER_ROLE()` | `0xa4b32de8` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-160 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-161 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | BUILDING_TREASURY_ROUTE | `BUILDING_TREASURY_ROUTE()` | `0xbe11dddc` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-162 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-163 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | DISPUTE_RESERVE_ROUTE | `DISPUTE_RESERVE_ROUTE()` | `0x112608ab` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-164 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | EMERGENCY_MANAGER_ROLE | `EMERGENCY_MANAGER_ROLE()` | `0x7488df89` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-165 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | EMERGENCY_RESERVE_ROUTE | `EMERGENCY_RESERVE_ROUTE()` | `0x6db5c915` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-166 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | FIRST_NATIONS_TREASURY_ROUTE | `FIRST_NATIONS_TREASURY_ROUTE()` | `0xeae794d3` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-167 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | FOUNDER_TREASURY_ROUTE | `FOUNDER_TREASURY_ROUTE()` | `0xe04d06f3` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-168 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | INVOICE_SETTLEMENT_RESERVE_ROUTE | `INVOICE_SETTLEMENT_RESERVE_ROUTE()` | `0xedd38025` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-169 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | MAX_SPLIT_ROUTES | `MAX_SPLIT_ROUTES()` | `0x935512c6` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-170 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | NATIVE_ETH | `NATIVE_ETH()` | `0x011e1167` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-171 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | OPERATING_RESERVE_ROUTE | `OPERATING_RESERVE_ROUTE()` | `0x24277e36` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-172 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-173 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | PROTOCOL_LIQUIDITY_ROUTE | `PROTOCOL_LIQUIDITY_ROUTE()` | `0x27e37aff` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-174 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | REDEMPTION_RESERVE_ROUTE | `REDEMPTION_RESERVE_ROUTE()` | `0x2b968f97` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-175 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | ROUTE_MANAGER_ROLE | `ROUTE_MANAGER_ROLE()` | `0x7a0bba8d` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-176 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | RWA_RESERVE_ROUTE | `RWA_RESERVE_ROUTE()` | `0x90d2af58` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-177 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | TREASURY_OPERATOR_ROLE | `TREASURY_OPERATOR_ROLE()` | `0x5cc95ee8` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-178 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | VIRILITY_TREASURY_ROUTE | `VIRILITY_TREASURY_ROUTE()` | `0x58fbb4e8` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-179 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | YIELD_POOL_ROUTE | `YIELD_POOL_ROUTE()` | `0x607620e0` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-180 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-181 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | getRoute | `getRoute(bytes32)` | `0xe9207600` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-182 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-183 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | paused | `paused()` | `0x5c975abb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-184 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | previewSplit | `previewSplit(address,uint256,bytes32[])` | `0x81ecbffc` | view | 3 | 3 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-185 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | routeCount | `routeCount()` | `0xbf539cb4` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-186 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | routeExists | `routeExists(bytes32)` | `0x1ea6d003` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-187 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | routeIdAt | `routeIdAt(uint256)` | `0x5563df32` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-188 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-189 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | CREDENTIAL_ISSUER_ROLE | `CREDENTIAL_ISSUER_ROLE()` | `0x3be044fc` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-190 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | CREDENTIAL_REVOKER_ROLE | `CREDENTIAL_REVOKER_ROLE()` | `0x81c4b021` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-191 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-192 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-193 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | PROOF_MANAGER_ROLE | `PROOF_MANAGER_ROLE()` | `0x297014ed` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-194 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-195 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | URI_MANAGER_ROLE | `URI_MANAGER_ROLE()` | `0x682d07d9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-196 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | credentialExpiry | `credentialExpiry(uint256)` | `0x086e5c46` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-197 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | credentialHash | `credentialHash(uint256)` | `0xf226d6ec` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-198 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | credentialIssuer | `credentialIssuer(uint256)` | `0x93e21403` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-199 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | credentialMetadataHash | `credentialMetadataHash(uint256)` | `0x217ea231` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-200 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | credentialSubject | `credentialSubject(uint256)` | `0x9622f65f` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-201 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | credentialType | `credentialType(uint256)` | `0xa257fe06` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-202 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | credentialURIHash | `credentialURIHash(uint256)` | `0x5b0dc91c` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-203 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | getCredentialSnapshot | `getCredentialSnapshot(uint256)` | `0xfeda3be1` | view | 1 | 12 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-204 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-205 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | hasActiveCredential | `hasActiveCredential(address,uint8)` | `0x75acceae` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-206 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-207 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | isCredentialActive | `isCredentialActive(uint256)` | `0x459bdfd9` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-208 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | isCredentialRevoked | `isCredentialRevoked(uint256)` | `0xf43d8acc` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-209 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | latestCredentialId | `latestCredentialId(address,uint8)` | `0xc1483b77` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-210 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | nextCredentialId | `nextCredentialId()` | `0x341f02ec` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-211 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | paused | `paused()` | `0x5c975abb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-212 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | requireActiveCredential | `requireActiveCredential(uint256)` | `0x20a99728` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-213 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | subjectCredentialCount | `subjectCredentialCount(address)` | `0xff6fc698` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-214 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | subjectCredentialIdAt | `subjectCredentialIdAt(address,uint256)` | `0x0e8a26c2` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-215 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-216 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | ASSET_MANAGER_ROLE | `ASSET_MANAGER_ROLE()` | `0xa4b32de8` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-217 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | CLAIM_MANAGER_ROLE | `CLAIM_MANAGER_ROLE()` | `0xc9581137` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-218 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-219 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | GRANT_MANAGER_ROLE | `GRANT_MANAGER_ROLE()` | `0x90270417` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-220 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | NATIVE_ETH | `NATIVE_ETH()` | `0x011e1167` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-221 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-222 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | RESCUE_MANAGER_ROLE | `RESCUE_MANAGER_ROLE()` | `0x0213bfc7` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-223 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | accountingSnapshot | `accountingSnapshot(address)` | `0x1e4e3c00` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-224 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | availableBalance | `availableBalance(address)` | `0xa0821be3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-225 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | beneficiaryGrantCount | `beneficiaryGrantCount(address)` | `0xe6463adf` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-226 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | beneficiaryGrantIds | `beneficiaryGrantIds(address)` | `0x38ed8383` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-227 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | custodyBalance | `custodyBalance(address)` | `0x69e08a0c` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-228 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | getGrant | `getGrant(uint256)` | `0xb8cc6c93` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-229 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-230 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-231 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | isAssetAllowed | `isAssetAllowed(address)` | `0x9469bf8f` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-232 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | isClaimable | `isClaimable(uint256)` | `0x89610a09` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-233 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | nextGrantId | `nextGrantId()` | `0xbb8b3ea9` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-234 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | paused | `paused()` | `0x5c975abb` | view | 0 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-235 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-236 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | totalClaimed | `totalClaimed(address)` | `0xef5d9ae8` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-237 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | totalDeposited | `totalDeposited(address)` | `0x53055481` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |
| base-sepolia-read-allow-238 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | totalReserved | `totalReserved(address)` | `0x6d97e14d` | view | 1 | 1 | Method classified as read-only through committed ABI method classification. | READ_ALLOWLISTED_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE |


## Read allowlist group for SA1

ABI record ID: base-sepolia-abi-evidence-record-sa1

Supplemental ABI candidate ID: SA1

Contract name: CFTv2

Resolved source file: src/CFTv2.sol

Contract label context: CFT, CFTv2, NST, ShieldRegistry, YieldPool

Normalized ABI SHA-256: `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Read method count in this group: 31

Status: READ_ALLOWLIST_GROUP_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE

| Method name | Signature | Selector | State mutability | Input count | Output count | No-write confirmation |
| --- | --- | --- | --- | ---: | ---: | --- |
| BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | YES - classified read-only; no write method included |
| BUILDING_TREASURY | `BUILDING_TREASURY()` | `0x186a8465` | view | 0 | 1 | YES - classified read-only; no write method included |
| BUILDING_TREASURY_BPS | `BUILDING_TREASURY_BPS()` | `0x79d8cbe4` | view | 0 | 1 | YES - classified read-only; no write method included |
| BURNER_ROLE | `BURNER_ROLE()` | `0x282c51f3` | view | 0 | 1 | YES - classified read-only; no write method included |
| CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | YES - classified read-only; no write method included |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | YES - classified read-only; no write method included |
| DIRECT_MINTER_ROLE | `DIRECT_MINTER_ROLE()` | `0x0ab3eb25` | view | 0 | 1 | YES - classified read-only; no write method included |
| FIRST_NATIONS_BPS | `FIRST_NATIONS_BPS()` | `0x009d11f1` | view | 0 | 1 | YES - classified read-only; no write method included |
| FIRST_NATIONS_TREASURY | `FIRST_NATIONS_TREASURY()` | `0x2790963a` | view | 0 | 1 | YES - classified read-only; no write method included |
| FOUNDER_BPS | `FOUNDER_BPS()` | `0xb4f20e45` | view | 0 | 1 | YES - classified read-only; no write method included |
| FOUNDER_TREASURY | `FOUNDER_TREASURY()` | `0x97021e44` | view | 0 | 1 | YES - classified read-only; no write method included |
| GENESIS_SUPPLY | `GENESIS_SUPPLY()` | `0x99ec6765` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| TREASURY_MINT_ROLE | `TREASURY_MINT_ROLE()` | `0xfd8c7e0d` | view | 0 | 1 | YES - classified read-only; no write method included |
| VIRILITY_BPS | `VIRILITY_BPS()` | `0xfffbc1fa` | view | 0 | 1 | YES - classified read-only; no write method included |
| VIRILITY_TREASURY | `VIRILITY_TREASURY()` | `0xe496f7af` | view | 0 | 1 | YES - classified read-only; no write method included |
| YIELD_POOL | `YIELD_POOL()` | `0xf46298cb` | view | 0 | 1 | YES - classified read-only; no write method included |
| YIELD_POOL_BPS | `YIELD_POOL_BPS()` | `0x6fc2a137` | view | 0 | 1 | YES - classified read-only; no write method included |
| allowance | `allowance(address,address)` | `0xdd62ed3e` | view | 2 | 1 | YES - classified read-only; no write method included |
| balanceOf | `balanceOf(address)` | `0x70a08231` | view | 1 | 1 | YES - classified read-only; no write method included |
| decimals | `decimals()` | `0x313ce567` | view | 0 | 1 | YES - classified read-only; no write method included |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | YES - classified read-only; no write method included |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | YES - classified read-only; no write method included |
| isTransferParticipantAllowed | `isTransferParticipantAllowed(address)` | `0xe9afddac` | view | 1 | 1 | YES - classified read-only; no write method included |
| name | `name()` | `0x06fdde03` | view | 0 | 1 | YES - classified read-only; no write method included |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | YES - classified read-only; no write method included |
| previewTreasurySplit | `previewTreasurySplit(uint256)` | `0x0519ab96` | pure | 1 | 5 | YES - classified read-only; no write method included |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | YES - classified read-only; no write method included |
| symbol | `symbol()` | `0x95d89b41` | view | 0 | 1 | YES - classified read-only; no write method included |
| totalSupply | `totalSupply()` | `0x18160ddd` | view | 0 | 1 | YES - classified read-only; no write method included |

This allowlist group does not authorize generated config by itself.

This allowlist group does not authorize protocol client implementation.

This allowlist group does not authorize public demo launch.

This allowlist group does not authorize mainnet deployment.

## Read allowlist group for SA2

ABI record ID: base-sepolia-abi-evidence-record-sa2

Supplemental ABI candidate ID: SA2

Contract name: NSTSBT

Resolved source file: src/NSTSBT.sol

Contract label context: BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool

Normalized ABI SHA-256: `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Read method count in this group: 60

Status: READ_ALLOWLIST_GROUP_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE

| Method name | Signature | Selector | State mutability | Input count | Output count | No-write confirmation |
| --- | --- | --- | --- | ---: | ---: | --- |
| BAN_REGISTRY | `BAN_REGISTRY()` | `0x252a72b1` | view | 0 | 1 | YES - classified read-only; no write method included |
| BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | YES - classified read-only; no write method included |
| CFT | `CFT()` | `0x877bbadb` | view | 0 | 1 | YES - classified read-only; no write method included |
| CONFIG_DELAY | `CONFIG_DELAY()` | `0x91311979` | view | 0 | 1 | YES - classified read-only; no write method included |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | YES - classified read-only; no write method included |
| FOUNDER_BPS | `FOUNDER_BPS()` | `0xb4f20e45` | view | 0 | 1 | YES - classified read-only; no write method included |
| FOUNDER_TOKEN_ID | `FOUNDER_TOKEN_ID()` | `0x63da3d45` | view | 0 | 1 | YES - classified read-only; no write method included |
| FOUNDER_WALLET | `FOUNDER_WALLET()` | `0x153faf2c` | view | 0 | 1 | YES - classified read-only; no write method included |
| GENESIS_RECIPIENT | `GENESIS_RECIPIENT()` | `0x4b384b93` | view | 0 | 1 | YES - classified read-only; no write method included |
| GENESIS_TOKEN_ID | `GENESIS_TOKEN_ID()` | `0xa5ee9f37` | view | 0 | 1 | YES - classified read-only; no write method included |
| METADATA_MANAGER_ROLE | `METADATA_MANAGER_ROLE()` | `0x529470e8` | view | 0 | 1 | YES - classified read-only; no write method included |
| MINT_MANAGER_ROLE | `MINT_MANAGER_ROLE()` | `0xc202aaf8` | view | 0 | 1 | YES - classified read-only; no write method included |
| MINT_PRICE | `MINT_PRICE()` | `0xc002d23d` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| ROUTER | `ROUTER()` | `0x32fe7b26` | view | 0 | 1 | YES - classified read-only; no write method included |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| SWAP_DEADLINE_BUFFER | `SWAP_DEADLINE_BUFFER()` | `0xcbb117a3` | view | 0 | 1 | YES - classified read-only; no write method included |
| SWAP_OPERATOR_ROLE | `SWAP_OPERATOR_ROLE()` | `0xfef133e4` | view | 0 | 1 | YES - classified read-only; no write method included |
| TREASURY_MANAGER_ROLE | `TREASURY_MANAGER_ROLE()` | `0xebdf690f` | view | 0 | 1 | YES - classified read-only; no write method included |
| VETTING_REGISTRY | `VETTING_REGISTRY()` | `0x1d2a37ec` | view | 0 | 1 | YES - classified read-only; no write method included |
| WETH | `WETH()` | `0xad5c4648` | view | 0 | 1 | YES - classified read-only; no write method included |
| YIELD_POOL | `YIELD_POOL()` | `0xf46298cb` | view | 0 | 1 | YES - classified read-only; no write method included |
| YIELD_POOL_BPS | `YIELD_POOL_BPS()` | `0x6fc2a137` | view | 0 | 1 | YES - classified read-only; no write method included |
| approve | `approve(address,uint256)` | `0x095ea7b3` | pure | 2 | 0 | YES - classified read-only; no write method included |
| balanceOf | `balanceOf(address)` | `0x70a08231` | view | 1 | 1 | YES - classified read-only; no write method included |
| baseURIFrozen | `baseURIFrozen()` | `0xfb565bfd` | view | 0 | 1 | YES - classified read-only; no write method included |
| burn | `burn(uint256)` | `0x42966c68` | pure | 1 | 0 | YES - classified read-only; no write method included |
| contractURI | `contractURI()` | `0xe8a3d485` | view | 0 | 1 | YES - classified read-only; no write method included |
| contractURIFrozen | `contractURIFrozen()` | `0x5d6fd54d` | view | 0 | 1 | YES - classified read-only; no write method included |
| exists | `exists(uint256)` | `0x4f558e79` | view | 1 | 1 | YES - classified read-only; no write method included |
| founderSharePerMint | `founderSharePerMint()` | `0xd7104ab8` | pure | 0 | 1 | YES - classified read-only; no write method included |
| genesisHolder | `genesisHolder()` | `0xba1bccf6` | view | 0 | 1 | YES - classified read-only; no write method included |
| getApproved | `getApproved(uint256)` | `0x081812fc` | view | 1 | 1 | YES - classified read-only; no write method included |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | YES - classified read-only; no write method included |
| hasMinted | `hasMinted(address)` | `0x38e21cce` | view | 1 | 1 | YES - classified read-only; no write method included |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | YES - classified read-only; no write method included |
| isApprovedForAll | `isApprovedForAll(address,address)` | `0xe985e9c5` | pure | 2 | 1 | YES - classified read-only; no write method included |
| locked | `locked(uint256)` | `0xb45a3c0e` | view | 1 | 1 | YES - classified read-only; no write method included |
| mintOpen | `mintOpen()` | `0x24bbd049` | view | 0 | 1 | YES - classified read-only; no write method included |
| mintPermanentlyClosed | `mintPermanentlyClosed()` | `0xa0da4659` | view | 0 | 1 | YES - classified read-only; no write method included |
| name | `name()` | `0x06fdde03` | view | 0 | 1 | YES - classified read-only; no write method included |
| nextTokenId | `nextTokenId()` | `0x75794a3c` | view | 0 | 1 | YES - classified read-only; no write method included |
| ownerOf | `ownerOf(uint256)` | `0x6352211e` | view | 1 | 1 | YES - classified read-only; no write method included |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | YES - classified read-only; no write method included |
| pendingYieldETH | `pendingYieldETH()` | `0xd8ae48c0` | view | 0 | 1 | YES - classified read-only; no write method included |
| pendingYieldSwapMinOut | `pendingYieldSwapMinOut()` | `0x609146e2` | view | 0 | 1 | YES - classified read-only; no write method included |
| pendingYieldSwapMinOutExecuteAfter | `pendingYieldSwapMinOutExecuteAfter()` | `0x1f53085b` | view | 0 | 1 | YES - classified read-only; no write method included |
| pendingYieldSwapMinOutState | `pendingYieldSwapMinOutState()` | `0x79d01b3a` | view | 0 | 2 | YES - classified read-only; no write method included |
| previewSplit | `previewSplit(uint256)` | `0x13a6c05f` | pure | 1 | 2 | YES - classified read-only; no write method included |
| publicMintCount | `publicMintCount()` | `0x0d84d1ce` | view | 0 | 1 | YES - classified read-only; no write method included |
| safeTransferFrom | `safeTransferFrom(address,address,uint256,bytes)` | `0xb88d4fde` | pure | 4 | 0 | YES - classified read-only; no write method included |
| setApprovalForAll | `setApprovalForAll(address,bool)` | `0xa22cb465` | pure | 2 | 0 | YES - classified read-only; no write method included |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | YES - classified read-only; no write method included |
| sweepableETH | `sweepableETH()` | `0xde59d0a5` | view | 0 | 1 | YES - classified read-only; no write method included |
| symbol | `symbol()` | `0x95d89b41` | view | 0 | 1 | YES - classified read-only; no write method included |
| tokenURI | `tokenURI(uint256)` | `0xc87b56dd` | view | 1 | 1 | YES - classified read-only; no write method included |
| totalMinted | `totalMinted()` | `0xa2309ff8` | view | 0 | 1 | YES - classified read-only; no write method included |
| transferFrom | `transferFrom(address,address,uint256)` | `0x23b872dd` | pure | 3 | 0 | YES - classified read-only; no write method included |
| yieldSharePerMint | `yieldSharePerMint()` | `0x050c8343` | pure | 0 | 1 | YES - classified read-only; no write method included |
| yieldSwapMinOut | `yieldSwapMinOut()` | `0x83f1483f` | view | 0 | 1 | YES - classified read-only; no write method included |

This allowlist group does not authorize generated config by itself.

This allowlist group does not authorize protocol client implementation.

This allowlist group does not authorize public demo launch.

This allowlist group does not authorize mainnet deployment.

## Read allowlist group for SA3

ABI record ID: base-sepolia-abi-evidence-record-sa3

Supplemental ABI candidate ID: SA3

Contract name: ReferralController

Resolved source file: src/ReferralController.sol

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

Normalized ABI SHA-256: `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Read method count in this group: 25

Status: READ_ALLOWLIST_GROUP_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE

| Method name | Signature | Selector | State mutability | Input count | Output count | No-write confirmation |
| --- | --- | --- | --- | ---: | ---: | --- |
| CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | YES - classified read-only; no write method included |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | YES - classified read-only; no write method included |
| ESCROW_DURATION | `ESCROW_DURATION()` | `0xa6efccf9` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAIR_REWARD | `PAIR_REWARD()` | `0x7984939a` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAIR_SIZE | `PAIR_SIZE()` | `0xa05f437e` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| canBindReferral | `canBindReferral(address,address)` | `0xac1e89ef` | view | 2 | 1 | YES - classified read-only; no write method included |
| canSponsor | `canSponsor(address)` | `0xd884c1c1` | view | 1 | 1 | YES - classified read-only; no write method included |
| completedPairs | `completedPairs(address)` | `0xbd0e491b` | view | 1 | 1 | YES - classified read-only; no write method included |
| escrowPairsCreated | `escrowPairsCreated(address)` | `0x6338537f` | view | 1 | 1 | YES - classified read-only; no write method included |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | YES - classified read-only; no write method included |
| getSponsorSummary | `getSponsorSummary(address)` | `0x06ab5ad0` | view | 1 | 6 | YES - classified read-only; no write method included |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | YES - classified read-only; no write method included |
| isSuccessfulReferralRecorded | `isSuccessfulReferralRecorded(address)` | `0x45df58a9` | view | 1 | 1 | YES - classified read-only; no write method included |
| liquidPairsRewarded | `liquidPairsRewarded(address)` | `0xd7b20590` | view | 1 | 1 | YES - classified read-only; no write method included |
| mintsUntilNextPair | `mintsUntilNextPair(address)` | `0x8ae0d859` | view | 1 | 1 | YES - classified read-only; no write method included |
| nextPairWillBeEscrowed | `nextPairWillBeEscrowed(address)` | `0xafd0ce11` | view | 1 | 1 | YES - classified read-only; no write method included |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | YES - classified read-only; no write method included |
| referralBoundAt | `referralBoundAt(address)` | `0x8a239f3c` | view | 1 | 1 | YES - classified read-only; no write method included |
| rewardEscrow | `rewardEscrow()` | `0xa430be6c` | view | 0 | 1 | YES - classified read-only; no write method included |
| rewardToken | `rewardToken()` | `0xf7c618c1` | view | 0 | 1 | YES - classified read-only; no write method included |
| sponsorOf | `sponsorOf(address)` | `0x34e108a6` | view | 1 | 1 | YES - classified read-only; no write method included |
| successfulReferralMints | `successfulReferralMints(address)` | `0x29260fd1` | view | 1 | 1 | YES - classified read-only; no write method included |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | YES - classified read-only; no write method included |

This allowlist group does not authorize generated config by itself.

This allowlist group does not authorize protocol client implementation.

This allowlist group does not authorize public demo launch.

This allowlist group does not authorize mainnet deployment.

## Read allowlist group for SA4

ABI record ID: base-sepolia-abi-evidence-record-sa4

Supplemental ABI candidate ID: SA4

Contract name: RewardEscrow

Resolved source file: src/RewardEscrow.sol

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

Normalized ABI SHA-256: `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Read method count in this group: 17

Status: READ_ALLOWLIST_GROUP_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE

| Method name | Signature | Selector | State mutability | Input count | Output count | No-write confirmation |
| --- | --- | --- | --- | ---: | ---: | --- |
| CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | YES - classified read-only; no write method included |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | YES - classified read-only; no write method included |
| GRANT_CREATOR_ROLE | `GRANT_CREATOR_ROLE()` | `0x523cfc25` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| amountOf | `amountOf(uint256)` | `0xe8eb2284` | view | 1 | 1 | YES - classified read-only; no write method included |
| beneficiaryOf | `beneficiaryOf(uint256)` | `0x124cfc8c` | view | 1 | 1 | YES - classified read-only; no write method included |
| getGrant | `getGrant(uint256)` | `0xb8cc6c93` | view | 1 | 4 | YES - classified read-only; no write method included |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | YES - classified read-only; no write method included |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | YES - classified read-only; no write method included |
| isClaimable | `isClaimable(uint256)` | `0x89610a09` | view | 1 | 1 | YES - classified read-only; no write method included |
| isClaimed | `isClaimed(uint256)` | `0x9e34070f` | view | 1 | 1 | YES - classified read-only; no write method included |
| nextGrantId | `nextGrantId()` | `0xbb8b3ea9` | view | 0 | 1 | YES - classified read-only; no write method included |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | YES - classified read-only; no write method included |
| rewardToken | `rewardToken()` | `0xf7c618c1` | view | 0 | 1 | YES - classified read-only; no write method included |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | YES - classified read-only; no write method included |
| unlockAtOf | `unlockAtOf(uint256)` | `0x59bcb546` | view | 1 | 1 | YES - classified read-only; no write method included |

This allowlist group does not authorize generated config by itself.

This allowlist group does not authorize protocol client implementation.

This allowlist group does not authorize public demo launch.

This allowlist group does not authorize mainnet deployment.

## Read allowlist group for SA5

ABI record ID: base-sepolia-abi-evidence-record-sa5

Supplemental ABI candidate ID: SA5

Contract name: ShieldRegistry

Resolved source file: src/ShieldRegistry.sol

Contract label context: BanRegistry, NST, ShieldRegistry, VettingRegistry

Normalized ABI SHA-256: `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Read method count in this group: 25

Status: READ_ALLOWLIST_GROUP_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE

| Method name | Signature | Selector | State mutability | Input count | Output count | No-write confirmation |
| --- | --- | --- | --- | ---: | ---: | --- |
| BAN_MANAGER_ROLE | `BAN_MANAGER_ROLE()` | `0xb93e0b42` | view | 0 | 1 | YES - classified read-only; no write method included |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | YES - classified read-only; no write method included |
| EXEMPTION_MANAGER_ROLE | `EXEMPTION_MANAGER_ROLE()` | `0x31af9957` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| PROFILE_MANAGER_ROLE | `PROFILE_MANAGER_ROLE()` | `0x091cfe70` | view | 0 | 1 | YES - classified read-only; no write method included |
| VETTING_MANAGER_ROLE | `VETTING_MANAGER_ROLE()` | `0xb15ce9be` | view | 0 | 1 | YES - classified read-only; no write method included |
| activeMember | `activeMember(address)` | `0xb0d99a40` | view | 1 | 1 | YES - classified read-only; no write method included |
| beneficialOwnerHash | `beneficialOwnerHash(address)` | `0x0cf8b753` | view | 1 | 1 | YES - classified read-only; no write method included |
| canInviteMembers | `canInviteMembers(address)` | `0x008a28f7` | view | 1 | 1 | YES - classified read-only; no write method included |
| canOriginateInvoices | `canOriginateInvoices(address)` | `0xce0467d1` | view | 1 | 1 | YES - classified read-only; no write method included |
| canResolveDisputes | `canResolveDisputes(address)` | `0x42aa5b83` | view | 1 | 1 | YES - classified read-only; no write method included |
| canTouchSystem | `canTouchSystem(address)` | `0x25bbcfc1` | view | 1 | 1 | YES - classified read-only; no write method included |
| entityType | `entityType(address)` | `0xce793b79` | view | 1 | 1 | YES - classified read-only; no write method included |
| getAccountState | `getAccountState(address)` | `0x9ee2735b` | view | 1 | 11 | YES - classified read-only; no write method included |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | YES - classified read-only; no write method included |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | YES - classified read-only; no write method included |
| isBanned | `isBanned(address)` | `0x97f735d5` | view | 1 | 1 | YES - classified read-only; no write method included |
| isMintEligible | `isMintEligible(address)` | `0x8f1bb345` | view | 1 | 1 | YES - classified read-only; no write method included |
| isSystemExempt | `isSystemExempt(address)` | `0xf186fb39` | view | 1 | 1 | YES - classified read-only; no write method included |
| isVetted | `isVetted(address)` | `0x09c4a273` | view | 1 | 1 | YES - classified read-only; no write method included |
| jurisdictionTier | `jurisdictionTier(address)` | `0x4069382b` | view | 1 | 1 | YES - classified read-only; no write method included |
| membershipToken | `membershipToken()` | `0x62ad351b` | view | 0 | 1 | YES - classified read-only; no write method included |
| ownsNST | `ownsNST(address)` | `0xac0fa1de` | view | 1 | 1 | YES - classified read-only; no write method included |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | YES - classified read-only; no write method included |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | YES - classified read-only; no write method included |

This allowlist group does not authorize generated config by itself.

This allowlist group does not authorize protocol client implementation.

This allowlist group does not authorize public demo launch.

This allowlist group does not authorize mainnet deployment.

## Read allowlist group for SA6

ABI record ID: base-sepolia-abi-evidence-record-sa6

Supplemental ABI candidate ID: SA6

Contract name: TreasuryRouter

Resolved source file: src/TreasuryRouter.sol

Contract label context: NST, TreasuryRouter

Normalized ABI SHA-256: `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Read method count in this group: 30

Status: READ_ALLOWLIST_GROUP_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE

| Method name | Signature | Selector | State mutability | Input count | Output count | No-write confirmation |
| --- | --- | --- | --- | ---: | ---: | --- |
| ASSET_MANAGER_ROLE | `ASSET_MANAGER_ROLE()` | `0xa4b32de8` | view | 0 | 1 | YES - classified read-only; no write method included |
| BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | YES - classified read-only; no write method included |
| BUILDING_TREASURY_ROUTE | `BUILDING_TREASURY_ROUTE()` | `0xbe11dddc` | view | 0 | 1 | YES - classified read-only; no write method included |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | YES - classified read-only; no write method included |
| DISPUTE_RESERVE_ROUTE | `DISPUTE_RESERVE_ROUTE()` | `0x112608ab` | view | 0 | 1 | YES - classified read-only; no write method included |
| EMERGENCY_MANAGER_ROLE | `EMERGENCY_MANAGER_ROLE()` | `0x7488df89` | view | 0 | 1 | YES - classified read-only; no write method included |
| EMERGENCY_RESERVE_ROUTE | `EMERGENCY_RESERVE_ROUTE()` | `0x6db5c915` | view | 0 | 1 | YES - classified read-only; no write method included |
| FIRST_NATIONS_TREASURY_ROUTE | `FIRST_NATIONS_TREASURY_ROUTE()` | `0xeae794d3` | view | 0 | 1 | YES - classified read-only; no write method included |
| FOUNDER_TREASURY_ROUTE | `FOUNDER_TREASURY_ROUTE()` | `0xe04d06f3` | view | 0 | 1 | YES - classified read-only; no write method included |
| INVOICE_SETTLEMENT_RESERVE_ROUTE | `INVOICE_SETTLEMENT_RESERVE_ROUTE()` | `0xedd38025` | view | 0 | 1 | YES - classified read-only; no write method included |
| MAX_SPLIT_ROUTES | `MAX_SPLIT_ROUTES()` | `0x935512c6` | view | 0 | 1 | YES - classified read-only; no write method included |
| NATIVE_ETH | `NATIVE_ETH()` | `0x011e1167` | view | 0 | 1 | YES - classified read-only; no write method included |
| OPERATING_RESERVE_ROUTE | `OPERATING_RESERVE_ROUTE()` | `0x24277e36` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| PROTOCOL_LIQUIDITY_ROUTE | `PROTOCOL_LIQUIDITY_ROUTE()` | `0x27e37aff` | view | 0 | 1 | YES - classified read-only; no write method included |
| REDEMPTION_RESERVE_ROUTE | `REDEMPTION_RESERVE_ROUTE()` | `0x2b968f97` | view | 0 | 1 | YES - classified read-only; no write method included |
| ROUTE_MANAGER_ROLE | `ROUTE_MANAGER_ROLE()` | `0x7a0bba8d` | view | 0 | 1 | YES - classified read-only; no write method included |
| RWA_RESERVE_ROUTE | `RWA_RESERVE_ROUTE()` | `0x90d2af58` | view | 0 | 1 | YES - classified read-only; no write method included |
| TREASURY_OPERATOR_ROLE | `TREASURY_OPERATOR_ROLE()` | `0x5cc95ee8` | view | 0 | 1 | YES - classified read-only; no write method included |
| VIRILITY_TREASURY_ROUTE | `VIRILITY_TREASURY_ROUTE()` | `0x58fbb4e8` | view | 0 | 1 | YES - classified read-only; no write method included |
| YIELD_POOL_ROUTE | `YIELD_POOL_ROUTE()` | `0x607620e0` | view | 0 | 1 | YES - classified read-only; no write method included |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | YES - classified read-only; no write method included |
| getRoute | `getRoute(bytes32)` | `0xe9207600` | view | 1 | 1 | YES - classified read-only; no write method included |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | YES - classified read-only; no write method included |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | YES - classified read-only; no write method included |
| previewSplit | `previewSplit(address,uint256,bytes32[])` | `0x81ecbffc` | view | 3 | 3 | YES - classified read-only; no write method included |
| routeCount | `routeCount()` | `0xbf539cb4` | view | 0 | 1 | YES - classified read-only; no write method included |
| routeExists | `routeExists(bytes32)` | `0x1ea6d003` | view | 1 | 1 | YES - classified read-only; no write method included |
| routeIdAt | `routeIdAt(uint256)` | `0x5563df32` | view | 1 | 1 | YES - classified read-only; no write method included |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | YES - classified read-only; no write method included |

This allowlist group does not authorize generated config by itself.

This allowlist group does not authorize protocol client implementation.

This allowlist group does not authorize public demo launch.

This allowlist group does not authorize mainnet deployment.

## Read allowlist group for SA7

ABI record ID: base-sepolia-abi-evidence-record-sa7

Supplemental ABI candidate ID: SA7

Contract name: VaultRegistry

Resolved source file: src/VaultRegistry.sol

Contract label context: NST, ShieldRegistry, VaultRegistry

Normalized ABI SHA-256: `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Read method count in this group: 27

Status: READ_ALLOWLIST_GROUP_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE

| Method name | Signature | Selector | State mutability | Input count | Output count | No-write confirmation |
| --- | --- | --- | --- | ---: | ---: | --- |
| CREDENTIAL_ISSUER_ROLE | `CREDENTIAL_ISSUER_ROLE()` | `0x3be044fc` | view | 0 | 1 | YES - classified read-only; no write method included |
| CREDENTIAL_REVOKER_ROLE | `CREDENTIAL_REVOKER_ROLE()` | `0x81c4b021` | view | 0 | 1 | YES - classified read-only; no write method included |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| PROOF_MANAGER_ROLE | `PROOF_MANAGER_ROLE()` | `0x297014ed` | view | 0 | 1 | YES - classified read-only; no write method included |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| URI_MANAGER_ROLE | `URI_MANAGER_ROLE()` | `0x682d07d9` | view | 0 | 1 | YES - classified read-only; no write method included |
| credentialExpiry | `credentialExpiry(uint256)` | `0x086e5c46` | view | 1 | 1 | YES - classified read-only; no write method included |
| credentialHash | `credentialHash(uint256)` | `0xf226d6ec` | view | 1 | 1 | YES - classified read-only; no write method included |
| credentialIssuer | `credentialIssuer(uint256)` | `0x93e21403` | view | 1 | 1 | YES - classified read-only; no write method included |
| credentialMetadataHash | `credentialMetadataHash(uint256)` | `0x217ea231` | view | 1 | 1 | YES - classified read-only; no write method included |
| credentialSubject | `credentialSubject(uint256)` | `0x9622f65f` | view | 1 | 1 | YES - classified read-only; no write method included |
| credentialType | `credentialType(uint256)` | `0xa257fe06` | view | 1 | 1 | YES - classified read-only; no write method included |
| credentialURIHash | `credentialURIHash(uint256)` | `0x5b0dc91c` | view | 1 | 1 | YES - classified read-only; no write method included |
| getCredentialSnapshot | `getCredentialSnapshot(uint256)` | `0xfeda3be1` | view | 1 | 12 | YES - classified read-only; no write method included |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | YES - classified read-only; no write method included |
| hasActiveCredential | `hasActiveCredential(address,uint8)` | `0x75acceae` | view | 2 | 1 | YES - classified read-only; no write method included |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | YES - classified read-only; no write method included |
| isCredentialActive | `isCredentialActive(uint256)` | `0x459bdfd9` | view | 1 | 1 | YES - classified read-only; no write method included |
| isCredentialRevoked | `isCredentialRevoked(uint256)` | `0xf43d8acc` | view | 1 | 1 | YES - classified read-only; no write method included |
| latestCredentialId | `latestCredentialId(address,uint8)` | `0xc1483b77` | view | 2 | 1 | YES - classified read-only; no write method included |
| nextCredentialId | `nextCredentialId()` | `0x341f02ec` | view | 0 | 1 | YES - classified read-only; no write method included |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | YES - classified read-only; no write method included |
| requireActiveCredential | `requireActiveCredential(uint256)` | `0x20a99728` | view | 1 | 1 | YES - classified read-only; no write method included |
| subjectCredentialCount | `subjectCredentialCount(address)` | `0xff6fc698` | view | 1 | 1 | YES - classified read-only; no write method included |
| subjectCredentialIdAt | `subjectCredentialIdAt(address,uint256)` | `0x0e8a26c2` | view | 2 | 1 | YES - classified read-only; no write method included |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | YES - classified read-only; no write method included |

This allowlist group does not authorize generated config by itself.

This allowlist group does not authorize protocol client implementation.

This allowlist group does not authorize public demo launch.

This allowlist group does not authorize mainnet deployment.

## Read allowlist group for SA8

ABI record ID: base-sepolia-abi-evidence-record-sa8

Supplemental ABI candidate ID: SA8

Contract name: YieldPool

Resolved source file: src/YieldPool.sol

Contract label context: NST, YieldPool

Normalized ABI SHA-256: `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Read method count in this group: 23

Status: READ_ALLOWLIST_GROUP_COMPLETE_PENDING_WRITE_BLOCKLIST_AND_CONFIG_GATE

| Method name | Signature | Selector | State mutability | Input count | Output count | No-write confirmation |
| --- | --- | --- | --- | ---: | ---: | --- |
| ASSET_MANAGER_ROLE | `ASSET_MANAGER_ROLE()` | `0xa4b32de8` | view | 0 | 1 | YES - classified read-only; no write method included |
| CLAIM_MANAGER_ROLE | `CLAIM_MANAGER_ROLE()` | `0xc9581137` | view | 0 | 1 | YES - classified read-only; no write method included |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | YES - classified read-only; no write method included |
| GRANT_MANAGER_ROLE | `GRANT_MANAGER_ROLE()` | `0x90270417` | view | 0 | 1 | YES - classified read-only; no write method included |
| NATIVE_ETH | `NATIVE_ETH()` | `0x011e1167` | view | 0 | 1 | YES - classified read-only; no write method included |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | YES - classified read-only; no write method included |
| RESCUE_MANAGER_ROLE | `RESCUE_MANAGER_ROLE()` | `0x0213bfc7` | view | 0 | 1 | YES - classified read-only; no write method included |
| accountingSnapshot | `accountingSnapshot(address)` | `0x1e4e3c00` | view | 1 | 1 | YES - classified read-only; no write method included |
| availableBalance | `availableBalance(address)` | `0xa0821be3` | view | 1 | 1 | YES - classified read-only; no write method included |
| beneficiaryGrantCount | `beneficiaryGrantCount(address)` | `0xe6463adf` | view | 1 | 1 | YES - classified read-only; no write method included |
| beneficiaryGrantIds | `beneficiaryGrantIds(address)` | `0x38ed8383` | view | 1 | 1 | YES - classified read-only; no write method included |
| custodyBalance | `custodyBalance(address)` | `0x69e08a0c` | view | 1 | 1 | YES - classified read-only; no write method included |
| getGrant | `getGrant(uint256)` | `0xb8cc6c93` | view | 1 | 1 | YES - classified read-only; no write method included |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | YES - classified read-only; no write method included |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | YES - classified read-only; no write method included |
| isAssetAllowed | `isAssetAllowed(address)` | `0x9469bf8f` | view | 1 | 1 | YES - classified read-only; no write method included |
| isClaimable | `isClaimable(uint256)` | `0x89610a09` | view | 1 | 1 | YES - classified read-only; no write method included |
| nextGrantId | `nextGrantId()` | `0xbb8b3ea9` | view | 0 | 1 | YES - classified read-only; no write method included |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | YES - classified read-only; no write method included |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | YES - classified read-only; no write method included |
| totalClaimed | `totalClaimed(address)` | `0xef5d9ae8` | view | 1 | 1 | YES - classified read-only; no write method included |
| totalDeposited | `totalDeposited(address)` | `0x53055481` | view | 1 | 1 | YES - classified read-only; no write method included |
| totalReserved | `totalReserved(address)` | `0x6d97e14d` | view | 1 | 1 | YES - classified read-only; no write method included |

This allowlist group does not authorize generated config by itself.

This allowlist group does not authorize protocol client implementation.

This allowlist group does not authorize public demo launch.

This allowlist group does not authorize mainnet deployment.


## Required next artifact

The next required artifact is:

- Base Sepolia write method blocklist.

The next allowed artifact after both read allowlist and write blocklist are complete is:

- generated Base Sepolia read-only config candidate, only if the config package gate allows generation.

The next allowed artifacts are not:

- protocol client implementation;
- app source;
- package source;
- infra source;
- public demo launch;
- mainnet deployment.

## Write blocklist blocker

Write blocklist remains required.

Every method classified as a write method in the ABI method classification must be included in the write blocklist.

Generated config remains blocked until write blocklist is complete.

No write method may be included in generated read-only config.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- write blocklist is complete;
- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

This read method allowlist does not authorize generated config by itself.

## Protocol client blocker

Protocol-client implementation remains blocked until:

- Base Sepolia read-only config is approved;
- write blocklist is complete;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

This read method allowlist does not authorize protocol client implementation.

## Public demo blocker

Public Base Sepolia demo launch remains blocked until:

- generated read-only config is approved;
- protocol client gate is complete;
- public warning language is implemented;
- network badge is visible;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

This read method allowlist does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia read method may be promoted to mainnet.

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

Raw ABI JSON values are intentionally not copied into this file.

## No-go conditions

Do not use this read method allowlist as a write blocklist.

Do not use this read method allowlist alone in generated config.

Do not use this read method allowlist alone in protocol clients.

Do not use this read method allowlist alone in public demo source.

Do not use this read method allowlist for mainnet.

Do not use this file as deployment authorization.

Do not use this file as public demo approval.

Do not use this file as mainnet approval.

Do not use this file as production ABI approval.

Do not use this file as treasury approval.

Do not use this file as governance approval.

Do not include write methods in generated read-only config.

Do not execute write methods.

Do not accept guessed methods.

Do not accept manually edited ABIs without receipt.

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

This read method allowlist is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it records the ABI method classification commit;
- it records the ABI checksum receipts commit;
- it records Base Sepolia;
- it records chain ID 84532;
- it includes only methods classified as read-only;
- it includes no write methods;
- it records method signatures;
- it records selectors;
- it states write blocklist remains required;
- it states generated config remains blocked;
- it states protocol clients remain blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
