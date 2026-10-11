# NST Core v0.5.2 Base Sepolia Supplemental ABI Evidence Response

Status: SUPPLEMENTAL_DRAFT_ABI_RESPONSE_PENDING_REVIEW
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-11T21:39:11Z
Current commit at supplemental ABI response creation: 4e0b68864594732b57f3b86b54a04780850928d0

Original ABI evidence response commit: 4e0b68864594732b57f3b86b54a04780850928d0

ABI inventory receipt commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI evidence request packet commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI evidence response review checklist commit: 866313465ce80cceb5f907672a92344cd1222cd4

Base Sepolia address checksum receipts commit: bae5ee0b499d6f3db93cb941da37bbcabc40ffde

ABI source policy commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI evidence record template commit: 866313465ce80cceb5f907672a92344cd1222cd4

ABI checksum receipt template commit: 866313465ce80cceb5f907672a92344cd1222cd4

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Reason for supplemental response: the original ABI evidence response contained source references but no JSON ABI candidates.

Supplemental ABI extraction method: temporary Forge build artifacts with tracked-source resolution.

Resolved ABI artifact candidate count: 62

Reviewable Forge artifact ABI candidate count: 8

This supplemental ABI response is not an ABI evidence record.

This supplemental ABI response is not an ABI checksum receipt.

This supplemental ABI response is not a method classification receipt.

This supplemental ABI response is not a read allowlist.

This supplemental ABI response is not a write blocklist.

This supplemental ABI response is not a deployment authorization.

This supplemental ABI response does not authorize deployment.

This supplemental ABI response does not authorize mainnet deployment.

This supplemental ABI response does not authorize public production interface launch.

This supplemental ABI response does not authorize public Base Sepolia demo launch.

This supplemental ABI response does not approve executable config package source.

This supplemental ABI response does not approve generated config.

This supplemental ABI response does not approve executable protocol client package source.

This supplemental ABI response does not approve executable app source.

This supplemental ABI response does not approve executable package source.

This supplemental ABI response does not approve executable infra source.

This supplemental ABI response does not approve any production address.

This supplemental ABI response does not approve any Base Sepolia address.

This supplemental ABI response does not approve any production ABI.

This supplemental ABI response does not approve any Base Sepolia ABI.

This supplemental ABI response does not approve any Base Sepolia read method.

This supplemental ABI response does not approve any Base Sepolia write method.

This supplemental ABI response does not approve transaction rail execution.

This supplemental ABI response does not approve governance writes.

This supplemental ABI response does not approve treasury routes.

This supplemental ABI response does not authorize any public mainnet mint interface.

## Purpose

This document creates a reviewable supplemental ABI evidence response from temporary Forge build artifacts.

The previous ABI response did not contain JSON ABI candidates.

This response resolves artifact source filenames back to tracked Solidity source files.

Raw ABI JSON values are intentionally not copied into this response.

Normalized ABI SHA-256 hashes are recorded for review.

No ABI in this response is approved.

No ABI in this response may be used in generated config.

No ABI in this response may be used in protocol clients.

No ABI in this response may be used in a public interface.

No ABI in this response may be used for mainnet.

## Extraction summary

| Metric | Value |
| --- | ---: |
| Resolved ABI artifact candidates listed | 62 |
| Reviewable Forge artifact ABI candidates | 8 |
| Raw ABI JSON copied into response | NO |
| Temporary Forge build used | YES |
| Temporary artifact path committed | NO |
| Tracked source resolution required | YES |
| Secret-assignment-shaped source files used | NO |

## Supplemental Forge artifact ABI candidate table

| Supplemental ABI ID | Contract name | Declaration type | Resolved source file | Source resolution | Label context | ABI entries | Functions | Read functions | Write functions | Events | Errors | Constructors | Normalized ABI SHA-256 | Response status |
| --- | --- | --- | --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- | --- |
| SA1 | CFTv2 | contract | src/CFTv2.sol | BASENAME_RESOLVED_FROM_CFTv2.sol | CFT, CFTv2, NST, ShieldRegistry, YieldPool | 77 | 46 | 31 | 15 | 14 | 16 | 1 | `80e0e77b6ab75cd2d6f54e9bd262ea45206cffe7393e7fcb46ce684c8b8a2c0b` | FORGE_ARTIFACT_ABI_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| SA2 | NSTSBT | contract | src/NSTSBT.sol | BASENAME_RESOLVED_FROM_NSTSBT.sol | BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool | 156 | 79 | 60 | 19 | 28 | 46 | 1 | `4ef4fce7cb10fcfcca3a14039572080e0753bf57182313c036bca2a094469d51` | FORGE_ARTIFACT_ABI_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| SA3 | ReferralController | contract | src/ReferralController.sol | BASENAME_RESOLVED_FROM_ReferralController.sol | CFT, NST, RewardEscrow, ShieldRegistry | 67 | 34 | 25 | 9 | 11 | 21 | 1 | `a086a10f2321f51e9ee796acd130a217644954c5575a9958f26c2aee3a00ce8c` | FORGE_ARTIFACT_ABI_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| SA4 | RewardEscrow | contract | src/RewardEscrow.sol | BASENAME_RESOLVED_FROM_RewardEscrow.sol | CFT, NST, RewardEscrow, ShieldRegistry | 57 | 27 | 17 | 10 | 9 | 20 | 1 | `22f7ee43c95f6061bb9b16ad078b227ac9abb20e4b83f0d25c59ac8831d90c25` | FORGE_ARTIFACT_ABI_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| SA5 | ShieldRegistry | contract | src/ShieldRegistry.sol | BASENAME_RESOLVED_FROM_ShieldRegistry.sol | BanRegistry, NST, ShieldRegistry, VettingRegistry | 62 | 39 | 25 | 14 | 11 | 11 | 1 | `014ce65358c7f3ee2ba7063f740f8e5437b23e993dc88399aad0b0648bda1254` | FORGE_ARTIFACT_ABI_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| SA6 | TreasuryRouter | contract | src/TreasuryRouter.sol | BASENAME_RESOLVED_FROM_TreasuryRouter.sol | NST, TreasuryRouter | 93 | 49 | 30 | 19 | 19 | 23 | 1 | `cd7ec0ef65389776fc59267ac96ca0adbb4e45d44b4e19723745e82f56c04dec` | FORGE_ARTIFACT_ABI_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| SA7 | VaultRegistry | contract | src/VaultRegistry.sol | BASENAME_RESOLVED_FROM_VaultRegistry.sol | NST, ShieldRegistry, VaultRegistry | 64 | 37 | 27 | 10 | 10 | 16 | 1 | `aa0c8eebe977ea8b7c4da644868dc5af31fd63564f5a989098023710454bf973` | FORGE_ARTIFACT_ABI_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| SA8 | YieldPool | contract | src/YieldPool.sol | BASENAME_RESOLVED_FROM_YieldPool.sol | NST, YieldPool | 73 | 37 | 23 | 14 | 12 | 21 | 1 | `24f6f74fc1fb953b6a78fc34bffc60f8343f1837ed6b288e4a40e55c47ce09fe` | FORGE_ARTIFACT_ABI_CANDIDATE_NEEDS_RESPONSE_REVIEW |
| SA9 | IShieldRegistryCFTLike | interface | src/CFTv2.sol | BASENAME_RESOLVED_FROM_CFTv2.sol | CFT, CFTv2, NST, ShieldRegistry, YieldPool | 3 | 3 | 3 | 0 | 0 | 0 | 0 | `4e24c05cddf3fbcd797fef26a8d273fde4292476d3702a860ba724a502004e75` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA10 | IBanRegistry | interface | src/NSTSBT.sol | BASENAME_RESOLVED_FROM_NSTSBT.sol | BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool | 1 | 1 | 1 | 0 | 0 | 0 | 0 | `ce6f97a9cc86302a4b0e87911c43ca2b81f40ac79ea4d120c678450f5740d363` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA11 | IERC5192 | interface | src/NSTSBT.sol | BASENAME_RESOLVED_FROM_NSTSBT.sol | BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool | 3 | 1 | 1 | 0 | 2 | 0 | 0 | `ca7405c9c6e0dbe60acb906478a5cdc730e0dd69822aeb7e8035533b613f60ea` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA12 | IUniswapV2RouterLike | interface | src/NSTSBT.sol | BASENAME_RESOLVED_FROM_NSTSBT.sol | BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool | 2 | 2 | 1 | 1 | 0 | 0 | 0 | `70972d569acc2dc28a8b40494e35991d865d442edc3e48b936d86a1a153f9597` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA13 | IVettingRegistry | interface | src/NSTSBT.sol | BASENAME_RESOLVED_FROM_NSTSBT.sol | BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool | 1 | 1 | 1 | 0 | 0 | 0 | 0 | `e1d65c93e763bd07306e2b4d7c20e95bfc31cfba1c57b86f76eb9b5656f44078` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA14 | IYieldPoolLike | interface | src/NSTSBT.sol | BASENAME_RESOLVED_FROM_NSTSBT.sol | BanRegistry, CFT, NST, NSTSBT, ShieldRegistry, Soul, VettingRegistry, YieldPool | 1 | 1 | 0 | 1 | 0 | 0 | 0 | `1e1e87f821c7ce13281fffb11f1051b25530acff507f7d2dc2e799e750788daf` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA15 | ICFTMintable | interface | src/ReferralController.sol | BASENAME_RESOLVED_FROM_ReferralController.sol | CFT, NST, RewardEscrow, ShieldRegistry | 1 | 1 | 0 | 1 | 0 | 0 | 0 | `f7b475f4b8652b1333778c11d9b7f207e5a0da9812160c3996ecd363eae52a25` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA16 | IRewardEscrow | interface | src/ReferralController.sol | BASENAME_RESOLVED_FROM_ReferralController.sol | CFT, NST, RewardEscrow, ShieldRegistry | 1 | 1 | 0 | 1 | 0 | 0 | 0 | `774d91e3068a587bd24bec1d00ef6e63d5a4263150f485b7dc42b16a47cbb9a9` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA17 | IShieldRegistryLike | interface | src/ReferralController.sol | BASENAME_RESOLVED_FROM_ReferralController.sol | CFT, NST, RewardEscrow, ShieldRegistry | 4 | 4 | 4 | 0 | 0 | 0 | 0 | `c110e7aaa5996fff6e4671cdc30eea2778037af329e8188beb36adc146665857` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA18 | ICFTRewardMintable | interface | src/RewardEscrow.sol | BASENAME_RESOLVED_FROM_RewardEscrow.sol | CFT, NST, RewardEscrow, ShieldRegistry | 1 | 1 | 0 | 1 | 0 | 0 | 0 | `f7b475f4b8652b1333778c11d9b7f207e5a0da9812160c3996ecd363eae52a25` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA19 | IShieldRegistryEscrowLike | interface | src/RewardEscrow.sol | BASENAME_RESOLVED_FROM_RewardEscrow.sol | CFT, NST, RewardEscrow, ShieldRegistry | 2 | 2 | 2 | 0 | 0 | 0 | 0 | `fa2680f035fe6f83d9c4e0c59100e2be72440bd656599db7014fb039641a0e57` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA20 | IBanRegistry | interface | src/ShieldRegistry.sol | BASENAME_RESOLVED_FROM_ShieldRegistry.sol | BanRegistry, NST, ShieldRegistry, VettingRegistry | 1 | 1 | 1 | 0 | 0 | 0 | 0 | `ce6f97a9cc86302a4b0e87911c43ca2b81f40ac79ea4d120c678450f5740d363` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA21 | IVettingRegistry | interface | src/ShieldRegistry.sol | BASENAME_RESOLVED_FROM_ShieldRegistry.sol | BanRegistry, NST, ShieldRegistry, VettingRegistry | 1 | 1 | 1 | 0 | 0 | 0 | 0 | `e1d65c93e763bd07306e2b4d7c20e95bfc31cfba1c57b86f76eb9b5656f44078` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA22 | IShieldRegistryVaultLike | interface | src/VaultRegistry.sol | BASENAME_RESOLVED_FROM_VaultRegistry.sol | NST, ShieldRegistry, VaultRegistry | 1 | 1 | 1 | 0 | 0 | 0 | 0 | `ce6f97a9cc86302a4b0e87911c43ca2b81f40ac79ea4d120c678450f5740d363` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_REFERENCE_TYPE_NOT_DEPLOYED_CONTRACT_ABI |
| SA23 | DeployLocalMockRouter | contract | script/DeployLocalMockRouter.s.sol | BASENAME_RESOLVED_FROM_DeployLocalMockRouter.s.sol | UNLABELED_REQUIRES_REVIEW | 3 | 2 | 1 | 1 | 0 | 1 | 0 | `98582ff6e5513813881a9e18d7a629829a03e9c8e1cc33778770d76c10d2396d` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_SCRIPT_SOURCE_NOT_ACCEPTABLE_AS_DEPLOYED_CONTRACT_ABI |
| SA24 | LocalMockUniswapV2Router | contract | script/DeployLocalMockRouter.s.sol | BASENAME_RESOLVED_FROM_DeployLocalMockRouter.s.sol | UNLABELED_REQUIRES_REVIEW | 14 | 5 | 3 | 2 | 2 | 5 | 1 | `846f20264b49a77e549677999bb7edc68a7ba8c28faa68f5333300a2f0d1081a` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_SCRIPT_SOURCE_NOT_ACCEPTABLE_AS_DEPLOYED_CONTRACT_ABI |
| SA25 | LocalMockWETH | contract | script/DeployLocalMockRouter.s.sol | BASENAME_RESOLVED_FROM_DeployLocalMockRouter.s.sol | UNLABELED_REQUIRES_REVIEW | 25 | 11 | 6 | 5 | 4 | 8 | 1 | `570024b7cd1a50718ac46fbdff7e09a4c34442e3e2dde9fa1f4e1997558070f1` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_SCRIPT_SOURCE_NOT_ACCEPTABLE_AS_DEPLOYED_CONTRACT_ABI |
| SA26 | DeployNSTLattice | contract | script/DeployNSTLatticeCore.s.sol | BASENAME_RESOLVED_FROM_DeployNSTLatticeCore.s.sol | CFT, CFTv2, NST, NSTSBT, RewardEscrow, ShieldRegistry, TreasuryRouter, VaultRegistry, YieldPool | 6 | 2 | 1 | 1 | 0 | 4 | 0 | `8fc5455911ea1af2fe9bad4ea0ae9cdfb71d808f91a4badaf763e82abc6e4cf1` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_SCRIPT_SOURCE_NOT_ACCEPTABLE_AS_DEPLOYED_CONTRACT_ABI |
| SA27 | IAccessControlLike | interface | script/DeployNSTLatticeCore.s.sol | BASENAME_RESOLVED_FROM_DeployNSTLatticeCore.s.sol | CFT, CFTv2, NST, NSTSBT, RewardEscrow, ShieldRegistry, TreasuryRouter, VaultRegistry, YieldPool | 3 | 3 | 1 | 2 | 0 | 0 | 0 | `ef0d60d5a9e108dbec5c1e41850b8f03565ab86933436fbedb32f9bd8efef424` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_SCRIPT_SOURCE_NOT_ACCEPTABLE_AS_DEPLOYED_CONTRACT_ABI |
| SA28 | MockERC20ReferralFlow | contract | test/integration/ReferralMintFlow.t.sol | BASENAME_RESOLVED_FROM_ReferralMintFlow.t.sol | CFT, CFTv2, NST, NSTSBT, RewardEscrow, ShieldRegistry, YieldPool | 19 | 10 | 6 | 4 | 2 | 6 | 1 | `36e36be2ebb576837a83c16c78fbd51d1b73ec0f7785d1e98e7ab666016ddb18` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA29 | MockRouterReferralFlow | contract | test/integration/ReferralMintFlow.t.sol | BASENAME_RESOLVED_FROM_ReferralMintFlow.t.sol | CFT, CFTv2, NST, NSTSBT, RewardEscrow, ShieldRegistry, YieldPool | 5 | 3 | 2 | 1 | 0 | 0 | 1 | `c5a11961d7c9fce784af43b3e1cabf5bed22f578fd9c092318747dbafcb081cf` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA30 | ReferralMintFlowTest | contract | test/integration/ReferralMintFlow.t.sol | BASENAME_RESOLVED_FROM_ReferralMintFlow.t.sol | CFT, CFTv2, NST, NSTSBT, RewardEscrow, ShieldRegistry, YieldPool | 41 | 19 | 12 | 7 | 22 | 0 | 0 | `37bf524829822157515b374125048636952b0c9acd94da837e3f6bbda814babc` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA31 | MockERC20VaultMembershipFlow | contract | test/integration/VaultMembershipFlow.t.sol | BASENAME_RESOLVED_FROM_VaultMembershipFlow.t.sol | CFT, NST, NSTSBT, ShieldRegistry, VaultRegistry, YieldPool | 5 | 4 | 3 | 1 | 0 | 0 | 1 | `0a37a703e9c7cdaeb27bba6b01aabaf6bedf3c9500891d636c602c19a9d49eae` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA32 | MockRouterVaultMembershipFlow | contract | test/integration/VaultMembershipFlow.t.sol | BASENAME_RESOLVED_FROM_VaultMembershipFlow.t.sol | CFT, NST, NSTSBT, ShieldRegistry, VaultRegistry, YieldPool | 4 | 2 | 1 | 1 | 0 | 0 | 1 | `9aeae4091dbffaa66eff0bcb00fc9e5bd8b3517c5690766715f46c0355043539` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA33 | VaultMembershipFlowTest | contract | test/integration/VaultMembershipFlow.t.sol | BASENAME_RESOLVED_FROM_VaultMembershipFlow.t.sol | CFT, NST, NSTSBT, ShieldRegistry, VaultRegistry, YieldPool | 40 | 18 | 12 | 6 | 22 | 0 | 0 | `472e8758e70112ec8492a0ed6bbfedf8011ff4d454dc88d61570b0c4efe1881f` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA34 | MockERC20Integration | contract | test/integration/VettedMintFlow.t.sol | BASENAME_RESOLVED_FROM_VettedMintFlow.t.sol | CFT, NST, NSTSBT, ShieldRegistry, YieldPool | 19 | 10 | 6 | 4 | 2 | 6 | 1 | `36e36be2ebb576837a83c16c78fbd51d1b73ec0f7785d1e98e7ab666016ddb18` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA35 | MockRouterIntegration | contract | test/integration/VettedMintFlow.t.sol | BASENAME_RESOLVED_FROM_VettedMintFlow.t.sol | CFT, NST, NSTSBT, ShieldRegistry, YieldPool | 5 | 3 | 2 | 1 | 0 | 0 | 1 | `c5a11961d7c9fce784af43b3e1cabf5bed22f578fd9c092318747dbafcb081cf` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA36 | VettedMintFlowTest | contract | test/integration/VettedMintFlow.t.sol | BASENAME_RESOLVED_FROM_VettedMintFlow.t.sol | CFT, NST, NSTSBT, ShieldRegistry, YieldPool | 41 | 19 | 13 | 6 | 22 | 0 | 0 | `949ace1f1fdd9edc986c9ff9e855cbd56b37ec4a6e69154217650d3c72272708` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA37 | CFTv2Test | contract | test/unit/CFTv2.t.sol | BASENAME_RESOLVED_FROM_CFTv2.t.sol | CFT, CFTv2, ShieldRegistry, YieldPool | 61 | 39 | 14 | 25 | 22 | 0 | 0 | `b4715f426a5ce5f0db3abcf9caf5661ca816685bad2b243f2da98b579e7016c9` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA38 | MockShieldRegistryCFT | contract | test/unit/CFTv2.t.sol | BASENAME_RESOLVED_FROM_CFTv2.t.sol | CFT, CFTv2, ShieldRegistry, YieldPool | 9 | 9 | 6 | 3 | 0 | 0 | 0 | `f11e752571df6fd18b66d453c0804d9f7083b8a806d150f748020a06c578d4ee` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA39 | IERC20ForMockRouter | interface | test/unit/NSTSBT.t.sol | BASENAME_RESOLVED_FROM_NSTSBT.t.sol | CFT, NSTSBT, ShieldRegistry, YieldPool | 1 | 1 | 0 | 1 | 0 | 0 | 0 | `09f46fc28e5282dcbb5b0405315d3a140c08ba807736e95fa6b1cf918a19decc` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA40 | IERC20ForMockYieldPool | interface | test/unit/NSTSBT.t.sol | BASENAME_RESOLVED_FROM_NSTSBT.t.sol | CFT, NSTSBT, ShieldRegistry, YieldPool | 2 | 2 | 1 | 1 | 0 | 0 | 0 | `70012fa0ef1cc3158fa3449a8578c33ca4a8dca7841122d4e98786b09339eac1` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA41 | MockERC20 | contract | test/unit/NSTSBT.t.sol | BASENAME_RESOLVED_FROM_NSTSBT.t.sol | CFT, NSTSBT, ShieldRegistry, YieldPool | 19 | 10 | 6 | 4 | 2 | 6 | 1 | `36e36be2ebb576837a83c16c78fbd51d1b73ec0f7785d1e98e7ab666016ddb18` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA42 | MockRouter | contract | test/unit/NSTSBT.t.sol | BASENAME_RESOLVED_FROM_NSTSBT.t.sol | CFT, NSTSBT, ShieldRegistry, YieldPool | 16 | 13 | 10 | 3 | 1 | 0 | 1 | `5a5b9c3bdd5246ed1ead7e0886502c01f49e8e35fc2d59f710c756ff91c7f74a` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA43 | MockShieldRegistry | contract | test/unit/NSTSBT.t.sol | BASENAME_RESOLVED_FROM_NSTSBT.t.sol | CFT, NSTSBT, ShieldRegistry, YieldPool | 6 | 6 | 4 | 2 | 0 | 0 | 0 | `0ad3e2ed33f1a089f9ba9b31eea25f0b36e5b8dea696c5ea1b67a78d3724b845` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA44 | MockYieldPoolForNSTSBT | contract | test/unit/NSTSBT.t.sol | BASENAME_RESOLVED_FROM_NSTSBT.t.sol | CFT, NSTSBT, ShieldRegistry, YieldPool | 6 | 6 | 5 | 1 | 0 | 0 | 0 | `5695832baad0bfb4360efbffd7231e4b36b48df8df17646633c96eaf1a8ab214` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA45 | NSTSBTTest | contract | test/unit/NSTSBT.t.sol | BASENAME_RESOLVED_FROM_NSTSBT.t.sol | CFT, NSTSBT, ShieldRegistry, YieldPool | 71 | 49 | 14 | 35 | 22 | 0 | 0 | `a1f7f5a8d6a89cddd7316bdb8b3d5dda50b9674bf1795df02c1099ac0ae17217` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA46 | RevertingETHReceiver | contract | test/unit/NSTSBT.t.sol | BASENAME_RESOLVED_FROM_NSTSBT.t.sol | CFT, NSTSBT, ShieldRegistry, YieldPool | 1 | 0 | 0 | 0 | 0 | 0 | 0 | `382487ec359d4f1c23a96341f99a53210b9ea554fb571d36a4d2d637802f03c4` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA47 | MockCFTMintable | contract | test/unit/ReferralController.t.sol | BASENAME_RESOLVED_FROM_ReferralController.t.sol | CFT, RewardEscrow, ShieldRegistry | 3 | 3 | 2 | 1 | 0 | 0 | 0 | `3684778c6acbb2708f2a943a537bb6c31f3b5500beecb1572675e62c5308a599` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA48 | MockRewardEscrow | contract | test/unit/ReferralController.t.sol | BASENAME_RESOLVED_FROM_ReferralController.t.sol | CFT, RewardEscrow, ShieldRegistry | 3 | 3 | 2 | 1 | 0 | 0 | 0 | `e970831cd04a1f75da75736daf5efa5e7c91fe7809414feadca42f4c0c580f02` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA49 | MockShieldRegistryForReferral | contract | test/unit/ReferralController.t.sol | BASENAME_RESOLVED_FROM_ReferralController.t.sol | CFT, RewardEscrow, ShieldRegistry | 12 | 12 | 8 | 4 | 0 | 0 | 0 | `9bebeba41cfd7e66753b874e303272129e5781c653486067b59398f8c7d51db3` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA50 | ReferralControllerTest | contract | test/unit/ReferralController.t.sol | BASENAME_RESOLVED_FROM_ReferralController.t.sol | CFT, RewardEscrow, ShieldRegistry | 61 | 39 | 13 | 26 | 22 | 0 | 0 | `2e9242de0075f2ebc6881f5feb7c99e9e6cd5f3b019c0870d907bf458563e51d` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA51 | MockMintableERC20 | contract | test/unit/RewardEscrow.t.sol | BASENAME_RESOLVED_FROM_RewardEscrow.t.sol | CFT, RewardEscrow, ShieldRegistry | 19 | 10 | 6 | 4 | 2 | 6 | 1 | `36e36be2ebb576837a83c16c78fbd51d1b73ec0f7785d1e98e7ab666016ddb18` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA52 | MockShieldRegistryEscrow | contract | test/unit/RewardEscrow.t.sol | BASENAME_RESOLVED_FROM_RewardEscrow.t.sol | CFT, RewardEscrow, ShieldRegistry | 6 | 6 | 4 | 2 | 0 | 0 | 0 | `521344ecfd5ecbd795a3f222a53acc04e2aafed8c8b1778698f699fc17ee5d31` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA53 | RewardEscrowTest | contract | test/unit/RewardEscrow.t.sol | BASENAME_RESOLVED_FROM_RewardEscrow.t.sol | CFT, RewardEscrow, ShieldRegistry | 61 | 39 | 13 | 26 | 22 | 0 | 0 | `ffaf3434ff19859df054655c1e514c93739a044fed8f0e429d06d454d63fa1d6` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA54 | MockMembershipToken | contract | test/unit/ShieldRegistry.t.sol | BASENAME_RESOLVED_FROM_ShieldRegistry.t.sol | NST, ShieldRegistry | 26 | 14 | 8 | 6 | 3 | 8 | 1 | `34bc9a52f11ad6bb51eb78b703652c81e010447b98b42302c8a8a89912607685` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA55 | ShieldRegistryTest | contract | test/unit/ShieldRegistry.t.sol | BASENAME_RESOLVED_FROM_ShieldRegistry.t.sol | NST, ShieldRegistry | 56 | 34 | 13 | 21 | 22 | 0 | 0 | `07f1d29528f911f444f46f2f91105ebf31001736a0044676a70feb14adb940c8` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA56 | MockTreasuryERC20 | contract | test/unit/TreasuryRouter.t.sol | BASENAME_RESOLVED_FROM_TreasuryRouter.t.sol | TreasuryRouter | 13 | 10 | 6 | 4 | 2 | 0 | 1 | `6673aa4d90fc70da05afea0dbe179274676da7a6338b37d005421217f394d4a5` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA57 | TreasuryRouterTest | contract | test/unit/TreasuryRouter.t.sol | BASENAME_RESOLVED_FROM_TreasuryRouter.t.sol | TreasuryRouter | 57 | 35 | 13 | 22 | 22 | 0 | 0 | `61d98f901acf8719c3df427e2e237651bb074a5d3e41dc25dd7b68188c835990` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA58 | MockShieldRegistryVault | contract | test/unit/VaultRegistry.t.sol | BASENAME_RESOLVED_FROM_VaultRegistry.t.sol | NST, ShieldRegistry, VaultRegistry | 2 | 2 | 1 | 1 | 0 | 0 | 0 | `516ba693e172271aaa32dfdb20fef0ec752e46783622ffa4f5bbcf23f826fc49` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA59 | VaultRegistryTest | contract | test/unit/VaultRegistry.t.sol | BASENAME_RESOLVED_FROM_VaultRegistry.t.sol | NST, ShieldRegistry, VaultRegistry | 58 | 36 | 13 | 23 | 22 | 0 | 0 | `c8cfa5a03998ea9265ad345fbaa843285f9d5dd3d90af30951b17f745e1429a1` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA60 | MockYieldPoolERC20 | contract | test/unit/YieldPool.t.sol | BASENAME_RESOLVED_FROM_YieldPool.t.sol | YieldPool | 19 | 10 | 6 | 4 | 2 | 6 | 1 | `0760b2f0d9c96ee82d16ecce7b8db0813be2aa3802f74de8e6aa64d754ba02e9` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA61 | RejectETHReceiver | contract | test/unit/YieldPool.t.sol | BASENAME_RESOLVED_FROM_YieldPool.t.sol | YieldPool | 1 | 0 | 0 | 0 | 0 | 0 | 0 | `382487ec359d4f1c23a96341f99a53210b9ea554fb571d36a4d2d637802f03c4` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |
| SA62 | YieldPoolTest | contract | test/unit/YieldPool.t.sol | BASENAME_RESOLVED_FROM_YieldPool.t.sol | YieldPool | 82 | 60 | 13 | 47 | 22 | 0 | 0 | `bd12b01a209226ab6dfd09463299bfb3bb2ecee9f7ce4bea1e1e546a9ab130f6` | ABI_ARTIFACT_CANDIDATE_REQUIRES_REVIEW_TEST_SOURCE_NOT_ACCEPTABLE_FOR_BASE_SEPOLIA_ABI_EVIDENCE |


## Required review

This supplemental ABI response must be reviewed against:

- docs/checklists/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

The review must decide which supplemental ABI candidate IDs, if any, may proceed to:

- Base Sepolia ABI evidence records;
- ABI checksum receipts;
- method classification;
- read allowlist;
- write blocklist.

No supplemental ABI candidate may proceed directly to generated config.

No supplemental ABI candidate may proceed directly to protocol clients.

No supplemental ABI candidate may proceed directly to a public demo.

No supplemental ABI candidate may proceed directly to mainnet.

## Candidate acceptance requirements

A supplemental ABI candidate may proceed only if review confirms:

- the source file is tracked;
- the source file is not a test file;
- the source file is not a script-only file;
- the contract is not a mock contract;
- the contract is not a test contract;
- the declaration type is a contract, not only an interface or library;
- the candidate is not a placeholder;
- the candidate is not guessed;
- the candidate is not screenshot-only;
- the candidate is not chat-only;
- the candidate is not memory-only;
- the candidate can be tied to a contract label or explicitly marked as rejected;
- the normalized ABI SHA-256 is recorded;
- no secret material is present;
- the final review status is explicit.

## ABI evidence record blocker

ABI evidence records remain blocked until this supplemental ABI response passes review.

This supplemental ABI response does not create ABI evidence records.

This supplemental ABI response does not create ABI checksum receipts.

This supplemental ABI response does not create method classification.

This supplemental ABI response does not create a read allowlist.

This supplemental ABI response does not create a write blocklist.

## Generated config blocker

Generated Base Sepolia read-only config remains blocked until:

- supplemental ABI evidence response review is complete;
- accepted ABI evidence records are complete;
- accepted ABI checksum receipts are complete;
- method classification is complete;
- read allowlist is complete;
- write blocklist is complete;
- explorer/source verification receipts are complete where applicable;
- config package gate allows generation;
- protocol client package gate allows use;
- package tests are satisfied.

This supplemental ABI response does not authorize generated config.

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

This supplemental ABI response does not authorize protocol client implementation.

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

This supplemental ABI response does not authorize public demo launch.

## Mainnet blocker

Mainnet remains blocked.

No Base Sepolia ABI may be used as a Base mainnet ABI.

No Base Sepolia deployment may be treated as mainnet deployment.

No Base Sepolia read-only config may be promoted to mainnet.

Mainnet requires separate production evidence and final human approval.

## No-secret confirmation

This supplemental ABI response does not request private keys.

This supplemental ABI response does not request seed phrases.

This supplemental ABI response does not request wallet recovery phrases.

This supplemental ABI response does not request deployer keys.

This supplemental ABI response does not request signer keys.

This supplemental ABI response does not request wallet secrets.

This supplemental ABI response does not request private RPC credentials.

This supplemental ABI response does not request private API keys.

This supplemental ABI response does not request bearer tokens.

This supplemental ABI response does not request private custody material.

Raw ABI JSON values are intentionally not copied into this response.

## No-go conditions

Do not treat supplemental ABI candidates as approved ABI evidence.

Do not use supplemental ABI candidates in generated config.

Do not use supplemental ABI candidates in protocol clients.

Do not use supplemental ABI candidates in public demo source.

Do not use supplemental ABI candidates for mainnet.

Do not use this supplemental ABI response as deployment authorization.

Do not use this supplemental ABI response as public demo approval.

Do not use this supplemental ABI response as mainnet approval.

Do not use this supplemental ABI response as production ABI approval.

Do not use this supplemental ABI response as treasury approval.

Do not use this supplemental ABI response as governance approval.

Do not accept guessed ABIs.

Do not accept placeholder ABIs.

Do not accept screenshot-only ABI evidence.

Do not accept chat-only ABI evidence.

Do not accept memory-only ABI evidence.

Do not accept manually edited ABIs without receipt.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not request deployer keys.

Do not request signer keys.

Do not request wallet secrets.

Do not request private RPC credentials.

## Secret exclusion checklist

This supplemental ABI response must contain none of the following usable secret material:

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

This supplemental ABI evidence response is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states the response is pending review;
- it states no ABI is approved;
- it states no generated config is approved;
- it states no protocol client is approved;
- it states no public demo is approved;
- it states no mainnet deployment is approved;
- it does not copy raw ABI JSON values into the response;
- it records normalized ABI SHA-256 hashes;
- it records tracked source resolution;
- it defines candidate acceptance requirements;
- it defines generated config blockers;
- it defines protocol client blockers;
- it defines no-go conditions;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
