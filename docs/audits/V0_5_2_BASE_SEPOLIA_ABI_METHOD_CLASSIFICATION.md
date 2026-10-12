# NST Core v0.5.2 Base Sepolia ABI Method Classification

Status: ABI_METHOD_CLASSIFICATION_COMPLETE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T10:28:31Z
Current commit at method classification creation: 39c3732b49110bd28e5b29479078c6a2de19618f

ABI evidence records file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RECORDS.md

ABI evidence records commit: 39c3732b49110bd28e5b29479078c6a2de19618f

ABI checksum receipts file: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_CHECKSUM_RECEIPTS.md

ABI checksum receipts commit: af682e55e3a428bbadf53a277a9a93b8403b9bda

Base Sepolia address checksum receipts commit: 39c3732b49110bd28e5b29479078c6a2de19618f

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Classification method: temporary Forge build artifact ABI parsing plus Foundry cast selector derivation

Temporary Forge artifact path committed: NO

Raw ABI JSON copied into this file: NO

ABI record count classified: 8

Total read methods classified: 238

Total write methods classified: 110

Total events classified: 114

Total errors classified: 174

This file is not a read allowlist.

This file is not a write blocklist.

This file is not a generated config.

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

This file does not approve any Base Sepolia read method for generated config until read allowlist is complete.

This file does not approve any Base Sepolia write method for execution.

This file does not approve transaction rail execution.

This file does not approve governance writes.

This file does not approve treasury routes.

This file does not authorize any public mainnet mint interface.

## Purpose

This document classifies approved Base Sepolia ABI methods into read methods and write methods.

Read methods may proceed to read allowlist drafting.

Write methods must proceed to write blocklist drafting.

No method may be used in generated config until read allowlist and write blocklist artifacts are complete.

No write method may be included in a read-only allowlist.

## Classification summary table

| ABI record ID | Supplemental ABI ID | Contract name | Source file | Read methods | Write methods | Events | Errors | Constructors | Status |
| --- | --- | --- | --- | ---: | ---: | ---: | ---: | ---: | --- |
| base-sepolia-abi-evidence-record-sa1 | SA1 | CFTv2 | src/CFTv2.sol | 31 | 15 | 14 | 16 | 1 | METHOD_CLASSIFICATION_COMPLETE |
| base-sepolia-abi-evidence-record-sa2 | SA2 | NSTSBT | src/NSTSBT.sol | 60 | 19 | 28 | 46 | 1 | METHOD_CLASSIFICATION_COMPLETE |
| base-sepolia-abi-evidence-record-sa3 | SA3 | ReferralController | src/ReferralController.sol | 25 | 9 | 11 | 21 | 1 | METHOD_CLASSIFICATION_COMPLETE |
| base-sepolia-abi-evidence-record-sa4 | SA4 | RewardEscrow | src/RewardEscrow.sol | 17 | 10 | 9 | 20 | 1 | METHOD_CLASSIFICATION_COMPLETE |
| base-sepolia-abi-evidence-record-sa5 | SA5 | ShieldRegistry | src/ShieldRegistry.sol | 25 | 14 | 11 | 11 | 1 | METHOD_CLASSIFICATION_COMPLETE |
| base-sepolia-abi-evidence-record-sa6 | SA6 | TreasuryRouter | src/TreasuryRouter.sol | 30 | 19 | 19 | 23 | 1 | METHOD_CLASSIFICATION_COMPLETE |
| base-sepolia-abi-evidence-record-sa7 | SA7 | VaultRegistry | src/VaultRegistry.sol | 27 | 10 | 10 | 16 | 1 | METHOD_CLASSIFICATION_COMPLETE |
| base-sepolia-abi-evidence-record-sa8 | SA8 | YieldPool | src/YieldPool.sol | 23 | 14 | 12 | 21 | 1 | METHOD_CLASSIFICATION_COMPLETE |


## Method classification for SA1

ABI record ID: base-sepolia-abi-evidence-record-sa1

Supplemental ABI candidate ID: SA1

Contract name: CFTv2

Declaration type: contract

Resolved source file: src/CFTv2.sol

Source resolution: BASENAME_RESOLVED_FROM_CFTv2.sol

Contract label context: CFT, CFTv2, NST, ShieldRegistry, YieldPool

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Normalized ABI SHA-256: `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b`

Temporary artifact path committed: NO

Raw ABI JSON copied into classification: NO

Read method count: 31

Write method count: 15

Event count: 14

Error count: 16

Constructor entry count: 1

Status: METHOD_CLASSIFICATION_COMPLETE

### Read methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | READ_METHOD |
| BUILDING_TREASURY | `BUILDING_TREASURY()` | `0x186a8465` | view | 0 | 1 | READ_METHOD |
| BUILDING_TREASURY_BPS | `BUILDING_TREASURY_BPS()` | `0x79d8cbe4` | view | 0 | 1 | READ_METHOD |
| BURNER_ROLE | `BURNER_ROLE()` | `0x282c51f3` | view | 0 | 1 | READ_METHOD |
| CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | READ_METHOD |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | READ_METHOD |
| DIRECT_MINTER_ROLE | `DIRECT_MINTER_ROLE()` | `0x0ab3eb25` | view | 0 | 1 | READ_METHOD |
| FIRST_NATIONS_BPS | `FIRST_NATIONS_BPS()` | `0x009d11f1` | view | 0 | 1 | READ_METHOD |
| FIRST_NATIONS_TREASURY | `FIRST_NATIONS_TREASURY()` | `0x2790963a` | view | 0 | 1 | READ_METHOD |
| FOUNDER_BPS | `FOUNDER_BPS()` | `0xb4f20e45` | view | 0 | 1 | READ_METHOD |
| FOUNDER_TREASURY | `FOUNDER_TREASURY()` | `0x97021e44` | view | 0 | 1 | READ_METHOD |
| GENESIS_SUPPLY | `GENESIS_SUPPLY()` | `0x99ec6765` | view | 0 | 1 | READ_METHOD |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | READ_METHOD |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | READ_METHOD |
| TREASURY_MINT_ROLE | `TREASURY_MINT_ROLE()` | `0xfd8c7e0d` | view | 0 | 1 | READ_METHOD |
| VIRILITY_BPS | `VIRILITY_BPS()` | `0xfffbc1fa` | view | 0 | 1 | READ_METHOD |
| VIRILITY_TREASURY | `VIRILITY_TREASURY()` | `0xe496f7af` | view | 0 | 1 | READ_METHOD |
| YIELD_POOL | `YIELD_POOL()` | `0xf46298cb` | view | 0 | 1 | READ_METHOD |
| YIELD_POOL_BPS | `YIELD_POOL_BPS()` | `0x6fc2a137` | view | 0 | 1 | READ_METHOD |
| allowance | `allowance(address,address)` | `0xdd62ed3e` | view | 2 | 1 | READ_METHOD |
| balanceOf | `balanceOf(address)` | `0x70a08231` | view | 1 | 1 | READ_METHOD |
| decimals | `decimals()` | `0x313ce567` | view | 0 | 1 | READ_METHOD |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | READ_METHOD |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | READ_METHOD |
| isTransferParticipantAllowed | `isTransferParticipantAllowed(address)` | `0xe9afddac` | view | 1 | 1 | READ_METHOD |
| name | `name()` | `0x06fdde03` | view | 0 | 1 | READ_METHOD |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | READ_METHOD |
| previewTreasurySplit | `previewTreasurySplit(uint256)` | `0x0519ab96` | pure | 1 | 5 | READ_METHOD |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | READ_METHOD |
| symbol | `symbol()` | `0x95d89b41` | view | 0 | 1 | READ_METHOD |
| totalSupply | `totalSupply()` | `0x18160ddd` | view | 0 | 1 | READ_METHOD |


### Write methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| approve | `approve(address,uint256)` | `0x095ea7b3` | nonpayable | 2 | 1 | WRITE_METHOD |
| burn | `burn(uint256)` | `0x42966c68` | nonpayable | 1 | 0 | WRITE_METHOD |
| burnFromAccount | `burnFromAccount(address,uint256)` | `0x59dc2dd2` | nonpayable | 2 | 0 | WRITE_METHOD |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD |
| mint | `mint(address,uint256)` | `0x40c10f19` | nonpayable | 2 | 0 | WRITE_METHOD |
| mintTreasurySplit | `mintTreasurySplit(uint256)` | `0x32871210` | nonpayable | 1 | 5 | WRITE_METHOD |
| pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD |
| setBurner | `setBurner(address,bool)` | `0x0d895ee1` | nonpayable | 2 | 0 | WRITE_METHOD |
| setDirectMinter | `setDirectMinter(address,bool)` | `0xbbcfabe6` | nonpayable | 2 | 0 | WRITE_METHOD |
| setTreasuryMinter | `setTreasuryMinter(address,bool)` | `0x1b7895b4` | nonpayable | 2 | 0 | WRITE_METHOD |
| transfer | `transfer(address,uint256)` | `0xa9059cbb` | nonpayable | 2 | 1 | WRITE_METHOD |
| transferFrom | `transferFrom(address,address,uint256)` | `0x23b872dd` | nonpayable | 3 | 1 | WRITE_METHOD |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD |


### Events

Approval, Burned, BurnerSet, DirectMint, DirectMinterSet, GenesisSupplyAllocated, Paused, RoleAdminChanged, RoleGranted, RoleRevoked, Transfer, TreasuryMinterSet, TreasurySplitMinted, Unpaused

### Errors

AccessControlBadConfirmation, AccessControlUnauthorizedAccount, ERC20InsufficientAllowance, ERC20InsufficientBalance, ERC20InvalidApprover, ERC20InvalidReceiver, ERC20InvalidSender, ERC20InvalidSpender, EnforcedPause, ExpectedPause, InvalidAmount, InvalidBpsConfig, InvalidDependency, InvalidRoleHolder, ParticipantNotPermitted, ZeroAddress

### Constructor entries

1

This method classification does not authorize generated config.

This method classification does not authorize protocol client implementation.

This method classification does not authorize public demo launch.

This method classification does not authorize mainnet deployment.

Read methods may proceed to read allowlist drafting only.

Write methods must proceed to write blocklist drafting only.


## Method classification for SA2

ABI record ID: base-sepolia-abi-evidence-record-sa2

Supplemental ABI candidate ID: SA2

Contract name: NSTSBT

Declaration type: contract

Resolved source file: src/NSTSBT.sol

Source resolution: BASENAME_RESOLVED_FROM_NSTSBT.sol

Contract label context: BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Normalized ABI SHA-256: `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51`

Temporary artifact path committed: NO

Raw ABI JSON copied into classification: NO

Read method count: 60

Write method count: 19

Event count: 28

Error count: 46

Constructor entry count: 1

Status: METHOD_CLASSIFICATION_COMPLETE

### Read methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| BAN_REGISTRY | `BAN_REGISTRY()` | `0x252a72b1` | view | 0 | 1 | READ_METHOD |
| BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | READ_METHOD |
| CFT | `CFT()` | `0x877bbadb` | view | 0 | 1 | READ_METHOD |
| CONFIG_DELAY | `CONFIG_DELAY()` | `0x91311979` | view | 0 | 1 | READ_METHOD |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | READ_METHOD |
| FOUNDER_BPS | `FOUNDER_BPS()` | `0xb4f20e45` | view | 0 | 1 | READ_METHOD |
| FOUNDER_TOKEN_ID | `FOUNDER_TOKEN_ID()` | `0x63da3d45` | view | 0 | 1 | READ_METHOD |
| FOUNDER_WALLET | `FOUNDER_WALLET()` | `0x153faf2c` | view | 0 | 1 | READ_METHOD |
| GENESIS_RECIPIENT | `GENESIS_RECIPIENT()` | `0x4b384b93` | view | 0 | 1 | READ_METHOD |
| GENESIS_TOKEN_ID | `GENESIS_TOKEN_ID()` | `0xa5ee9f37` | view | 0 | 1 | READ_METHOD |
| METADATA_MANAGER_ROLE | `METADATA_MANAGER_ROLE()` | `0x529470e8` | view | 0 | 1 | READ_METHOD |
| MINT_MANAGER_ROLE | `MINT_MANAGER_ROLE()` | `0xc202aaf8` | view | 0 | 1 | READ_METHOD |
| MINT_PRICE | `MINT_PRICE()` | `0xc002d23d` | view | 0 | 1 | READ_METHOD |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | READ_METHOD |
| ROUTER | `ROUTER()` | `0x32fe7b26` | view | 0 | 1 | READ_METHOD |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | READ_METHOD |
| SWAP_DEADLINE_BUFFER | `SWAP_DEADLINE_BUFFER()` | `0xcbb117a3` | view | 0 | 1 | READ_METHOD |
| SWAP_OPERATOR_ROLE | `SWAP_OPERATOR_ROLE()` | `0xfef133e4` | view | 0 | 1 | READ_METHOD |
| TREASURY_MANAGER_ROLE | `TREASURY_MANAGER_ROLE()` | `0xebdf690f` | view | 0 | 1 | READ_METHOD |
| VETTING_REGISTRY | `VETTING_REGISTRY()` | `0x1d2a37ec` | view | 0 | 1 | READ_METHOD |
| WETH | `WETH()` | `0xad5c4648` | view | 0 | 1 | READ_METHOD |
| YIELD_POOL | `YIELD_POOL()` | `0xf46298cb` | view | 0 | 1 | READ_METHOD |
| YIELD_POOL_BPS | `YIELD_POOL_BPS()` | `0x6fc2a137` | view | 0 | 1 | READ_METHOD |
| approve | `approve(address,uint256)` | `0x095ea7b3` | pure | 2 | 0 | READ_METHOD |
| balanceOf | `balanceOf(address)` | `0x70a08231` | view | 1 | 1 | READ_METHOD |
| baseURIFrozen | `baseURIFrozen()` | `0xfb565bfd` | view | 0 | 1 | READ_METHOD |
| burn | `burn(uint256)` | `0x42966c68` | pure | 1 | 0 | READ_METHOD |
| contractURI | `contractURI()` | `0xe8a3d485` | view | 0 | 1 | READ_METHOD |
| contractURIFrozen | `contractURIFrozen()` | `0x5d6fd54d` | view | 0 | 1 | READ_METHOD |
| exists | `exists(uint256)` | `0x4f558e79` | view | 1 | 1 | READ_METHOD |
| founderSharePerMint | `founderSharePerMint()` | `0xd7104ab8` | pure | 0 | 1 | READ_METHOD |
| genesisHolder | `genesisHolder()` | `0xba1bccf6` | view | 0 | 1 | READ_METHOD |
| getApproved | `getApproved(uint256)` | `0x081812fc` | view | 1 | 1 | READ_METHOD |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | READ_METHOD |
| hasMinted | `hasMinted(address)` | `0x38e21cce` | view | 1 | 1 | READ_METHOD |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | READ_METHOD |
| isApprovedForAll | `isApprovedForAll(address,address)` | `0xe985e9c5` | pure | 2 | 1 | READ_METHOD |
| locked | `locked(uint256)` | `0xb45a3c0e` | view | 1 | 1 | READ_METHOD |
| mintOpen | `mintOpen()` | `0x24bbd049` | view | 0 | 1 | READ_METHOD |
| mintPermanentlyClosed | `mintPermanentlyClosed()` | `0xa0da4659` | view | 0 | 1 | READ_METHOD |
| name | `name()` | `0x06fdde03` | view | 0 | 1 | READ_METHOD |
| nextTokenId | `nextTokenId()` | `0x75794a3c` | view | 0 | 1 | READ_METHOD |
| ownerOf | `ownerOf(uint256)` | `0x6352211e` | view | 1 | 1 | READ_METHOD |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | READ_METHOD |
| pendingYieldETH | `pendingYieldETH()` | `0xd8ae48c0` | view | 0 | 1 | READ_METHOD |
| pendingYieldSwapMinOut | `pendingYieldSwapMinOut()` | `0x609146e2` | view | 0 | 1 | READ_METHOD |
| pendingYieldSwapMinOutExecuteAfter | `pendingYieldSwapMinOutExecuteAfter()` | `0x1f53085b` | view | 0 | 1 | READ_METHOD |
| pendingYieldSwapMinOutState | `pendingYieldSwapMinOutState()` | `0x79d01b3a` | view | 0 | 2 | READ_METHOD |
| previewSplit | `previewSplit(uint256)` | `0x13a6c05f` | pure | 1 | 2 | READ_METHOD |
| publicMintCount | `publicMintCount()` | `0x0d84d1ce` | view | 0 | 1 | READ_METHOD |
| safeTransferFrom | `safeTransferFrom(address,address,uint256,bytes)` | `0xb88d4fde` | pure | 4 | 0 | READ_METHOD |
| setApprovalForAll | `setApprovalForAll(address,bool)` | `0xa22cb465` | pure | 2 | 0 | READ_METHOD |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | READ_METHOD |
| sweepableETH | `sweepableETH()` | `0xde59d0a5` | view | 0 | 1 | READ_METHOD |
| symbol | `symbol()` | `0x95d89b41` | view | 0 | 1 | READ_METHOD |
| tokenURI | `tokenURI(uint256)` | `0xc87b56dd` | view | 1 | 1 | READ_METHOD |
| totalMinted | `totalMinted()` | `0xa2309ff8` | view | 0 | 1 | READ_METHOD |
| transferFrom | `transferFrom(address,address,uint256)` | `0x23b872dd` | pure | 3 | 0 | READ_METHOD |
| yieldSharePerMint | `yieldSharePerMint()` | `0x050c8343` | pure | 0 | 1 | READ_METHOD |
| yieldSwapMinOut | `yieldSwapMinOut()` | `0x83f1483f` | view | 0 | 1 | READ_METHOD |


### Write methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| applyYieldSwapMinOut | `applyYieldSwapMinOut()` | `0x0f7b6a7a` | nonpayable | 0 | 0 | WRITE_METHOD |
| cancelYieldSwapMinOutProposal | `cancelYieldSwapMinOutProposal()` | `0xc9cc1cbd` | nonpayable | 0 | 0 | WRITE_METHOD |
| closeMintPermanently | `closeMintPermanently()` | `0xaa25b7d4` | nonpayable | 0 | 0 | WRITE_METHOD |
| freezeBaseURI | `freezeBaseURI()` | `0xe7bc8208` | nonpayable | 0 | 0 | WRITE_METHOD |
| freezeContractURI | `freezeContractURI()` | `0x20b600ad` | nonpayable | 0 | 0 | WRITE_METHOD |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD |
| mint | `mint()` | `0x1249c58b` | payable | 0 | 1 | WRITE_METHOD |
| pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD |
| processPendingYieldETH | `processPendingYieldETH(uint256)` | `0xc18fd16a` | nonpayable | 1 | 0 | WRITE_METHOD |
| proposeYieldSwapMinOut | `proposeYieldSwapMinOut(uint256)` | `0x8fa09175` | nonpayable | 1 | 0 | WRITE_METHOD |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD |
| rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | 3 | 0 | WRITE_METHOD |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD |
| safeTransferFrom | `safeTransferFrom(address,address,uint256)` | `0x42842e0e` | nonpayable | 3 | 0 | WRITE_METHOD |
| setBaseURI | `setBaseURI(string)` | `0x55f804b3` | nonpayable | 1 | 0 | WRITE_METHOD |
| setContractURI | `setContractURI(string)` | `0x938e3d7b` | nonpayable | 1 | 0 | WRITE_METHOD |
| setMintOpen | `setMintOpen(bool)` | `0xf8004d31` | nonpayable | 1 | 0 | WRITE_METHOD |
| sweepETH | `sweepETH(address,uint256)` | `0x5b116ab8` | nonpayable | 2 | 0 | WRITE_METHOD |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD |


### Events

Approval, ApprovalForAll, BaseURIFrozenSet, BaseURISet, ContractURIFrozenSet, ContractURISet, ERC20Rescued, FounderPaid, GenesisMinted, Locked, MintFeeSplit, MintOpenSet, MintPermanentlyClosedSet, Minted, Paused, PendingYieldProcessed, RoleAdminChanged, RoleGranted, RoleRevoked, SweepETH, Transfer, Unlocked, Unpaused, YieldSwapDeferred, YieldSwapMinOutChangeCanceled, YieldSwapMinOutChangeProposed, YieldSwapMinOutSet, YieldSwapSucceeded

### Errors

AccessControlBadConfirmation, AccessControlUnauthorizedAccount, AlreadyMinted, AmountExceedsPending, BannedAccount, BaseURIEmpty, BaseURIFrozen, ContractURIEmpty, ContractURIFrozen, DelayNotElapsed, DirectETHNotAccepted, ERC721IncorrectOwner, ERC721InsufficientApproval, ERC721InvalidApprover, ERC721InvalidOperator, ERC721InvalidOwner, ERC721InvalidReceiver, ERC721InvalidSender, ERC721NonexistentToken, ETHTransferFailed, EnforcedPause, ExpectedPause, FounderTokenProtected, InvalidBpsConfig, InvalidDeadlineWindow, InvalidDependency, InvalidPayment, InvalidRecipient, InvalidRoleHolder, InvalidRouter, InvalidRouterPath, InvalidSweepAmount, MintClosed, MintPermanentlyClosed, NotMintEligible, PendingConfigNotSet, ReentrancyGuardReentrantCall, SafeERC20FailedOperation, Soulbound, SwapAmountZero, SwapRetryFailed, TokenDoesNotExist, UnsupportedCall, YieldDepositZero, YieldSwapDisabled, ZeroAddress

### Constructor entries

1

This method classification does not authorize generated config.

This method classification does not authorize protocol client implementation.

This method classification does not authorize public demo launch.

This method classification does not authorize mainnet deployment.

Read methods may proceed to read allowlist drafting only.

Write methods must proceed to write blocklist drafting only.


## Method classification for SA3

ABI record ID: base-sepolia-abi-evidence-record-sa3

Supplemental ABI candidate ID: SA3

Contract name: ReferralController

Declaration type: contract

Resolved source file: src/ReferralController.sol

Source resolution: BASENAME_RESOLVED_FROM_ReferralController.sol

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Normalized ABI SHA-256: `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c`

Temporary artifact path committed: NO

Raw ABI JSON copied into classification: NO

Read method count: 25

Write method count: 9

Event count: 11

Error count: 21

Constructor entry count: 1

Status: METHOD_CLASSIFICATION_COMPLETE

### Read methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | READ_METHOD |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | READ_METHOD |
| ESCROW_DURATION | `ESCROW_DURATION()` | `0xa6efccf9` | view | 0 | 1 | READ_METHOD |
| PAIR_REWARD | `PAIR_REWARD()` | `0x7984939a` | view | 0 | 1 | READ_METHOD |
| PAIR_SIZE | `PAIR_SIZE()` | `0xa05f437e` | view | 0 | 1 | READ_METHOD |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | READ_METHOD |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | READ_METHOD |
| canBindReferral | `canBindReferral(address,address)` | `0xac1e89ef` | view | 2 | 1 | READ_METHOD |
| canSponsor | `canSponsor(address)` | `0xd884c1c1` | view | 1 | 1 | READ_METHOD |
| completedPairs | `completedPairs(address)` | `0xbd0e491b` | view | 1 | 1 | READ_METHOD |
| escrowPairsCreated | `escrowPairsCreated(address)` | `0x6338537f` | view | 1 | 1 | READ_METHOD |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | READ_METHOD |
| getSponsorSummary | `getSponsorSummary(address)` | `0x06ab5ad0` | view | 1 | 6 | READ_METHOD |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | READ_METHOD |
| isSuccessfulReferralRecorded | `isSuccessfulReferralRecorded(address)` | `0x45df58a9` | view | 1 | 1 | READ_METHOD |
| liquidPairsRewarded | `liquidPairsRewarded(address)` | `0xd7b20590` | view | 1 | 1 | READ_METHOD |
| mintsUntilNextPair | `mintsUntilNextPair(address)` | `0x8ae0d859` | view | 1 | 1 | READ_METHOD |
| nextPairWillBeEscrowed | `nextPairWillBeEscrowed(address)` | `0xafd0ce11` | view | 1 | 1 | READ_METHOD |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | READ_METHOD |
| referralBoundAt | `referralBoundAt(address)` | `0x8a239f3c` | view | 1 | 1 | READ_METHOD |
| rewardEscrow | `rewardEscrow()` | `0xa430be6c` | view | 0 | 1 | READ_METHOD |
| rewardToken | `rewardToken()` | `0xf7c618c1` | view | 0 | 1 | READ_METHOD |
| sponsorOf | `sponsorOf(address)` | `0x34e108a6` | view | 1 | 1 | READ_METHOD |
| successfulReferralMints | `successfulReferralMints(address)` | `0x29260fd1` | view | 1 | 1 | READ_METHOD |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | READ_METHOD |


### Write methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| bindSponsor | `bindSponsor(address)` | `0x50fb95f5` | nonpayable | 1 | 0 | WRITE_METHOD |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD |
| pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD |
| recordSuccessfulMint | `recordSuccessfulMint(address)` | `0xf885e722` | nonpayable | 1 | 0 | WRITE_METHOD |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD |
| setRewardEscrow | `setRewardEscrow(address)` | `0x5de39934` | nonpayable | 1 | 0 | WRITE_METHOD |
| setRewardToken | `setRewardToken(address)` | `0x8aee8127` | nonpayable | 1 | 0 | WRITE_METHOD |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD |


### Events

EscrowRewardCreated, LiquidRewardIssued, Paused, ReferralMintRecorded, RewardEscrowSet, RewardTokenSet, RoleAdminChanged, RoleGranted, RoleRevoked, SponsorBound, Unpaused

### Errors

AccessControlBadConfirmation, AccessControlUnauthorizedAccount, EnforcedPause, ExpectedPause, InvalidDependency, InvalidRoleHolder, InviteeAlreadyActiveMember, InviteeBanned, InviteeNotActiveMember, InviteeNotEligible, InviteeSystemExempt, NoSponsorBound, ReentrancyGuardReentrantCall, ReferralAlreadyRecorded, RewardEscrowNotConfigured, RewardTokenNotConfigured, SelfReferral, SponsorAlreadyBound, SponsorNotEligible, SponsorSystemExempt, ZeroAddress

### Constructor entries

1

This method classification does not authorize generated config.

This method classification does not authorize protocol client implementation.

This method classification does not authorize public demo launch.

This method classification does not authorize mainnet deployment.

Read methods may proceed to read allowlist drafting only.

Write methods must proceed to write blocklist drafting only.


## Method classification for SA4

ABI record ID: base-sepolia-abi-evidence-record-sa4

Supplemental ABI candidate ID: SA4

Contract name: RewardEscrow

Declaration type: contract

Resolved source file: src/RewardEscrow.sol

Source resolution: BASENAME_RESOLVED_FROM_RewardEscrow.sol

Contract label context: CFT, NST, RewardEscrow, ShieldRegistry

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Normalized ABI SHA-256: `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25`

Temporary artifact path committed: NO

Raw ABI JSON copied into classification: NO

Read method count: 17

Write method count: 10

Event count: 9

Error count: 20

Constructor entry count: 1

Status: METHOD_CLASSIFICATION_COMPLETE

### Read methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| CONFIG_MANAGER_ROLE | `CONFIG_MANAGER_ROLE()` | `0xa0c7f799` | view | 0 | 1 | READ_METHOD |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | READ_METHOD |
| GRANT_CREATOR_ROLE | `GRANT_CREATOR_ROLE()` | `0x523cfc25` | view | 0 | 1 | READ_METHOD |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | READ_METHOD |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | READ_METHOD |
| amountOf | `amountOf(uint256)` | `0xe8eb2284` | view | 1 | 1 | READ_METHOD |
| beneficiaryOf | `beneficiaryOf(uint256)` | `0x124cfc8c` | view | 1 | 1 | READ_METHOD |
| getGrant | `getGrant(uint256)` | `0xb8cc6c93` | view | 1 | 4 | READ_METHOD |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | READ_METHOD |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | READ_METHOD |
| isClaimable | `isClaimable(uint256)` | `0x89610a09` | view | 1 | 1 | READ_METHOD |
| isClaimed | `isClaimed(uint256)` | `0x9e34070f` | view | 1 | 1 | READ_METHOD |
| nextGrantId | `nextGrantId()` | `0xbb8b3ea9` | view | 0 | 1 | READ_METHOD |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | READ_METHOD |
| rewardToken | `rewardToken()` | `0xf7c618c1` | view | 0 | 1 | READ_METHOD |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | READ_METHOD |
| unlockAtOf | `unlockAtOf(uint256)` | `0x59bcb546` | view | 1 | 1 | READ_METHOD |


### Write methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| batchClaim | `batchClaim(uint256[])` | `0xbc292782` | nonpayable | 1 | 1 | WRITE_METHOD |
| claim | `claim(uint256)` | `0x379607f5` | nonpayable | 1 | 1 | WRITE_METHOD |
| createGrant | `createGrant(address,uint256,uint64)` | `0xb6022657` | nonpayable | 3 | 1 | WRITE_METHOD |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD |
| pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD |
| rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | 3 | 0 | WRITE_METHOD |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD |
| setRewardToken | `setRewardToken(address)` | `0x8aee8127` | nonpayable | 1 | 0 | WRITE_METHOD |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD |


### Events

ERC20Rescued, GrantClaimed, GrantCreated, Paused, RewardTokenSet, RoleAdminChanged, RoleGranted, RoleRevoked, Unpaused

### Errors

AccessControlBadConfirmation, AccessControlUnauthorizedAccount, BannedAccount, BeneficiaryNotActiveMember, EmptyArray, EnforcedPause, ExpectedPause, GrantAlreadyClaimed, GrantNotFound, GrantNotMature, InvalidAmount, InvalidBeneficiary, InvalidDependency, InvalidRoleHolder, InvalidUnlockAt, NotBeneficiary, ReentrancyGuardReentrantCall, RewardTokenNotConfigured, SafeERC20FailedOperation, ZeroAddress

### Constructor entries

1

This method classification does not authorize generated config.

This method classification does not authorize protocol client implementation.

This method classification does not authorize public demo launch.

This method classification does not authorize mainnet deployment.

Read methods may proceed to read allowlist drafting only.

Write methods must proceed to write blocklist drafting only.


## Method classification for SA5

ABI record ID: base-sepolia-abi-evidence-record-sa5

Supplemental ABI candidate ID: SA5

Contract name: ShieldRegistry

Declaration type: contract

Resolved source file: src/ShieldRegistry.sol

Source resolution: BASENAME_RESOLVED_FROM_ShieldRegistry.sol

Contract label context: BanRegistry, NST, ShieldRegistry, VettingRegistry

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Normalized ABI SHA-256: `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254`

Temporary artifact path committed: NO

Raw ABI JSON copied into classification: NO

Read method count: 25

Write method count: 14

Event count: 11

Error count: 11

Constructor entry count: 1

Status: METHOD_CLASSIFICATION_COMPLETE

### Read methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| BAN_MANAGER_ROLE | `BAN_MANAGER_ROLE()` | `0xb93e0b42` | view | 0 | 1 | READ_METHOD |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | READ_METHOD |
| EXEMPTION_MANAGER_ROLE | `EXEMPTION_MANAGER_ROLE()` | `0x31af9957` | view | 0 | 1 | READ_METHOD |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | READ_METHOD |
| PROFILE_MANAGER_ROLE | `PROFILE_MANAGER_ROLE()` | `0x091cfe70` | view | 0 | 1 | READ_METHOD |
| VETTING_MANAGER_ROLE | `VETTING_MANAGER_ROLE()` | `0xb15ce9be` | view | 0 | 1 | READ_METHOD |
| activeMember | `activeMember(address)` | `0xb0d99a40` | view | 1 | 1 | READ_METHOD |
| beneficialOwnerHash | `beneficialOwnerHash(address)` | `0x0cf8b753` | view | 1 | 1 | READ_METHOD |
| canInviteMembers | `canInviteMembers(address)` | `0x008a28f7` | view | 1 | 1 | READ_METHOD |
| canOriginateInvoices | `canOriginateInvoices(address)` | `0xce0467d1` | view | 1 | 1 | READ_METHOD |
| canResolveDisputes | `canResolveDisputes(address)` | `0x42aa5b83` | view | 1 | 1 | READ_METHOD |
| canTouchSystem | `canTouchSystem(address)` | `0x25bbcfc1` | view | 1 | 1 | READ_METHOD |
| entityType | `entityType(address)` | `0xce793b79` | view | 1 | 1 | READ_METHOD |
| getAccountState | `getAccountState(address)` | `0x9ee2735b` | view | 1 | 11 | READ_METHOD |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | READ_METHOD |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | READ_METHOD |
| isBanned | `isBanned(address)` | `0x97f735d5` | view | 1 | 1 | READ_METHOD |
| isMintEligible | `isMintEligible(address)` | `0x8f1bb345` | view | 1 | 1 | READ_METHOD |
| isSystemExempt | `isSystemExempt(address)` | `0xf186fb39` | view | 1 | 1 | READ_METHOD |
| isVetted | `isVetted(address)` | `0x09c4a273` | view | 1 | 1 | READ_METHOD |
| jurisdictionTier | `jurisdictionTier(address)` | `0x4069382b` | view | 1 | 1 | READ_METHOD |
| membershipToken | `membershipToken()` | `0x62ad351b` | view | 0 | 1 | READ_METHOD |
| ownsNST | `ownsNST(address)` | `0xac0fa1de` | view | 1 | 1 | READ_METHOD |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | READ_METHOD |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | READ_METHOD |


### Write methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| banAccount | `banAccount(address,bytes32)` | `0xa9028a0a` | nonpayable | 2 | 0 | WRITE_METHOD |
| batchBanAccounts | `batchBanAccounts(address[],bytes32)` | `0x2d825b79` | nonpayable | 2 | 0 | WRITE_METHOD |
| batchSetSystemExempt | `batchSetSystemExempt(address[],bool)` | `0x2aa17473` | nonpayable | 2 | 0 | WRITE_METHOD |
| batchSetVetted | `batchSetVetted(address[],bool)` | `0x9b83a99a` | nonpayable | 2 | 0 | WRITE_METHOD |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD |
| pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD |
| setEntityProfile | `setEntityProfile(address,uint8,uint8,bytes32)` | `0xd1220f64` | nonpayable | 4 | 0 | WRITE_METHOD |
| setMembershipToken | `setMembershipToken(address)` | `0x034f6436` | nonpayable | 1 | 0 | WRITE_METHOD |
| setOperationalPermissions | `setOperationalPermissions(address,bool,bool,bool)` | `0x158e944c` | nonpayable | 4 | 0 | WRITE_METHOD |
| setSystemExempt | `setSystemExempt(address,bool)` | `0x6336f3ac` | nonpayable | 2 | 0 | WRITE_METHOD |
| setVetted | `setVetted(address,bool)` | `0xf1ac7947` | nonpayable | 2 | 0 | WRITE_METHOD |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD |


### Events

AccountBanned, EntityProfileSet, MembershipTokenSet, OperationalPermissionsSet, Paused, RoleAdminChanged, RoleGranted, RoleRevoked, SystemExemptionSet, Unpaused, VettingStatusSet

### Errors

AccessControlBadConfirmation, AccessControlUnauthorizedAccount, AlreadyBanned, ArrayLengthMismatch, BannedAccount, EmptyArray, EnforcedPause, ExpectedPause, InvalidMembershipToken, InvalidRoleHolder, ZeroAddress

### Constructor entries

1

This method classification does not authorize generated config.

This method classification does not authorize protocol client implementation.

This method classification does not authorize public demo launch.

This method classification does not authorize mainnet deployment.

Read methods may proceed to read allowlist drafting only.

Write methods must proceed to write blocklist drafting only.


## Method classification for SA6

ABI record ID: base-sepolia-abi-evidence-record-sa6

Supplemental ABI candidate ID: SA6

Contract name: TreasuryRouter

Declaration type: contract

Resolved source file: src/TreasuryRouter.sol

Source resolution: BASENAME_RESOLVED_FROM_TreasuryRouter.sol

Contract label context: NST, TreasuryRouter

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Normalized ABI SHA-256: `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec`

Temporary artifact path committed: NO

Raw ABI JSON copied into classification: NO

Read method count: 30

Write method count: 19

Event count: 19

Error count: 23

Constructor entry count: 1

Status: METHOD_CLASSIFICATION_COMPLETE

### Read methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| ASSET_MANAGER_ROLE | `ASSET_MANAGER_ROLE()` | `0xa4b32de8` | view | 0 | 1 | READ_METHOD |
| BPS_DENOMINATOR | `BPS_DENOMINATOR()` | `0xe1a45218` | view | 0 | 1 | READ_METHOD |
| BUILDING_TREASURY_ROUTE | `BUILDING_TREASURY_ROUTE()` | `0xbe11dddc` | view | 0 | 1 | READ_METHOD |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | READ_METHOD |
| DISPUTE_RESERVE_ROUTE | `DISPUTE_RESERVE_ROUTE()` | `0x112608ab` | view | 0 | 1 | READ_METHOD |
| EMERGENCY_MANAGER_ROLE | `EMERGENCY_MANAGER_ROLE()` | `0x7488df89` | view | 0 | 1 | READ_METHOD |
| EMERGENCY_RESERVE_ROUTE | `EMERGENCY_RESERVE_ROUTE()` | `0x6db5c915` | view | 0 | 1 | READ_METHOD |
| FIRST_NATIONS_TREASURY_ROUTE | `FIRST_NATIONS_TREASURY_ROUTE()` | `0xeae794d3` | view | 0 | 1 | READ_METHOD |
| FOUNDER_TREASURY_ROUTE | `FOUNDER_TREASURY_ROUTE()` | `0xe04d06f3` | view | 0 | 1 | READ_METHOD |
| INVOICE_SETTLEMENT_RESERVE_ROUTE | `INVOICE_SETTLEMENT_RESERVE_ROUTE()` | `0xedd38025` | view | 0 | 1 | READ_METHOD |
| MAX_SPLIT_ROUTES | `MAX_SPLIT_ROUTES()` | `0x935512c6` | view | 0 | 1 | READ_METHOD |
| NATIVE_ETH | `NATIVE_ETH()` | `0x011e1167` | view | 0 | 1 | READ_METHOD |
| OPERATING_RESERVE_ROUTE | `OPERATING_RESERVE_ROUTE()` | `0x24277e36` | view | 0 | 1 | READ_METHOD |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | READ_METHOD |
| PROTOCOL_LIQUIDITY_ROUTE | `PROTOCOL_LIQUIDITY_ROUTE()` | `0x27e37aff` | view | 0 | 1 | READ_METHOD |
| REDEMPTION_RESERVE_ROUTE | `REDEMPTION_RESERVE_ROUTE()` | `0x2b968f97` | view | 0 | 1 | READ_METHOD |
| ROUTE_MANAGER_ROLE | `ROUTE_MANAGER_ROLE()` | `0x7a0bba8d` | view | 0 | 1 | READ_METHOD |
| RWA_RESERVE_ROUTE | `RWA_RESERVE_ROUTE()` | `0x90d2af58` | view | 0 | 1 | READ_METHOD |
| TREASURY_OPERATOR_ROLE | `TREASURY_OPERATOR_ROLE()` | `0x5cc95ee8` | view | 0 | 1 | READ_METHOD |
| VIRILITY_TREASURY_ROUTE | `VIRILITY_TREASURY_ROUTE()` | `0x58fbb4e8` | view | 0 | 1 | READ_METHOD |
| YIELD_POOL_ROUTE | `YIELD_POOL_ROUTE()` | `0x607620e0` | view | 0 | 1 | READ_METHOD |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | READ_METHOD |
| getRoute | `getRoute(bytes32)` | `0xe9207600` | view | 1 | 1 | READ_METHOD |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | READ_METHOD |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | READ_METHOD |
| previewSplit | `previewSplit(address,uint256,bytes32[])` | `0x81ecbffc` | view | 3 | 3 | READ_METHOD |
| routeCount | `routeCount()` | `0xbf539cb4` | view | 0 | 1 | READ_METHOD |
| routeExists | `routeExists(bytes32)` | `0x1ea6d003` | view | 1 | 1 | READ_METHOD |
| routeIdAt | `routeIdAt(uint256)` | `0x5563df32` | view | 1 | 1 | READ_METHOD |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | READ_METHOD |


### Write methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| createRoute | `createRoute(bytes32,address,address,uint16,bool,uint8,bytes32)` | `0x525f159f` | nonpayable | 7 | 1 | WRITE_METHOD |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD |
| lockRoute | `lockRoute(bytes32)` | `0x400b76e8` | nonpayable | 1 | 0 | WRITE_METHOD |
| pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD |
| rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | 3 | 0 | WRITE_METHOD |
| rescueETH | `rescueETH(address,uint256)` | `0x099a04e5` | nonpayable | 2 | 0 | WRITE_METHOD |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD |
| routeERC20 | `routeERC20(bytes32,uint256)` | `0x21313df2` | nonpayable | 2 | 0 | WRITE_METHOD |
| routeERC20BySplit | `routeERC20BySplit(address,uint256,bytes32[])` | `0xa83c5972` | nonpayable | 3 | 1 | WRITE_METHOD |
| routeETH | `routeETH(bytes32)` | `0xea99db86` | payable | 1 | 0 | WRITE_METHOD |
| routeETHBySplit | `routeETHBySplit(bytes32[])` | `0x999e2b67` | payable | 1 | 1 | WRITE_METHOD |
| setRouteEnabled | `setRouteEnabled(bytes32,bool)` | `0xf15f48d4` | nonpayable | 2 | 0 | WRITE_METHOD |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD |
| updateRouteAsset | `updateRouteAsset(bytes32,address)` | `0xcfaa6801` | nonpayable | 2 | 0 | WRITE_METHOD |
| updateRouteBps | `updateRouteBps(bytes32,uint16)` | `0x3175c649` | nonpayable | 2 | 0 | WRITE_METHOD |
| updateRouteDestination | `updateRouteDestination(bytes32,address)` | `0xdf2b573d` | nonpayable | 2 | 0 | WRITE_METHOD |
| updateRouteMetadata | `updateRouteMetadata(bytes32,bytes32)` | `0x7536dfea` | nonpayable | 2 | 0 | WRITE_METHOD |
| updateRouteType | `updateRouteType(bytes32,uint8)` | `0xffa6017e` | nonpayable | 2 | 0 | WRITE_METHOD |


### Events

AssetRescued, ERC20Routed, ERC20SplitRouted, ETHReceived, ETHRouted, ETHSplitRouted, Paused, RoleAdminChanged, RoleGranted, RoleRevoked, RouteAssetUpdated, RouteBpsUpdated, RouteCreated, RouteDestinationUpdated, RouteEnabledSet, RouteLocked, RouteMetadataUpdated, RouteTypeUpdated, Unpaused

### Errors

AccessControlBadConfirmation, AccessControlUnauthorizedAccount, ERC20RouteRequired, ETHRouteRequired, ETHTransferFailed, EnforcedPause, ExpectedPause, InsufficientBalance, InvalidAsset, InvalidBps, InvalidRouteAsset, InvalidRouteType, InvalidSplitLength, InvalidSplitTotal, ReentrancyGuardReentrantCall, RouteAlreadyExists, RouteDisabled, RouteLockedError, RouteNotFound, SafeERC20FailedOperation, ZeroAddress, ZeroAmount, ZeroRouteId

### Constructor entries

1

This method classification does not authorize generated config.

This method classification does not authorize protocol client implementation.

This method classification does not authorize public demo launch.

This method classification does not authorize mainnet deployment.

Read methods may proceed to read allowlist drafting only.

Write methods must proceed to write blocklist drafting only.


## Method classification for SA7

ABI record ID: base-sepolia-abi-evidence-record-sa7

Supplemental ABI candidate ID: SA7

Contract name: VaultRegistry

Declaration type: contract

Resolved source file: src/VaultRegistry.sol

Source resolution: BASENAME_RESOLVED_FROM_VaultRegistry.sol

Contract label context: NST, ShieldRegistry, VaultRegistry

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Normalized ABI SHA-256: `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973`

Temporary artifact path committed: NO

Raw ABI JSON copied into classification: NO

Read method count: 27

Write method count: 10

Event count: 10

Error count: 16

Constructor entry count: 1

Status: METHOD_CLASSIFICATION_COMPLETE

### Read methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| CREDENTIAL_ISSUER_ROLE | `CREDENTIAL_ISSUER_ROLE()` | `0x3be044fc` | view | 0 | 1 | READ_METHOD |
| CREDENTIAL_REVOKER_ROLE | `CREDENTIAL_REVOKER_ROLE()` | `0x81c4b021` | view | 0 | 1 | READ_METHOD |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | READ_METHOD |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | READ_METHOD |
| PROOF_MANAGER_ROLE | `PROOF_MANAGER_ROLE()` | `0x297014ed` | view | 0 | 1 | READ_METHOD |
| SHIELD_REGISTRY | `SHIELD_REGISTRY()` | `0x28b348e9` | view | 0 | 1 | READ_METHOD |
| URI_MANAGER_ROLE | `URI_MANAGER_ROLE()` | `0x682d07d9` | view | 0 | 1 | READ_METHOD |
| credentialExpiry | `credentialExpiry(uint256)` | `0x086e5c46` | view | 1 | 1 | READ_METHOD |
| credentialHash | `credentialHash(uint256)` | `0xf226d6ec` | view | 1 | 1 | READ_METHOD |
| credentialIssuer | `credentialIssuer(uint256)` | `0x93e21403` | view | 1 | 1 | READ_METHOD |
| credentialMetadataHash | `credentialMetadataHash(uint256)` | `0x217ea231` | view | 1 | 1 | READ_METHOD |
| credentialSubject | `credentialSubject(uint256)` | `0x9622f65f` | view | 1 | 1 | READ_METHOD |
| credentialType | `credentialType(uint256)` | `0xa257fe06` | view | 1 | 1 | READ_METHOD |
| credentialURIHash | `credentialURIHash(uint256)` | `0x5b0dc91c` | view | 1 | 1 | READ_METHOD |
| getCredentialSnapshot | `getCredentialSnapshot(uint256)` | `0xfeda3be1` | view | 1 | 12 | READ_METHOD |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | READ_METHOD |
| hasActiveCredential | `hasActiveCredential(address,uint8)` | `0x75acceae` | view | 2 | 1 | READ_METHOD |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | READ_METHOD |
| isCredentialActive | `isCredentialActive(uint256)` | `0x459bdfd9` | view | 1 | 1 | READ_METHOD |
| isCredentialRevoked | `isCredentialRevoked(uint256)` | `0xf43d8acc` | view | 1 | 1 | READ_METHOD |
| latestCredentialId | `latestCredentialId(address,uint8)` | `0xc1483b77` | view | 2 | 1 | READ_METHOD |
| nextCredentialId | `nextCredentialId()` | `0x341f02ec` | view | 0 | 1 | READ_METHOD |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | READ_METHOD |
| requireActiveCredential | `requireActiveCredential(uint256)` | `0x20a99728` | view | 1 | 1 | READ_METHOD |
| subjectCredentialCount | `subjectCredentialCount(address)` | `0xff6fc698` | view | 1 | 1 | READ_METHOD |
| subjectCredentialIdAt | `subjectCredentialIdAt(address,uint256)` | `0x0e8a26c2` | view | 2 | 1 | READ_METHOD |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | READ_METHOD |


### Write methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD |
| issueCredential | `issueCredential(address,uint8,bytes32,bytes32,bytes32,uint64)` | `0x065d6e1c` | nonpayable | 6 | 1 | WRITE_METHOD |
| pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD |
| replaceCredential | `replaceCredential(uint256,bytes32,bytes32,bytes32,uint64)` | `0xd5dc5830` | nonpayable | 5 | 1 | WRITE_METHOD |
| revokeCredential | `revokeCredential(uint256)` | `0x1b87278d` | nonpayable | 1 | 0 | WRITE_METHOD |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD |
| setCredentialURI | `setCredentialURI(uint256,bytes32)` | `0xbad15d57` | nonpayable | 2 | 0 | WRITE_METHOD |
| setProofStatus | `setProofStatus(uint256,uint8)` | `0xe5fb2b48` | nonpayable | 2 | 0 | WRITE_METHOD |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD |


### Events

CredentialIssued, CredentialReplaced, CredentialRevoked, CredentialURIUpdated, Paused, ProofStatusUpdated, RoleAdminChanged, RoleGranted, RoleRevoked, Unpaused

### Errors

AccessControlBadConfirmation, AccessControlUnauthorizedAccount, CredentialExpired, CredentialInactive, CredentialNotFound, CredentialRevokedAlready, EnforcedPause, ExpectedPause, InvalidCredentialHash, InvalidCredentialType, InvalidDependency, InvalidExpiry, InvalidProofStatus, InvalidReplacement, SubjectBanned, ZeroAddress

### Constructor entries

1

This method classification does not authorize generated config.

This method classification does not authorize protocol client implementation.

This method classification does not authorize public demo launch.

This method classification does not authorize mainnet deployment.

Read methods may proceed to read allowlist drafting only.

Write methods must proceed to write blocklist drafting only.


## Method classification for SA8

ABI record ID: base-sepolia-abi-evidence-record-sa8

Supplemental ABI candidate ID: SA8

Contract name: YieldPool

Declaration type: contract

Resolved source file: src/YieldPool.sol

Source resolution: BASENAME_RESOLVED_FROM_YieldPool.sol

Contract label context: NST, YieldPool

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet value: none

Normalized ABI SHA-256: `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe`

Temporary artifact path committed: NO

Raw ABI JSON copied into classification: NO

Read method count: 23

Write method count: 14

Event count: 12

Error count: 21

Constructor entry count: 1

Status: METHOD_CLASSIFICATION_COMPLETE

### Read methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| ASSET_MANAGER_ROLE | `ASSET_MANAGER_ROLE()` | `0xa4b32de8` | view | 0 | 1 | READ_METHOD |
| CLAIM_MANAGER_ROLE | `CLAIM_MANAGER_ROLE()` | `0xc9581137` | view | 0 | 1 | READ_METHOD |
| DEFAULT_ADMIN_ROLE | `DEFAULT_ADMIN_ROLE()` | `0xa217fddf` | view | 0 | 1 | READ_METHOD |
| GRANT_MANAGER_ROLE | `GRANT_MANAGER_ROLE()` | `0x90270417` | view | 0 | 1 | READ_METHOD |
| NATIVE_ETH | `NATIVE_ETH()` | `0x011e1167` | view | 0 | 1 | READ_METHOD |
| PAUSER_ROLE | `PAUSER_ROLE()` | `0xe63ab1e9` | view | 0 | 1 | READ_METHOD |
| RESCUE_MANAGER_ROLE | `RESCUE_MANAGER_ROLE()` | `0x0213bfc7` | view | 0 | 1 | READ_METHOD |
| accountingSnapshot | `accountingSnapshot(address)` | `0x1e4e3c00` | view | 1 | 1 | READ_METHOD |
| availableBalance | `availableBalance(address)` | `0xa0821be3` | view | 1 | 1 | READ_METHOD |
| beneficiaryGrantCount | `beneficiaryGrantCount(address)` | `0xe6463adf` | view | 1 | 1 | READ_METHOD |
| beneficiaryGrantIds | `beneficiaryGrantIds(address)` | `0x38ed8383` | view | 1 | 1 | READ_METHOD |
| custodyBalance | `custodyBalance(address)` | `0x69e08a0c` | view | 1 | 1 | READ_METHOD |
| getGrant | `getGrant(uint256)` | `0xb8cc6c93` | view | 1 | 1 | READ_METHOD |
| getRoleAdmin | `getRoleAdmin(bytes32)` | `0x248a9ca3` | view | 1 | 1 | READ_METHOD |
| hasRole | `hasRole(bytes32,address)` | `0x91d14854` | view | 2 | 1 | READ_METHOD |
| isAssetAllowed | `isAssetAllowed(address)` | `0x9469bf8f` | view | 1 | 1 | READ_METHOD |
| isClaimable | `isClaimable(uint256)` | `0x89610a09` | view | 1 | 1 | READ_METHOD |
| nextGrantId | `nextGrantId()` | `0xbb8b3ea9` | view | 0 | 1 | READ_METHOD |
| paused | `paused()` | `0x5c975abb` | view | 0 | 1 | READ_METHOD |
| supportsInterface | `supportsInterface(bytes4)` | `0x01ffc9a7` | view | 1 | 1 | READ_METHOD |
| totalClaimed | `totalClaimed(address)` | `0xef5d9ae8` | view | 1 | 1 | READ_METHOD |
| totalDeposited | `totalDeposited(address)` | `0x53055481` | view | 1 | 1 | READ_METHOD |
| totalReserved | `totalReserved(address)` | `0x6d97e14d` | view | 1 | 1 | READ_METHOD |


### Write methods

| Method name | Signature | Selector | State mutability | Input count | Output count | Classification |
| --- | --- | --- | --- | ---: | ---: | --- |
| cancelGrant | `cancelGrant(uint256,bytes32)` | `0xea7363e0` | nonpayable | 2 | 1 | WRITE_METHOD |
| claim | `claim(uint256)` | `0x379607f5` | nonpayable | 1 | 1 | WRITE_METHOD |
| claimFor | `claimFor(uint256)` | `0xbd2fb91d` | nonpayable | 1 | 1 | WRITE_METHOD |
| createGrant | `createGrant(address,address,uint256,uint64,uint64,bytes32,bytes32)` | `0x19c29366` | nonpayable | 7 | 1 | WRITE_METHOD |
| depositERC20 | `depositERC20(address,uint256,bytes32)` | `0x59a37685` | nonpayable | 3 | 1 | WRITE_METHOD |
| depositETH | `depositETH(bytes32)` | `0xd68d9d4e` | payable | 1 | 1 | WRITE_METHOD |
| grantRole | `grantRole(bytes32,address)` | `0x2f2ff15d` | nonpayable | 2 | 0 | WRITE_METHOD |
| pause | `pause()` | `0x8456cb59` | nonpayable | 0 | 0 | WRITE_METHOD |
| renounceRole | `renounceRole(bytes32,address)` | `0x36568abe` | nonpayable | 2 | 0 | WRITE_METHOD |
| rescueERC20 | `rescueERC20(address,address,uint256)` | `0xb2118a8d` | nonpayable | 3 | 0 | WRITE_METHOD |
| rescueETH | `rescueETH(address,uint256)` | `0x099a04e5` | nonpayable | 2 | 0 | WRITE_METHOD |
| revokeRole | `revokeRole(bytes32,address)` | `0xd547741f` | nonpayable | 2 | 0 | WRITE_METHOD |
| setAssetAllowed | `setAssetAllowed(address,bool)` | `0xe53c0456` | nonpayable | 2 | 0 | WRITE_METHOD |
| unpause | `unpause()` | `0x3f4ba83a` | nonpayable | 0 | 0 | WRITE_METHOD |


### Events

AssetAllowedSet, Deposited, ERC20Rescued, ETHRescued, GrantCanceled, GrantClaimed, GrantCreated, Paused, RoleAdminChanged, RoleGranted, RoleRevoked, Unpaused

### Errors

AccessControlBadConfirmation, AccessControlUnauthorizedAccount, AssetNotAllowed, DirectCallRejected, ETHTransferFailed, EnforcedPause, ExpectedPause, GrantAlreadyClaimed, GrantCanceledError, GrantExpired, GrantNotUnlocked, InsufficientAvailableBalance, InvalidAsset, InvalidTimeWindow, ReentrancyGuardReentrantCall, ReservedFundsProtected, SafeERC20FailedOperation, UnauthorizedClaimant, UnknownGrant, ZeroAddress, ZeroAmount

### Constructor entries

1

This method classification does not authorize generated config.

This method classification does not authorize protocol client implementation.

This method classification does not authorize public demo launch.

This method classification does not authorize mainnet deployment.

Read methods may proceed to read allowlist drafting only.

Write methods must proceed to write blocklist drafting only.



## Required next artifacts

The next allowed artifacts are:

- Base Sepolia read method allowlist draft;
- Base Sepolia write method blocklist draft;
- explorer/source verification receipts where applicable.

The next allowed artifacts are not:

- generated read-only config;
- protocol client implementation;
- app source;
- package source;
- infra source;
- public demo launch;
- mainnet deployment.

## Read allowlist blocker

Read allowlist remains required.

Only methods classified as READ_METHOD may be considered for a read allowlist.

No write method may be included in a read allowlist.

A read allowlist must identify:

- contract name;
- source file;
- ABI record ID;
- method name;
- method signature;
- selector;
- state mutability;
- reason for inclusion;
- no-write confirmation.

## Write blocklist blocker

Write blocklist remains required.

Every method classified as WRITE_METHOD must be included in a write blocklist.

A write blocklist must identify:

- contract name;
- source file;
- ABI record ID;
- method name;
- method signature;
- selector;
- state mutability;
- reason for exclusion;
- no-public-demo execution confirmation;
- no-transaction-rail execution confirmation.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- read allowlist is complete;
- write blocklist is complete;
- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

This method classification does not authorize generated config.

## Protocol client blocker

Protocol-client implementation remains blocked until:

- Base Sepolia read-only config is approved;
- read allowlist is complete;
- write blocklist is complete;
- protocol client package gate allows executable implementation;
- package tests are complete;
- no-secret scan is complete.

This method classification does not authorize protocol client implementation.

## Public demo blocker

Public Base Sepolia demo launch remains blocked until:

- public warning language is implemented;
- network badge is visible;
- address evidence is complete;
- ABI evidence is complete;
- checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- no-secret scan receipt is complete;
- package tests pass;
- UI review is complete;
- demo approval receipt is complete.

This method classification does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia ABI may be used as a Base mainnet ABI.

No Base Sepolia read method may be promoted to mainnet.

No Base Sepolia write method may be promoted to mainnet.

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

Do not use this method classification as a read allowlist.

Do not use this method classification as a write blocklist.

Do not use this method classification alone in generated config.

Do not use this method classification alone in protocol clients.

Do not use this method classification alone in public demo source.

Do not use this method classification for mainnet.

Do not use this file as deployment authorization.

Do not use this file as public demo approval.

Do not use this file as mainnet approval.

Do not use this file as production ABI approval.

Do not use this file as treasury approval.

Do not use this file as governance approval.

Do not include write methods in a read allowlist.

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

This ABI method classification file is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it records the ABI evidence records commit;
- it records the ABI checksum receipts commit;
- it records Base Sepolia;
- it records chain ID 84532;
- it classifies read methods;
- it classifies write methods;
- it records selectors using Foundry cast;
- it does not copy raw ABI JSON values;
- it states read allowlist remains required;
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
