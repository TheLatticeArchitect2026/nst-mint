# NST Lattice Yield Pool and Treasury Router Spec
Status: Draft for Yield Pool + Treasury Router v1
Branch: yield-treasury-router-v1
Base milestone: v0.2.0-vault-registry-local
Purpose: Define the institutional-grade yield, treasury routing, reserve accounting, and allocation layer for NST Lattice.

## Executive summary

This tranche creates the protocol foundation for yield routing and treasury governance.

The goal is not to hard-code an unfunded promise.

The goal is to create a clean, auditable, on-chain routing and reserve layer that can safely receive, classify, hold, route, and account for funds before future staking, real-world asset, invoice, First Nations, and redemption systems depend on it.

Yield Pool + Treasury Router v1 must make NST Lattice safer, not more speculative.

## Current state

The current codebase already contains partial treasury and yield surfaces.

CFTv2 currently includes:

1. Genesis allocation across treasury destinations.
2. Founder treasury allocation.
3. First Nations treasury allocation.
4. Virility treasury allocation.
5. Yield pool allocation.
6. Building treasury allocation.
7. Treasury mint split preview.
8. Treasury mint split execution.
9. Burn and authorized burn paths.
10. Treasury minter and burner roles.

NSTSBT currently includes:

1. 0.02 ETH mint price.
2. 90 percent founder payout.
3. 10 percent yield route.
4. Router-based ETH to CFT yield swap.
5. Pending yield ETH accounting if swap is disabled or fails.
6. Yield swap min-out governance.
7. Pending yield retry processing.
8. ETH sweep protection so pending yield ETH cannot be swept.

These surfaces are real, but they are not yet a complete institutional treasury system.

## Problem to solve

Current treasury and yield logic is spread across CFTv2 and NSTSBT.

That is acceptable for the early membership/referral layer, but not enough for the full NST Lattice vision.

The protocol needs a dedicated layer that can:

1. Route incoming assets by purpose.
2. Separate operating treasury, reserves, yield pool, First Nations allocation, building treasury, and protocol liquidity.
3. Prevent accidental or unauthorized asset movement.
4. Record route intent and accounting reason.
5. Protect yield accounting from unfunded promises.
6. Allow future modules to plug into one routing standard.
7. Keep CFT supply logic, membership logic, and treasury routing logic cleanly separated.
8. Create a reliable base for future StakingVault, RWAReceipts, InvoiceRail, FirstNationsAllocation, RedemptionVault, and public dashboard modules.

## Design principle

TreasuryRouter v1 routes value.

YieldPool v1 accounts for funded yield.

Neither contract promises yield that is not funded.

Neither contract creates legal redemption rights by itself.

Neither contract stores private off-chain documents.

Neither contract replaces legal, compliance, accounting, tax, or custody review.

## Core contracts for this milestone

This milestone should introduce two primary contracts.

1. `TreasuryRouter.sol`
2. `YieldPool.sol`

Optional local mocks and tests may include:

1. `MockERC20YieldAsset.sol`
2. `MockTreasurySource.sol`
3. `TreasuryRouter.t.sol`
4. `YieldPool.t.sol`
5. `YieldTreasuryFlow.t.sol`

## TreasuryRouter v1

### Purpose

TreasuryRouter is the controlled routing layer for protocol value.

It receives ETH or ERC20 assets and sends them to approved route destinations according to active route configuration.

It is not a yield calculator.

It is not a staking vault.

It is not a speculative investment module.

It is a permissioned, auditable dispatcher for protocol treasury flows.

### Route concept

Each route should have a route id.

A route id is a bytes32 identifier created from a clear name.

Example route ids:

1. FOUNDER_TREASURY
2. FIRST_NATIONS_TREASURY
3. VIRILITY_TREASURY
4. YIELD_POOL
5. BUILDING_TREASURY
6. OPERATING_RESERVE
7. PROTOCOL_LIQUIDITY
8. RWA_RESERVE
9. INVOICE_SETTLEMENT_RESERVE
10. REDEMPTION_RESERVE
11. DISPUTE_RESERVE
12. EMERGENCY_RESERVE

### Route fields

Each route should include:

1. Route id.
2. Destination address.
3. Asset address.
4. Enabled status.
5. BPS share.
6. Locked status.
7. Created timestamp.
8. Updated timestamp.
9. Metadata hash.
10. Route type.

### Route type examples

1. ETH_ROUTE
2. ERC20_ROUTE
3. RESERVE_ROUTE
4. YIELD_ROUTE
5. FIRST_NATIONS_ROUTE
6. OPERATING_ROUTE
7. EMERGENCY_ROUTE

### Core behavior

TreasuryRouter v1 should support:

1. Add route.
2. Update route destination.
3. Update route BPS.
4. Enable route.
5. Disable route.
6. Lock route permanently.
7. Route ETH by route id.
8. Route ERC20 by route id.
9. Route ETH by split set.
10. Route ERC20 by split set.
11. Preview split.
12. Emergency pause.
13. Rescue unrelated assets with restrictions.
14. Emit deterministic events.

### BPS rules

1. BPS denominator must be 10,000.
2. Split sets must sum to exactly 10,000 unless explicitly marked as partial.
3. Zero destination is invalid.
4. Zero asset is ETH.
5. ERC20 asset must have code.
6. Route update must not silently change accounting intent.
7. Locked routes cannot be changed.
8. Disabled routes cannot receive routed funds.

### Roles

TreasuryRouter v1 should use OpenZeppelin AccessControl and Pausable.

Recommended roles:

1. DEFAULT_ADMIN_ROLE
2. PAUSER_ROLE
3. ROUTE_MANAGER_ROLE
4. TREASURY_OPERATOR_ROLE
5. ASSET_MANAGER_ROLE
6. EMERGENCY_MANAGER_ROLE

### Events

Recommended events:

1. RouteCreated
2. RouteUpdated
3. RouteEnabled
4. RouteDisabled
5. RouteLocked
6. ETHRouted
7. ERC20Routed
8. ETHSplitRouted
9. ERC20SplitRouted
10. AssetRescued
11. RouteMetadataUpdated

### Safety requirements

TreasuryRouter v1 must:

1. Reject zero role holders in constructor.
2. Reject invalid ERC20 asset addresses.
3. Reject zero destination addresses.
4. Reject disabled routes.
5. Reject locked route mutation.
6. Reject mismatched split lengths.
7. Reject split totals that do not meet the required total.
8. Reject ETH routing when msg.value is zero.
9. Reject ERC20 routing when amount is zero.
10. Use SafeERC20 for ERC20 transfers.
11. Use pull-safe or revert-safe ETH transfer patterns.
12. Avoid unbounded external calls.
13. Avoid storing private data.
14. Never use private keys, API secrets, seeds, or wallet secrets.
15. Emit events for every state-changing route action.

## YieldPool v1

### Purpose

YieldPool is the reserve-backed yield accounting layer.

It receives funds routed for yield and records what is actually available for distribution.

It does not create yield by itself.

It does not guarantee a fixed APY.

It does not create a legal redemption claim.

It only accounts for funded distributions.

### Yield definition

For NST Lattice v1, yield means:

A funded distribution made from assets actually held by the protocol or routed into the YieldPool.

This includes future sources such as:

1. Mint-fee yield share.
2. Treasury route deposits.
3. Burn-fee revenue.
4. Invoice rail revenue.
5. RWA receipt income.
6. Protocol liquidity income.
7. Other approved treasury inflows.

### 7 percent APY language

The 7 percent APY must be treated as a target rate, ceiling, or policy objective until the system has actual funded reserves and legal documentation.

The contracts must not guarantee 7 percent APY.

The contracts must not mint unfunded yield.

The contracts must not create a promise to pay without reserve backing.

Correct v1 framing:

1. `targetApyBps` may be set to 700.
2. Actual distributions are limited to funded assets.
3. Claims cannot exceed available distribution reserves.
4. If reserves are insufficient, the unpaid target remains unmet, not magically created.
5. Future dashboards must distinguish target yield from funded yield.

### YieldPool assets

YieldPool v1 should support:

1. ETH reserve accounting.
2. ERC20 reserve accounting.
3. CFT reward accounting.
4. Distribution epoch accounting.

### Distribution model

For v1, the safest model is epoch-based funded distribution.

Each distribution epoch should include:

1. Epoch id.
2. Asset address.
3. Total funded amount.
4. Total eligible weight.
5. Distribution index.
6. Start timestamp.
7. Finalized timestamp.
8. Metadata hash.
9. Created by.
10. Finalized status.

### Eligibility model

YieldPool v1 should not invent identity logic.

It should rely on existing or future membership and registry modules.

For this tranche, eligibility can be represented through role-controlled accounting inputs.

Future modules can include:

1. NSTSBT ownership.
2. ShieldRegistry active member status.
3. VaultRegistry credential status.
4. StakingVault balances.
5. First Nations partner status.
6. Supplier status.
7. Farmer status.
8. Invoice issuer status.

### Claim model

YieldPool v1 may support claims only if accounting is fully deterministic.

Claim requirements:

1. Account must have assigned funded entitlement.
2. Entitlement must be backed by actual pool balance.
3. Claim cannot exceed available amount.
4. Claim status must be recorded.
5. Double claim must be impossible.
6. Banned or ineligible accounts must be blocked if registry integration is enabled.

### Roles

YieldPool v1 should use OpenZeppelin AccessControl, Pausable, and ReentrancyGuard if value transfer is enabled.

Recommended roles:

1. DEFAULT_ADMIN_ROLE
2. PAUSER_ROLE
3. FUND_MANAGER_ROLE
4. DISTRIBUTION_MANAGER_ROLE
5. CLAIM_MANAGER_ROLE
6. ACCOUNTING_MANAGER_ROLE
7. EMERGENCY_MANAGER_ROLE

### Events

Recommended events:

1. ETHFunded
2. ERC20Funded
3. DistributionCreated
4. DistributionFinalized
5. EntitlementAssigned
6. EntitlementBatchAssigned
7. Claimed
8. ClaimBlocked
9. TargetApySet
10. AssetAllowedSet
11. RegistrySet
12. EmergencyWithdrawn

### Safety requirements

YieldPool v1 must:

1. Reject zero role holders.
2. Reject zero amount deposits.
3. Reject unsupported assets.
4. Reject duplicate epoch finalization.
5. Reject double claims.
6. Reject claims larger than entitlement.
7. Reject claims larger than actual reserves.
8. Use SafeERC20.
9. Use nonReentrant when transferring value.
10. Pause claim and mutation paths during emergency.
11. Prevent admin from silently overwriting finalized accounting.
12. Emit deterministic events.
13. Avoid private data.
14. Avoid unlimited loops over unbounded lists in critical functions.
15. Keep accounting auditable.

## Relationship between TreasuryRouter and YieldPool

TreasuryRouter routes assets into YieldPool.

YieldPool accounts for funded yield.

The clean flow is:

1. Protocol receives value.
2. TreasuryRouter routes a configured share to YieldPool.
3. YieldPool records funded reserve.
4. Distribution manager creates an epoch.
5. Accounting manager assigns entitlements or imports eligible weights.
6. Users claim only funded entitlements.
7. Future StakingVault can supply weights to YieldPool.

## Relationship with CFTv2

CFTv2 currently has treasury split logic.

TreasuryRouter v1 should not immediately break CFTv2.

The phased approach is:

Phase 1:
- Build TreasuryRouter and YieldPool as standalone contracts.
- Prove local behavior with unit tests.
- Do not modify CFTv2 yet unless required.

Phase 2:
- Add optional integration tests showing CFTv2 treasury destinations can route into TreasuryRouter or YieldPool.

Phase 3:
- Decide whether to refactor CFTv2 treasury split execution to use TreasuryRouter as the destination router.

## Relationship with NSTSBT

NSTSBT currently handles 90 percent founder payout and 10 percent yield route.

TreasuryRouter v1 should not immediately break NSTSBT.

The phased approach is:

Phase 1:
- Preserve current NSTSBT behavior.
- Build standalone TreasuryRouter and YieldPool.

Phase 2:
- Add integration test showing NSTSBT pending yield ETH can be routed or mirrored into YieldPool accounting.

Phase 3:
- Decide whether NSTSBT yield destination should become TreasuryRouter or YieldPool directly.

## Relationship with First Nations allocation

First Nations allocation is not only a treasury address.

It is a national resource participation and benefit-routing framework.

For this tranche, First Nations allocation should be treated as:

1. A protected treasury route.
2. A future resource basket route.
3. A future partner credential class in VaultRegistry.
4. A future governance and reporting module.
5. A 20 percent treasury allocation in the current CFTv2 genesis model.

This tranche does not finalize treaty rights, legal claims, or real-world redemption rights.

It prepares the routing layer that future First Nations modules can use.

## Relationship with resource basket

A future resource basket module may represent exposure, accounting, or reporting across Canadian resources such as:

1. Oil.
2. LNG.
3. Uranium.
4. Critical minerals.
5. Timber.
6. Hydroelectric power.
7. Agriculture.
8. Infrastructure revenue.
9. Other approved Canadian productive assets.

For v1, this is not implemented.

TreasuryRouter should include route ids and metadata hooks that allow future resource basket modules to plug in without rewriting treasury architecture.

## CAD/CFT 1:1 accounting

CFT may be framed as a Canada Forever Token accounting unit.

A CAD/CFT 1:1 convention is an accounting design target, not an automatic redemption promise.

Actual redemption requires:

1. Funded redemption reserves.
2. Legal structure.
3. Custody model.
4. Compliance review.
5. Redemption terms.
6. Treasury policy.
7. RedemptionVault contract.

TreasuryRouter and YieldPool must not imply automatic CAD redemption.

## Institutional-grade non-goals

Yield Pool + Treasury Router v1 does not:

1. Guarantee 7 percent APY.
2. Replace a securities law review.
3. Replace tax advice.
4. Replace legal custody documents.
5. Implement live RWA custody.
6. Implement invoice dispute automation.
7. Implement First Nations treaty allocation finality.
8. Implement CAD redemption.
9. Implement off-chain KYC.
10. Store private documents.
11. Store private keys.
12. Depend on a centralized secret.
13. Make unbounded external calls.
14. Require testnet ETH.
15. Require mainnet deployment.

## Milestone deliverables

This tranche should create:

1. docs/NST_LATTICE_YIELD_TREASURY_SPEC.md
2. src/TreasuryRouter.sol
3. src/YieldPool.sol
4. test/unit/TreasuryRouter.t.sol
5. test/unit/YieldPool.t.sol
6. test/integration/YieldTreasuryFlow.t.sol
7. docs/NST_LATTICE_IMPLEMENTATION_MATRIX.md update

## Definition of done

Yield Pool + Treasury Router v1 is complete when:

1. Spec complete.
2. TreasuryRouter.sol compiles.
3. YieldPool.sol compiles.
4. TreasuryRouter unit tests pass.
5. YieldPool unit tests pass.
6. Integration flow tests pass.
7. forge fmt passes.
8. forge test --via-ir passes.
9. forge build --via-ir --sizes passes.
10. ASCII source scan passes.
11. Whitespace check passes.
12. Secret scan passes.
13. Implementation matrix updated.
14. Commits created.
15. Pull request merged.
16. Milestone tag prepared if appropriate.

## Proposed tranche order

Recommended implementation order:

1. Commit this spec.
2. Implement TreasuryRouter.sol.
3. Add TreasuryRouter unit tests.
4. Commit TreasuryRouter.
5. Implement YieldPool.sol.
6. Add YieldPool unit tests.
7. Commit YieldPool.
8. Add YieldTreasuryFlow integration tests.
9. Update implementation matrix.
10. Run full quality gate.
11. Push PR.
12. Merge.
13. Tag milestone.

## Local milestone target

Suggested milestone tag after merge:

v0.3.0-yield-treasury-router-local

## Final rule

The yield layer must be reserve-backed, auditable, modular, and honest.

NST Lattice can target 7 percent APY.

NST Lattice must not promise or mint unfunded yield.

TreasuryRouter routes real value.

YieldPool accounts for funded yield.

Future staking, RWA, invoice, resource basket, First Nations, and redemption modules should build on this foundation.