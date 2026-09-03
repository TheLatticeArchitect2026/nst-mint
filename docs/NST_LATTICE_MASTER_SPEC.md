# NST LATTICE MASTER ARCHITECTURE SPECVersion: 1.0
Status: Canonical Build Constitution
Owner: Founder + Core Build Team
Repository: NST_Lattice_Repo

## 1. Mission

NST Lattice is a vetted membership network, settlement rail, and project-finance ecosystem designed to give individuals and entities sovereign participation in a high-trust digital economy.

The protocol is built around:
- verified membership
- controlled network utility
- invoice creation, dispute, and settlement
- referral-driven network formation
- treasury-backed real-world project development
- future housing, food, infrastructure, and resource-linked expansion

This is not a simple token application.
This is a layered protocol and operating system for a sovereign economic network.

## 2. Protocol Identity

NST Lattice consists of the following core layers:

1. Trust and Membership Layer
2. Vault and Credential Layer
3. Utility and Patronage Layer
4. Referral and Reward Layer
5. Invoice, Dispute, and Settlement Rail
6. Treasury, Housing, and Project Layer
7. Future Pegged Settlement and Reserve Layer

## 3. Core Principles

The following are non-negotiable:

1. Every user-facing address must be vetted before touching the system.
2. Only explicitly approved system infrastructure addresses may be exempt from vetting.
3. NST is permanent membership and identity, not a generic transferable asset.
4. CFT is a live utility and patronage token, not a blanket claim on every future asset.
5. Invoice settlement, disputes, and treasury accounting must be deterministic and testable.
6. Real-world assets, housing, farms, and infrastructure must be ring-fenced in project structures.
7. The Vault stores encrypted documents off-chain and proves facts on-chain.
8. No contract may pretend to solve legal, compliance, title, or permitting realities by itself.

## 4. Member and Entity Types

NST Lattice must support these participant classes:

- individual person
- sole proprietor
- single-person business
- corporation
- staff member
- supplier
- farmer
- First Nations partner entity
- treasury or protocol operator
- explicitly exempt system address

The registry must be capable of expressing participant type and permissions.

## 5. Active Member Standard

The canonical user-level permission predicate is:

activeMember(account) =
  isVetted(account) &&
  !isBanned(account) &&
  ownsNST(account)

All user-facing protocol functions must enforce this predicate unless the function is explicitly for pre-mint onboarding or a system-exempt action.

## 6. Trust and Membership Layer

### 6.1 ShieldRegistry.sol
ShieldRegistry is the perimeter gate for the entire protocol.

Minimum responsibilities:
- track vetted status
- track banned status
- track system exemptions
- track entity type
- track optional jurisdiction or policy tiers
- track optional enterprise or resolver permissions

Minimum state:
- isVetted(address) -> bool
- isBanned(address) -> bool
- isSystemExempt(address) -> bool
- entityType(address) -> uint8

Recommended extensions:
- canInviteMembers(address) -> bool
- canOriginateInvoices(address) -> bool
- canResolveDisputes(address) -> bool
- jurisdictionTier(address) -> uint8
- beneficialOwnerHash(address) -> bytes32

### 6.2 NSTSBT.sol
NSTSBT is the permanent soulbound membership credential.

Required properties:
- vetted-only mint
- exact mint price = 0.02 ETH
- one NST per wallet
- token ID 0 reserved as Genesis
- Genesis may have a dedicated recipient distinct from founder payout treasury
- non-transferable
- non-approvable
- non-burnable in V1
- metadata freeze support
- mint fee split:
 - 90 percent founder payout wallet
 - 10 percent yield route support
- yield route must defer safely if live swap is disabled or unavailable

Canonical constants:
- MINT_PRICE = 0.02 ETH
- GENESIS_TOKEN_ID = 0
- FOUNDER_TOKEN_ID = alias of GENESIS_TOKEN_ID for backward compatibility

## 7. Vault and Credential Layer

### 7.1 The Vault
The Vault is the sovereign identity and credential locker.

Purpose:
- hold encrypted identity and business documents off-chain
- anchor credential and document hashes on-chain
- support zero-knowledge or selective-disclosure proof flows
- prove facts without exposing raw documents

Examples:
- identity proof
- Canadian residency or status proof
- business registration proof
- beneficial owner proof
- passport or credential verification
- supplier or farmer status proof
- mortgage eligibility proof
- invoice issuer authenticity proof

V1 scope:
- encrypted off-chain storage
- on-chain registry for document and credential hashes
- attestation and revocation references
- proof request and proof status hooks

V1 non-goals:
- raw document storage on-chain
- custom cryptography experiments without operational need
- pretending a wallet address alone proves legal identity

### 7.2 Vault Contracts and Services
Initial components:
- VaultRegistry.sol
- attestation registry
- credential issuer service
- proof verification service
- encrypted storage service

## 8. Utility and Patronage Layer

### 8.1 CFTv2.sol
CFT is the live utility and patronage token of the network.

CFT is used for:
- referral rewards
- staking
- lending and settlement support
- fee incentives
- patronage distribution
- treasury and program utility

CFT is not, by default:
- the stable settlement asset
- the blanket ownership claim over all future projects
- the reserve-backed peg instrument

Genesis supply:
- 100,000,000,000 CFT

Supply model:
- live token economy
- controlled ongoing issuance
- only approved protocol modules may mint
- all mint routes must be explicit, evented, and tested

V1 transfer policy:
- permissioned or controller-mediated transfer model strongly preferred
- all meaningful user flows must remain consistent with vetted access policy

### 8.2 Treasury Split Policy
Treasury economics for mint-capable flows must be deterministic.
If a flow has a treasury split, the split must be enforced and fully tested.
User-promised rewards must be expressed as net user rewards, not hidden post-split amounts.

## 9. Referral and Reward Layer

### 9.1 ReferralController.sol
Referral is a core network-growth and member-attribution layer.

Rules:
- a referred address may have only one sponsor
- no self-referral
- no duplicate counting
- only a vetted address that successfully mints its first NST counts
- banned addresses cannot sponsor or be counted
- system-exempt addresses do not count as referrals

Reward logic:
- first 2 successful referred NST mints -> 500 CFT liquid reward to sponsor
- every additional pair of successful referred NST mints -> 500 CFT reward in 30-day escrow
- pair sequencing continues in perpetuity

Canonical interpretation:
- 2 successful referred mints = 500 liquid
- 4 successful referred mints = 500 liquid + 500 escrowed
- 6 successful referred mints = 500 liquid + 2 escrowed grants
- and so on

### 9.2 RewardEscrow.sol
RewardEscrow manages time-locked referral rewards.

Responsibilities:
- create per-grant escrow records
- unlock at block timestamp + 30 days
- allow post-maturity claim
- prevent duplicate claims
- emit events for grant creation and release

## 10. Staking and Lending Layer

### 10.1 StakingVault.sol
Active members may stake CFT inside lattice infrastructure.

V1 staking rules:
- opt-in only
- minimum stake configurable by policy
- 7 percent APY
- simple accrual
- manual claim
- 24-hour cooldown on principal unstake

### 10.2 LendingPool.sol
Lending exists only after collateral policy is coherent.

V1 principle:
- NST is not standard liquidatable collateral
- NST may gate eligibility, but not serve as ordinary seizable collateral
- approved collateral must be transferable, measurable, and liquidatable

## 11. Invoice, Dispute, and Settlement Rail

### 11.1 InvoiceRail.sol
This is the commercial engine of NST Lattice.

Responsibilities:
- create invoice
- accept invoice
- fund invoice
- settle invoice
- emit canonical accounting events
- integrate with permissions and Vault proofs

### 11.2 DisputeResolver.sol
Disputes must be explicit state transitions, not vague side effects.

Invoice state machine:
- Draft
- Issued
- Accepted
- Funded
- Disputed
- Resolved
- Settled
- Cancelled

Dispute behavior:
- opening a dispute must freeze or alter settlement path according to policy
- resolution must be explicit
- settlement finality must be provable on-chain

### 11.3 SettlementEscrow.sol
SettlementEscrow holds and routes value during invoice lifecycle where needed.

Responsibilities:
- hold pending value
- release on successful settlement
- freeze during dispute
- route according to final resolution

## 12. Housing, Mortgage, and Member Access Programs

### 12.1 MortgagePriorityRegistry.sol
Canadian active members may receive priority access to mortgage programs.

Important design rule:
- the protocol may track eligibility, queue position, subsidy status, and proof requirements
- the protocol does not pretend to be the legal mortgage note, underwriter, or regulator

### 12.2 SubsidyVault.sol
SubsidyVault funds approved member support programs such as mortgage-rate buydowns or housing incentives.

Rules:
- ring-fenced accounting
- explicit approvals
- evented disbursements
- audited liabilities vs available balances

## 13. Real Asset and Project Layer

### 13.1 AssetSPVRegistry.sol
Real-world projects must be separated into ring-fenced structures.

Examples:
- land acquisition
- 3d printed communities
- vertical farms
- logistics hubs
- future infrastructure projects

Each project must have:
- a project identifier
- a legal vehicle or SPV reference
- a treasury bucket
- milestone definitions
- beneficiary policy
- event trail

### 13.2 ProjectBeneficiaryLedger.sol
Project participation should be tracked at the project level, not assumed globally by core token ownership.

This ledger may track:
- member participation rights
- patronage allocations
- project-specific distributions
- approved beneficiary classes

Core principle:
- NST and CFT are foundational network instruments
- project-specific economics should remain project-specific where possible

### 13.3 FNPartnershipRegistry.sol
First Nations partnerships and related project relationships should be explicit, auditable, and ring-fenced.

## 14. Future Pegged Settlement and Reserve Layer

Pegging, if implemented, should be a later and separate layer.

V1 principle:
- do not overload CFT with peg obligations

Future principle:
- a separate settlement asset or reserve-backed instrument may be introduced later
- reserve logic, redemption, assurance, custody, and policy must be separated from core utility token economics

## 15. Access Control Standard

Minimum roles:
- DEFAULT_ADMIN_ROLE
- PAUSER_ROLE
- TREASURY_MANAGER_ROLE
- MINT_MANAGER_ROLE
- METADATA_MANAGER_ROLE
- SWAP_OPERATOR_ROLE
- VETTING_MANAGER_ROLE
- REWARD_MANAGER_ROLE
- ORACLE_MANAGER_ROLE
- DISPUTE_RESOLVER_ROLE
- PROJECT_MANAGER_ROLE

Production standard:
- all critical roles should be multisig-controlled
- no production design may assume a single EOA is safe forever
- emergency pause scope must be explicit per contract

## 16. Security Standard

All production contracts must satisfy:
- clean compile with pinned compiler version
- pinned dependency versions
- custom errors
- explicit role checks
- reentrancy protection where economically relevant
- zero-address validation
- deterministic event emission
- no hidden mint paths
- no sweep of reserved balances
- invariant-tested accounting
- fuzz-tested user paths
- integration-tested cross-contract flows

## 17. Testing Standard

Every core contract must have:
- constructor tests
- role and auth tests
- revert tests
- event tests
- state transition tests
- fuzz tests

Required unit suites:
- ShieldRegistry.t.sol
- NSTSBT.t.sol
- ReferralController.t.sol
- RewardEscrow.t.sol
- CFTv2.t.sol
- StakingVault.t.sol
- InvoiceRail.t.sol
- DisputeResolver.t.sol

Required integration suites:
- VettedMintFlow.t.sol
- ReferralMintFlow.t.sol
- InvoiceSettlementFlow.t.sol
- DisputeFlow.t.sol
- TreasuryFlow.t.sol
- StakeAndClaimFlow.t.sol

Required invariants:
- one wallet cannot mint more than one NST
- unvetted addresses cannot use protected functions
- banned addresses fail protected functions
- referral pair math never overpays
- escrow cannot be claimed before maturity
- reserved balances cannot be swept
- invoice state machine cannot jump illegally
- unauthorized mint paths cannot succeed

## 18. Deployment Order

Canonical build order:
1. freeze architecture spec
2. build ShieldRegistry
3. build NSTSBT
4. build ReferralController
5. build RewardEscrow
6. build CFTv2
7. build StakingVault
8. build InvoiceRail
9. build DisputeResolver
10. build VaultRegistry and proof hooks
11. build MortgagePriorityRegistry and SubsidyVault
12. build project and asset registries
13. evaluate later pegged settlement asset

Canonical deployment order:
1. ShieldRegistry
2. NSTSBT
3. ReferralController
4. RewardEscrow
5. CFTv2
6. StakingVault
7. InvoiceRail
8. DisputeResolver
9. VaultRegistry
10. MortgagePriorityRegistry
11. SubsidyVault
12. AssetSPVRegistry
13. ProjectBeneficiaryLedger

## 19. Founder-Locked Parameters

Locked now:
- all user-facing addresses are vetted first
- NST is soulbound membership
- NST mint price = 0.02 ETH
- Genesis token ID = 0
- one NST per wallet
- first referral pair reward = 500 CFT liquid
- each later referral pair reward = 500 CFT in 30-day escrow
- CFT genesis supply = 100,000,000,000
- staking target = 7 percent APY simple accrual
- unstake cooldown target = 24 hours
- invoice rail is a core protocol module
- The Vault is a sovereign credential locker with off-chain encrypted documents and on-chain proof hooks

Still subject to later lock:
- exact CFT transfer restriction model
- exact mortgage subsidy mechanics
- exact project beneficiary policy
- exact reserve or pegged settlement design
- exact dispute resolver governance process
- exact project SPV legal topology

## 20. Immediate Build Tranche

We are building the first production tranche in this order:

1. ShieldRegistry.sol
2. NSTSBT.sol
3. ReferralController.sol
4. RewardEscrow.sol
5. CFTv2.sol

No other contract begins before these five are frozen, tested, and green.

## 21. Immediate Next Task

The next file to build after this spec is:
- src/ShieldRegistry.sol

The ShieldRegistry contract will become the perimeter gate for the entire protocol and the foundation for every later module.

End of file.

NST_CURRENT_LIVE_STATUS_START
# NST Core Base Sepolia Release v0.5.1-base-sepolia-live

Status: PASS - live deployment, bytecode verification, readonly smoke test, BaseScan source verification, source receipt inventory, and remote tag audit completed.

Chain: Base Sepolia 84532
Git tag: v0.5.1-base-sepolia-live
Commit: c66af987686acc3df9a53850443b85532f82f2ae

## Deployed contracts
- CFT=0xd8ca133624850dd9e2f19a35606527e7d80c79d4
- NST=0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b
- REFERRAL=0x9d3f9dc182ef22da7521234e13b0d34220f00a7b
- REWARDESCROW=0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c
- ROUTER=0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0
- SHIELD=0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c
- TREASURYROUTER=0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15
- VAULTREGISTRY=0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D
- YIELDPOOL=0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b

## BaseScan verification links
- https://sepolia.basescan.org/address/0x9d3f9dc182ef22da7521234e13b0d34220f00a7b
- https://sepolia.basescan.org/address/0xc4dc626e53c2d3c71d7cf152f21eaf5e9a8d9b15
- https://sepolia.basescan.org/address/0xd8ca133624850dd9e2f19a35606527e7d80c79d4
- https://sepolia.basescan.org/address/0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b
- https://sepolia.basescan.org/address/0xee9e20b753134e59036ddc8dfa3d15d9be0dda9b
- https://sepolia.basescan.org/address/0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c

## Included evidence files
- basescan-v2-verify-cftv2-20260901T220125Z.log
- basescan-v2-verify-localmockuniswapv2router-success-receipt-20260901T235431Z.log
- basescan-v2-verify-localmockweth-success-receipt-20260901T235431Z.log
- basescan-v2-verify-nstsbt-20260901T221943Z.log
- basescan-v2-verify-probe-localmockweth-20260901T085443Z.log
- basescan-v2-verify-referralcontroller-20260901T224540Z.log
- basescan-v2-verify-rewardescrow-20260901T223423Z.log
- basescan-v2-verify-shieldregistry-success-receipt-20260901T235431Z.log
- basescan-v2-verify-treasuryrouter-20260901T101924Z.log
- basescan-v2-verify-vaultregistry-success-receipt-20260901T235431Z.log
- basescan-v2-verify-yieldpool-20260901T214443Z.log
- nst-core-base-sepolia-LIVE-broadcast-20260831T090425Z.log
- nst-core-base-sepolia-basescan-source-verification-final-20260902T085804Z.txt
- nst-core-base-sepolia-cft-bytecode-correction-20260831T101044Z.txt
- nst-core-base-sepolia-final-release-tag-20260902T090457Z.txt
- nst-core-base-sepolia-post-deploy-readonly-smoke-20260831T222109Z.txt
- nst-core-base-sepolia-release-tag-remote-audit-20260902T091115Z.txt
NST_CURRENT_LIVE_STATUS_END
