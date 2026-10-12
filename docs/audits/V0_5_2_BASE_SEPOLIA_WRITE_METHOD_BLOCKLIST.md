# NST Core v0.5.2 Base Sepolia Write Method Blocklist

Status: WRITE_METHOD_BLOCKLIST_COMPLETE_PENDING_CONFIG_GATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T13:16:03Z
Current commit at write blocklist creation: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

ABI method classification file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_METHOD_CLASSIFICATION.md

ABI method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Base Sepolia read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

ABI checksum receipts commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

ABI evidence records commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Base Sepolia address checksum receipts commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Write and write-like methods blocklisted: 135

Safety override methods included: 25

This file is not a generated config.

This file is not a read allowlist.

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

This document records the Base Sepolia write method blocklist derived from the repaired ABI method classification with safety override.

Every method classified as WRITE_METHOD is excluded from generated read-only config.

Write-like safety override methods are also excluded from generated read-only config, even if the ABI state mutability label is view or pure.

Every method in this blocklist is excluded from public demo execution.

Every method in this blocklist is excluded from transaction rail execution.

Every method in this blocklist is excluded from governance writes.

Every method in this blocklist is excluded from treasury routes.

Every method in this blocklist is excluded from mainnet.

This write blocklist does not unlock generated config by itself.

Config package gate remains required.

Protocol client package gate remains required.

## Write blocklist table

| Blocklist ID | ABI record ID | Supplemental ABI ID | Contract name | Source file | Method name | Signature | Selector | State mutability | Input count | Output count | Exclusion class | Exclusion reason | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | ---: | ---: | --- | --- | --- |
| base-sepolia-write-block-1 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | BURNER_ROLE | `BURNER_ROLE()` | `0x282c51f3` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-2 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-3 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | approve | `approve(address,uint256)` | `0x095ea7b3` | nonpayable | 2 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-4 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | burn | `burn(uint256)` | `0x42966c68` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-5 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | burnFromAccount | `burnFromAccount(address,uint256)` | `0x59dc2dd2` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-6 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-7 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | mint | `mint(address,uint256)` | `0x40c10f19` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-8 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | mintTreasurySplit | `mintTreasurySplit(uint256)` | `0x32871210` | nonpayable | 1 | 5 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-9 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-10 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-11 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-12 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | setBurner | `setBurner(address,bool)` | `0x0d895ee1` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-13 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | setDirectMinter | `setDirectMinter(address,bool)` | `0xbbcfabe6` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-14 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | setTreasuryMinter | `setTreasuryMinter(address,bool)` | `0x1b7895b4` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-15 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | transfer | `transfer(address,uint256)` | `0xa9059cbb` | nonpayable | 2 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-16 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | transferFrom | `transferFrom(address,address,uint256)` | `0x23b872dd` | nonpayable | 3 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-17 | base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-18 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | BAN_REGISTRY | `BAN_REGISTRY()` | `0x252a72b1` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-19 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | MINT_MANAGER_ROLE | `MINT_MANAGER_ROLE()` | `0xc202aaf8` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-20 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | MINT_PRICE | `MINT_PRICE()` | `0xc002d23d` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-21 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-22 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | SWAP_DEADLINE_BUFFER | `SWAP_DEADLINE_BUFFER()` | `0xcbb117a3` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-23 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | SWAP_OPERATOR_ROLE | `SWAP_OPERATOR_ROLE()` | `0xfef133e4` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-24 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | applyYieldSwapMinOut | `applyYieldSwapMinOut()` | `0x0f7b6a7a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-25 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | approve | `approve(address,uint256)` | `0x095ea7b3` | pure | 2 | 0 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-26 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | burn | `burn(uint256)` | `0x42966c68` | pure | 1 | 0 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-27 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | cancelYieldSwapMinOutProposal | `cancelYieldSwapMinOutProposal()` | `0xc9cc1cbd` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-28 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | closeMintPermanently | `closeMintPermanently()` | `0xaa25b7d4` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-29 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | freezeBaseURI | `freezeBaseURI()` | `0xe7bc8208` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-30 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | freezeContractURI | `freezeContractURI()` | `0x20b600ad` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-31 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-32 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | mint | `mint()` | `0x1249c58b` | payable | 0 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-33 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-34 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | processPendingYieldETH | `processPendingYieldETH(uint256)` | `0xc18fd16a` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-35 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | proposeYieldSwapMinOut | `proposeYieldSwapMinOut(uint256)` | `0x8fa09175` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-36 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-37 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | 3 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-38 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-39 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | safeTransferFrom | `safeTransferFrom(address,address,uint256)` | `0x42842e0e` | nonpayable | 3 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-40 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | safeTransferFrom | `safeTransferFrom(address,address,uint256,bytes)` | `0xb88d4fde` | pure | 4 | 0 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-41 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | setApprovalForAll | `setApprovalForAll(address,bool)` | `0xa22cb465` | pure | 2 | 0 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-42 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | setBaseURI | `setBaseURI(string)` | `0x55f804b3` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-43 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | setContractURI | `setContractURI(string)` | `0x938e3d7b` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-44 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | setMintOpen | `setMintOpen(bool)` | `0xf8004d31` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-45 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | sweepETH | `sweepETH(address,uint256)` | `0x5b116ab8` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-46 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | sweepableETH | `sweepableETH()` | `0xde59d0a5` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-47 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | transferFrom | `transferFrom(address,address,uint256)` | `0x23b872dd` | pure | 3 | 0 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-48 | base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-49 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-50 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | bindSponsor | `bindSponsor(address)` | `0x50fb95f5` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-51 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-52 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | mintsUntilNextPair | `mintsUntilNextPair(address)` | `0x8ae0d859` | view | 1 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-53 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-54 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | recordSuccessfulMint | `recordSuccessfulMint(address)` | `0xf885e722` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-55 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-56 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-57 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | setRewardEscrow | `setRewardEscrow(address)` | `0x5de39934` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-58 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | setRewardToken | `setRewardToken(address)` | `0x8aee8127` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-59 | base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-60 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-61 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | batchClaim | `batchClaim(uint256[])` | `0xbc292782` | nonpayable | 1 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-62 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | claim | `claim(uint256)` | `0x379607f5` | nonpayable | 1 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-63 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | createGrant | `createGrant(address,uint256,uint64)` | `0xb6022657` | nonpayable | 3 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-64 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-65 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-66 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-67 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | 3 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-68 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-69 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | setRewardToken | `setRewardToken(address)` | `0x8aee8127` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-70 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | unlockAtOf | `unlockAtOf(uint256)` | `0x59bcb546` | view | 1 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-71 | base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-72 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | BAN_MANAGER_ROLE | `BAN_MANAGER_ROLE()` | `0xb93e0b42` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-73 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-74 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | banAccount | `banAccount(address,bytes32)` | `0xa9028a0a` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-75 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | batchBanAccounts | `batchBanAccounts(address[],bytes32)` | `0x2d825b79` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-76 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | batchSetSystemExempt | `batchSetSystemExempt(address[],bool)` | `0x2aa17473` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-77 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | batchSetVetted | `batchSetVetted(address[],bool)` | `0x9b83a99a` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-78 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-79 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-80 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-81 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-82 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | setEntityProfile | `setEntityProfile(address,uint8,uint8,bytes32)` | `0xd1220f64` | nonpayable | 4 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-83 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | setMembershipToken | `setMembershipToken(address)` | `0x034f6436` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-84 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | setOperationalPermissions | `setOperationalPermissions(address,bool,bool,bool)` | `0x158e944c` | nonpayable | 4 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-85 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | setSystemExempt | `setSystemExempt(address,bool)` | `0x6336f3ac` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-86 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | setVetted | `setVetted(address,bool)` | `0xf1ac7947` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-87 | base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-88 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-89 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | createRoute | `createRoute(bytes32,address,address,uint16,bool,uint8,bytes32)` | `0x525f159f` | nonpayable | 7 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-90 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-91 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | lockRoute | `lockRoute(bytes32)` | `0x400b76e8` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-92 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-93 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-94 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | 3 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-95 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | rescueETH | `rescueETH(address,uint256)` | `0x099a04e5` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-96 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-97 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | routeERC20 | `routeERC20(bytes32,uint256)` | `0x21313df2` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-98 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | routeERC20BySplit | `routeERC20BySplit(address,uint256,bytes32[])` | `0xa83c5972` | nonpayable | 3 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-99 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | routeETH | `routeETH(bytes32)` | `0xea99db86` | payable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-100 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | routeETHBySplit | `routeETHBySplit(bytes32[])` | `0x999e2b67` | payable | 1 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-101 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | setRouteEnabled | `setRouteEnabled(bytes32,bool)` | `0xf15f48d4` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-102 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-103 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | updateRouteAsset | `updateRouteAsset(bytes32,address)` | `0xcfaa6801` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-104 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | updateRouteBps | `updateRouteBps(bytes32,uint16)` | `0x3175c649` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-105 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | updateRouteDestination | `updateRouteDestination(bytes32,address)` | `0xdf2b573d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-106 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | updateRouteMetadata | `updateRouteMetadata(bytes32,bytes32)` | `0x7536dfea` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-107 | base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | updateRouteType | `updateRouteType(bytes32,uint8)` | `0xffa6017e` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-108 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-109 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-110 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | issueCredential | `issueCredential(address,uint8,bytes32,bytes32,bytes32,uint64)` | `0x065d6e1c` | nonpayable | 6 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-111 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-112 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-113 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | replaceCredential | `replaceCredential(uint256,bytes32,bytes32,bytes32,uint64)` | `0xd5dc5830` | nonpayable | 5 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-114 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | revokeCredential | `revokeCredential(uint256)` | `0x1b87278d` | nonpayable | 1 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-115 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-116 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | setCredentialURI | `setCredentialURI(uint256,bytes32)` | `0xbad15d57` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-117 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | setProofStatus | `setProofStatus(uint256,uint8)` | `0xe5fb2b48` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-118 | base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-119 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | CLAIM_MANAGER_ROLE | `CLAIM_MANAGER_ROLE()` | `0xc9581137` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-120 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-121 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | RESCUE_MANAGER_ROLE | `RESCUE_MANAGER_ROLE()` | `0x0213bfc7` | view | 0 | 1 | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-122 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | cancelGrant | `cancelGrant(uint256,bytes32)` | `0xea7363e0` | nonpayable | 2 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-123 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | claim | `claim(uint256)` | `0x379607f5` | nonpayable | 1 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-124 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | claimFor | `claimFor(uint256)` | `0xbd2fb91d` | nonpayable | 1 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-125 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | createGrant | `createGrant(address,address,uint256,uint64,uint64,bytes32,bytes32)` | `0x19c29366` | nonpayable | 7 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-126 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | depositERC20 | `depositERC20(address,uint256,bytes32)` | `0x59a37685` | nonpayable | 3 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-127 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | depositETH | `depositETH(bytes32)` | `0xd68d9d4e` | payable | 1 | 1 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-128 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-129 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-130 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-131 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | 3 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-132 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | rescueETH | `rescueETH(address,uint256)` | `0x099a04e5` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-133 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-134 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | setAssetAllowed | `setAssetAllowed(address,bool)` | `0xe53c0456` | nonpayable | 2 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |
| base-sepolia-write-block-135 | base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | Method classified as WRITE_METHOD through committed safety-override ABI method classification and excluded from read-only config. | WRITE_BLOCKLISTED_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET |


## Write blocklist group for SA1

ABI record ID: base-sepolia-abi-evidence-record-sa1

Supplemental ABI candidate ID: SA1

Contract name: CFTv2

Resolved source file: src/CFTv2.sol

Contract label context: CFT, CFTv2, NST, ShieldRegistry, YieldPool

Normalized ABI SHA-256: `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Write or write-like method count in this group: 17

Status: WRITE_BLOCKLIST_GROUP_COMPLETE_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET

| Method name | Signature | Selector | State mutability | Exclusion class | Block confirmation |
| --- | --- | --- | --- | --- | --- |
| BURNER_ROLE | `BURNER_ROLE()` | `0x282c51f3` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| approve | `approve(address,uint256)` | `0x095ea7b3` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| burn | `burn(uint256)` | `0x42966c68` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| burnFromAccount | `burnFromAccount(address,uint256)` | `0x59dc2dd2` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| mint | `mint(address,uint256)` | `0x40c10f19` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| mintTreasurySplit | `mintTreasurySplit(uint256)` | `0x32871210` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| pause | `pause()` | `0x8456cb59` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setBurner | `setBurner(address,bool)` | `0x0d895ee1` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setDirectMinter | `setDirectMinter(address,bool)` | `0xbbcfabe6` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setTreasuryMinter | `setTreasuryMinter(address,bool)` | `0x1b7895b4` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| transfer | `transfer(address,uint256)` | `0xa9059cbb` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| transferFrom | `transferFrom(address,address,uint256)` | `0x23b872dd` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |

This blocklist group does not authorize generated config by itself.

This blocklist group does not authorize protocol client implementation.

This blocklist group does not authorize public demo launch.

This blocklist group does not authorize mainnet deployment.

## Write blocklist group for SA2

ABI record ID: base-sepolia-abi-evidence-record-sa2

Supplemental ABI candidate ID: SA2

Contract name: NSTSBT

Resolved source file: src/NSTSBT.sol

Contract label context: BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool

Normalized ABI SHA-256: `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Write or write-like method count in this group: 31

Status: WRITE_BLOCKLIST_GROUP_COMPLETE_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET

| Method name | Signature | Selector | State mutability | Exclusion class | Block confirmation |
| --- | --- | --- | --- | --- | --- |
| BAN_REGISTRY | `BAN_REGISTRY()` | `0x252a72b1` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| MINT_MANAGER_ROLE | `MINT_MANAGER_ROLE()` | `0xc202aaf8` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| MINT_PRICE | `MINT_PRICE()` | `0xc002d23d` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| SWAP_DEADLINE_BUFFER | `SWAP_DEADLINE_BUFFER()` | `0xcbb117a3` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| SWAP_OPERATOR_ROLE | `SWAP_OPERATOR_ROLE()` | `0xfef133e4` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| applyYieldSwapMinOut | `applyYieldSwapMinOut()` | `0x0f7b6a7a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| approve | `approve(address,uint256)` | `0x095ea7b3` | pure | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| burn | `burn(uint256)` | `0x42966c68` | pure | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| cancelYieldSwapMinOutProposal | `cancelYieldSwapMinOutProposal()` | `0xc9cc1cbd` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| closeMintPermanently | `closeMintPermanently()` | `0xaa25b7d4` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| freezeBaseURI | `freezeBaseURI()` | `0xe7bc8208` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| freezeContractURI | `freezeContractURI()` | `0x20b600ad` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| mint | `mint()` | `0x1249c58b` | payable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| pause | `pause()` | `0x8456cb59` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| processPendingYieldETH | `processPendingYieldETH(uint256)` | `0xc18fd16a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| proposeYieldSwapMinOut | `proposeYieldSwapMinOut(uint256)` | `0x8fa09175` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| safeTransferFrom | `safeTransferFrom(address,address,uint256)` | `0x42842e0e` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| safeTransferFrom | `safeTransferFrom(address,address,uint256,bytes)` | `0xb88d4fde` | pure | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setApprovalForAll | `setApprovalForAll(address,bool)` | `0xa22cb465` | pure | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setBaseURI | `setBaseURI(string)` | `0x55f804b3` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setContractURI | `setContractURI(string)` | `0x938e3d7b` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setMintOpen | `setMintOpen(bool)` | `0xf8004d31` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| sweepETH | `sweepETH(address,uint256)` | `0x5b116ab8` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| sweepableETH | `sweepableETH()` | `0xde59d0a5` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| transferFrom | `transferFrom(address,address,uint256)` | `0x23b872dd` | pure | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |

This blocklist group does not authorize generated config by itself.

This blocklist group does not authorize protocol client implementation.

This blocklist group does not authorize public demo launch.

This blocklist group does not authorize mainnet deployment.

## Write blocklist group for SA3

ABI record ID: base-sepolia-abi-evidence-record-sa3

Supplemental ABI candidate ID: SA3

Contract name: ReferralController

Resolved source file: src/ReferralController.sol

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

Normalized ABI SHA-256: `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Write or write-like method count in this group: 11

Status: WRITE_BLOCKLIST_GROUP_COMPLETE_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET

| Method name | Signature | Selector | State mutability | Exclusion class | Block confirmation |
| --- | --- | --- | --- | --- | --- |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| bindSponsor | `bindSponsor(address)` | `0x50fb95f5` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| mintsUntilNextPair | `mintsUntilNextPair(address)` | `0x8ae0d859` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| pause | `pause()` | `0x8456cb59` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| recordSuccessfulMint | `recordSuccessfulMint(address)` | `0xf885e722` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setRewardEscrow | `setRewardEscrow(address)` | `0x5de39934` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setRewardToken | `setRewardToken(address)` | `0x8aee8127` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |

This blocklist group does not authorize generated config by itself.

This blocklist group does not authorize protocol client implementation.

This blocklist group does not authorize public demo launch.

This blocklist group does not authorize mainnet deployment.

## Write blocklist group for SA4

ABI record ID: base-sepolia-abi-evidence-record-sa4

Supplemental ABI candidate ID: SA4

Contract name: RewardEscrow

Resolved source file: src/RewardEscrow.sol

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

Normalized ABI SHA-256: `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Write or write-like method count in this group: 12

Status: WRITE_BLOCKLIST_GROUP_COMPLETE_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET

| Method name | Signature | Selector | State mutability | Exclusion class | Block confirmation |
| --- | --- | --- | --- | --- | --- |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| batchClaim | `batchClaim(uint256[])` | `0xbc292782` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| claim | `claim(uint256)` | `0x379607f5` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| createGrant | `createGrant(address,uint256,uint64)` | `0xb6022657` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| pause | `pause()` | `0x8456cb59` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setRewardToken | `setRewardToken(address)` | `0x8aee8127` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unlockAtOf | `unlockAtOf(uint256)` | `0x59bcb546` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |

This blocklist group does not authorize generated config by itself.

This blocklist group does not authorize protocol client implementation.

This blocklist group does not authorize public demo launch.

This blocklist group does not authorize mainnet deployment.

## Write blocklist group for SA5

ABI record ID: base-sepolia-abi-evidence-record-sa5

Supplemental ABI candidate ID: SA5

Contract name: ShieldRegistry

Resolved source file: src/ShieldRegistry.sol

Contract label context: BanRegistry, NST, ShieldRegistry, VettingRegistry

Normalized ABI SHA-256: `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Write or write-like method count in this group: 16

Status: WRITE_BLOCKLIST_GROUP_COMPLETE_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET

| Method name | Signature | Selector | State mutability | Exclusion class | Block confirmation |
| --- | --- | --- | --- | --- | --- |
| BAN_MANAGER_ROLE | `BAN_MANAGER_ROLE()` | `0xb93e0b42` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| banAccount | `banAccount(address,bytes32)` | `0xa9028a0a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| batchBanAccounts | `batchBanAccounts(address[],bytes32)` | `0x2d825b79` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| batchSetSystemExempt | `batchSetSystemExempt(address[],bool)` | `0x2aa17473` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| batchSetVetted | `batchSetVetted(address[],bool)` | `0x9b83a99a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| pause | `pause()` | `0x8456cb59` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setEntityProfile | `setEntityProfile(address,uint8,uint8,bytes32)` | `0xd1220f64` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setMembershipToken | `setMembershipToken(address)` | `0x034f6436` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setOperationalPermissions | `setOperationalPermissions(address,bool,bool,bool)` | `0x158e944c` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setSystemExempt | `setSystemExempt(address,bool)` | `0x6336f3ac` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setVetted | `setVetted(address,bool)` | `0xf1ac7947` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |

This blocklist group does not authorize generated config by itself.

This blocklist group does not authorize protocol client implementation.

This blocklist group does not authorize public demo launch.

This blocklist group does not authorize mainnet deployment.

## Write blocklist group for SA6

ABI record ID: base-sepolia-abi-evidence-record-sa6

Supplemental ABI candidate ID: SA6

Contract name: TreasuryRouter

Resolved source file: src/TreasuryRouter.sol

Contract label context: NST, TreasuryRouter

Normalized ABI SHA-256: `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Write or write-like method count in this group: 20

Status: WRITE_BLOCKLIST_GROUP_COMPLETE_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET

| Method name | Signature | Selector | State mutability | Exclusion class | Block confirmation |
| --- | --- | --- | --- | --- | --- |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| createRoute | `createRoute(bytes32,address,address,uint16,bool,uint8,bytes32)` | `0x525f159f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| lockRoute | `lockRoute(bytes32)` | `0x400b76e8` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| pause | `pause()` | `0x8456cb59` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| rescueETH | `rescueETH(address,uint256)` | `0x099a04e5` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| routeERC20 | `routeERC20(bytes32,uint256)` | `0x21313df2` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| routeERC20BySplit | `routeERC20BySplit(address,uint256,bytes32[])` | `0xa83c5972` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| routeETH | `routeETH(bytes32)` | `0xea99db86` | payable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| routeETHBySplit | `routeETHBySplit(bytes32[])` | `0x999e2b67` | payable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setRouteEnabled | `setRouteEnabled(bytes32,bool)` | `0xf15f48d4` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| updateRouteAsset | `updateRouteAsset(bytes32,address)` | `0xcfaa6801` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| updateRouteBps | `updateRouteBps(bytes32,uint16)` | `0x3175c649` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| updateRouteDestination | `updateRouteDestination(bytes32,address)` | `0xdf2b573d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| updateRouteMetadata | `updateRouteMetadata(bytes32,bytes32)` | `0x7536dfea` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| updateRouteType | `updateRouteType(bytes32,uint8)` | `0xffa6017e` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |

This blocklist group does not authorize generated config by itself.

This blocklist group does not authorize protocol client implementation.

This blocklist group does not authorize public demo launch.

This blocklist group does not authorize mainnet deployment.

## Write blocklist group for SA7

ABI record ID: base-sepolia-abi-evidence-record-sa7

Supplemental ABI candidate ID: SA7

Contract name: VaultRegistry

Resolved source file: src/VaultRegistry.sol

Contract label context: NST, ShieldRegistry, VaultRegistry

Normalized ABI SHA-256: `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Write or write-like method count in this group: 11

Status: WRITE_BLOCKLIST_GROUP_COMPLETE_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET

| Method name | Signature | Selector | State mutability | Exclusion class | Block confirmation |
| --- | --- | --- | --- | --- | --- |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| issueCredential | `issueCredential(address,uint8,bytes32,bytes32,bytes32,uint64)` | `0x065d6e1c` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| pause | `pause()` | `0x8456cb59` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| replaceCredential | `replaceCredential(uint256,bytes32,bytes32,bytes32,uint64)` | `0xd5dc5830` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeCredential | `revokeCredential(uint256)` | `0x1b87278d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setCredentialURI | `setCredentialURI(uint256,bytes32)` | `0xbad15d57` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setProofStatus | `setProofStatus(uint256,uint8)` | `0xe5fb2b48` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |

This blocklist group does not authorize generated config by itself.

This blocklist group does not authorize protocol client implementation.

This blocklist group does not authorize public demo launch.

This blocklist group does not authorize mainnet deployment.

## Write blocklist group for SA8

ABI record ID: base-sepolia-abi-evidence-record-sa8

Supplemental ABI candidate ID: SA8

Contract name: YieldPool

Resolved source file: src/YieldPool.sol

Contract label context: NST, YieldPool

Normalized ABI SHA-256: `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe`

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Write or write-like method count in this group: 17

Status: WRITE_BLOCKLIST_GROUP_COMPLETE_NO_READ_ONLY_CONFIG_NO_PUBLIC_DEMO_NO_MAINNET

| Method name | Signature | Selector | State mutability | Exclusion class | Block confirmation |
| --- | --- | --- | --- | --- | --- |
| CLAIM_MANAGER_ROLE | `CLAIM_MANAGER_ROLE()` | `0xc9581137` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| RESCUE_MANAGER_ROLE | `RESCUE_MANAGER_ROLE()` | `0x0213bfc7` | view | WRITE_LIKE_METHOD_BLOCKED_BY_SAFETY_OVERRIDE | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| cancelGrant | `cancelGrant(uint256,bytes32)` | `0xea7363e0` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| claim | `claim(uint256)` | `0x379607f5` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| claimFor | `claimFor(uint256)` | `0xbd2fb91d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| createGrant | `createGrant(address,address,uint256,uint64,uint64,bytes32,bytes32)` | `0x19c29366` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| depositERC20 | `depositERC20(address,uint256,bytes32)` | `0x59a37685` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| depositETH | `depositETH(bytes32)` | `0xd68d9d4e` | payable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| pause | `pause()` | `0x8456cb59` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| rescueETH | `rescueETH(address,uint256)` | `0x099a04e5` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| setAssetAllowed | `setAssetAllowed(address,bool)` | `0xe53c0456` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | WRITE_METHOD_BLOCKED_BY_STATE_MUTABILITY | BLOCKED from read-only config, public demo execution, transaction rail, governance, treasury, and mainnet |

This blocklist group does not authorize generated config by itself.

This blocklist group does not authorize protocol client implementation.

This blocklist group does not authorize public demo launch.

This blocklist group does not authorize mainnet deployment.


## Required next artifact

The next allowed artifact is:

- generated Base Sepolia read-only config candidate, only if the config package gate allows generation.

The next allowed artifacts are not:

- protocol client implementation;
- app source;
- package source;
- infra source;
- public demo launch;
- mainnet deployment.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

This write method blocklist does not authorize generated config by itself.

## Read-only config constraints

Any generated read-only config must:

- include only methods from the repaired read method allowlist;
- exclude every selector in this write blocklist;
- preserve Base Sepolia chain ID 84532;
- preserve testnet-only warning language;
- preserve no-mainnet boundary;
- include no private keys;
- include no seed phrases;
- include no wallet secrets;
- include no private RPC credentials.

## Protocol client blocker

Protocol-client implementation remains blocked until:

- Base Sepolia read-only config is approved;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

This write method blocklist does not authorize protocol client implementation.

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

This write method blocklist does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia write method may be promoted to mainnet.

No Base Sepolia write method may be executed through a public demo.

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

Do not use this write method blocklist as a read allowlist.

Do not use this write method blocklist alone in generated config.

Do not use this write method blocklist alone in protocol clients.

Do not use this write method blocklist alone in public demo source.

Do not use this write method blocklist for mainnet.

Do not use this file as deployment authorization.

Do not use this file as public demo approval.

Do not use this file as mainnet approval.

Do not use this file as production ABI approval.

Do not use this file as treasury approval.

Do not use this file as governance approval.

Do not include write methods in generated read-only config.

Do not execute write methods.

Do not allow write methods in public demo.

Do not allow write methods in transaction rail.

Do not allow write methods in governance routes.

Do not allow write methods in treasury routes.

Do not accept guessed methods.

Do not accept manually edited ABIs without receipt.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not request signer keys.

Do not request wallet secrets.

Do not request private RPC credentials.

## Acceptance criteria

This write method blocklist is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it records the repaired ABI method classification commit;
- it records the repaired read method allowlist commit;
- it records the ABI checksum receipts commit;
- it records Base Sepolia;
- it records chain ID 84532;
- it includes every method classified as WRITE_METHOD;
- it includes write-like safety override methods;
- it records method signatures;
- it records selectors;
- it states generated config remains blocked;
- it states protocol clients remain blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
