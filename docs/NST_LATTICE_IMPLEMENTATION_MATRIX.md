# NST Lattice Implementation Matrix

Status: Active build control document
Branch: vault-registry-v1
Purpose: Track what the master spec requires, what is implemented, and what remains to be built.

## Source of truth rule

Chat history is not the source of truth.

The source of truth is:

1. GitHub main branch
2. Tagged releases
3. Master spec documents
4. Implementation matrix
5. Deployment ledger
6. Verified contract tests
7. Local and testnet deployment records

## Current verified foundation

| Module | Contract | Status | Test status | Notes |
|---|---|---:|---:|---|
| Vetting and membership perimeter | ShieldRegistry.sol | Built | Passing | Active member predicate implemented |
| Soulbound NST membership | NSTSBT.sol | Built | Passing | 0.02 ETH mint, token 0 genesis, soulbound |
| CFT utility token | CFTv2.sol | Built | Passing | 100B supply and controlled mint routes |
| Referral attribution | ReferralController.sol | Built | Passing | Sponsor binding and pair reward logic |
| Referral escrow | RewardEscrow.sol | Built | Passing | 30 day grant escrow logic |
| Local deployment workflow | Deploy scripts | Built | Passing | Local Anvil deployment and smoke checks |
| Base Sepolia env template | .env.base-sepolia.example | Built | Safe | Private env stays outside repo |

## Master spec implementation matrix

| Phase | System area | Current status | Contract target | Test target | Build priority |
|---:|---|---:|---|---|---:|
| 1 | Shield and vetting registry | Built | ShieldRegistry.sol | ShieldRegistry.t.sol | Complete |
| 2 | NST soulbound membership | Built | NSTSBT.sol | NSTSBT.t.sol | Complete |
| 3 | CFT utility token | Built | CFTv2.sol | CFTv2.t.sol | Complete |
| 4 | Referral system | Built | ReferralController.sol | ReferralController.t.sol | Complete |
| 5 | Reward escrow | Built | RewardEscrow.sol | RewardEscrow.t.sol | Complete |
| 6 | Vault and digital ID locker | Built | VaultRegistry.sol | VaultRegistry.t.sol + VaultMembershipFlow.t.sol | Complete |
| 7 | Staking and 7 percent APY | Not built | StakingVault.sol | StakingVault.t.sol | High |
| 8 | Yield pool and treasury routing | Not built | YieldPool.sol and TreasuryRouter.sol | YieldPool.t.sol | High |
| 9 | First Nations allocation and resource basket | Spec pending | FN treasury and resource basket modules | Integration tests | High |
| 10 | Invoice rail | Not built | InvoiceRail.sol | InvoiceRail.t.sol | High |
| 11 | Settlement escrow | Not built | SettlementEscrow.sol | SettlementEscrow.t.sol | High |
| 12 | Dispute resolver | Not built | DisputeResolver.sol | DisputeResolver.t.sol | High |
| 13 | Mortgage priority | Not built | MortgagePriorityRegistry.sol | MortgagePriorityRegistry.t.sol | Medium |
| 14 | Subsidy vault | Not built | SubsidyVault.sol | SubsidyVault.t.sol | Medium |
| 15 | RWA and SPV registry | Not built | AssetSPVRegistry.sol | AssetSPVRegistry.t.sol | Medium |
| 16 | Project beneficiary ledger | Not built | ProjectBeneficiaryLedger.sol | ProjectBeneficiaryLedger.t.sol | Medium |
| 17 | CFT CAD reference module | Not built | CFTCadReferenceOracle.sol | Oracle tests | Medium |
| 18 | Public landing page | Not built | frontend | UI checks | High |
| 19 | Member dashboard | Not built | frontend app | UI integration checks | High |
| 20 | Base Sepolia deployment | Deferred | deployment scripts | testnet smoke | Later |

## Strategic build doctrine

The build now proceeds Anvil-first.

Base Sepolia funding and deployment are intentionally deferred until the local system is more complete, seamless, and institutionally tested.

Every new module follows this path:

1. Spec document
2. Contract implementation
3. Unit tests
4. Integration tests
5. Local Anvil deployment
6. Smoke checks
7. Documentation update
8. Commit
9. Pull request
10. Merge to main
11. Tag if milestone grade

## Current active tranche

Active tranche name: Vault Registry v1

Files to create:

1. docs/NST_LATTICE_VAULT_SPEC.md - committed
2. src/VaultRegistry.sol - committed
3. test/unit/VaultRegistry.t.sol - committed
4. test/integration/VaultMembershipFlow.t.sol - committed

## Next milestone

Milestone target: v0.2.0-vault-registry-local

Current status: implemented locally and verified.

Definition of done:

1. Vault spec complete - done
2. VaultRegistry.sol built - done
3. Unit tests passing - done
4. Integration test with ShieldRegistry and NSTSBT passing - done
5. forge fmt passes - done
6. forge test --via-ir passes - done
7. no secrets committed - done
8. ready for PR and merge after final branch gate
