# NST Core v0.5.2 Transaction Rail Architecture Blueprint

Status: DRAFT ARCHITECTURE BLUEPRINT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Purpose: define the future NST Lattice end-to-end transaction rail before executable app or package code is written.

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public reliance on any live system.

This document does not create, approve, or imply a production payment rail.

This document does not create, approve, or imply a production remittance rail.

This document does not create, approve, or imply a production treasury routing system.

This document does not authorize the use of Base Sepolia, local Anvil, mock, placeholder, or screenshot-derived addresses as production addresses.

This document is an architecture blueprint only.

Mainnet deployment remains blocked until all required readiness gates, production addresses, deployment configuration, read-only verification commands, release evidence, final legal review, and final human approval are complete.

## Source documents

Source application infrastructure blueprint: docs/plans/V0_5_2_APPLICATION_INFRASTRUCTURE_BLUEPRINT.md

Source application source tree scaffold record: docs/plans/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_RECORD.md

Source application source tree scaffold gate checklist: docs/checklists/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_GATE_CHECKLIST.md

Source public corporate interface and Base Sepolia demo plan: docs/plans/V0_5_2_PUBLIC_CORPORATE_INTERFACE_AND_BASE_SEPOLIA_DEMO_PLAN.md

Source Base Sepolia deployment inventory and public interface decision record: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md

Source mainnet readiness blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md

Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md

Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md

Source package scaffold: packages/transaction-rail/README.md

Source protocol clients package scaffold: packages/protocol-clients/README.md

Source governance gates package scaffold: packages/governance-gates/README.md

Source public application scaffold: apps/public-site/README.md

Source corporate application scaffold: apps/corporate-site/README.md

Source First Nations portal scaffold: apps/first-nations-portal/README.md

Source Base Sepolia demo scaffold: apps/base-sepolia-demo/README.md

Source admin console scaffold: apps/admin-console/README.md

## Current state

The protocol contract work and readiness documentation have advanced.

The app and package source tree scaffold now exists.

The transaction rail is not built yet.

The public site is not built yet.

The corporate site is not built yet.

The First Nations portal is not built yet.

The admin console is not built yet.

The Base Sepolia demo interface is not built yet.

The production mainnet deployment configuration is not complete.

Production owner addresses remain blocked until approved source-of-truth evidence is complete.

The final read-only verification command set is not complete.

The final release evidence bundle is not complete.

The final human approval receipt is not complete.

No public production interface is authorized yet.

No public production onboarding is authorized yet.

No public production mint flow is authorized yet.

No production transaction rail is authorized yet.

## Rail objective

The NST Lattice transaction rail is intended to become the controlled system boundary for moving users through the NST ecosystem from discovery, eligibility, wallet connection, membership action, protocol interaction, receipt capture, and post-action status display.

The transaction rail must support a safe user experience without weakening protocol governance.

The transaction rail must not bypass the protocol.

The transaction rail must not bypass role controls.

The transaction rail must not bypass treasury controls.

The transaction rail must not bypass final deployment approvals.

The transaction rail must not custody user private keys.

The transaction rail must not request seed phrases.

The transaction rail must not request wallet recovery phrases.

The transaction rail must not request deployer private keys.

The transaction rail must not embed privileged operator secrets in client code.

The transaction rail must not treat testnet state as production state.

The transaction rail must separate public education from transactional execution.

## Architecture boundary

The transaction rail is not one contract.

The transaction rail is a coordinated application and package layer around the deployed protocol.

The rail boundary includes:

- Public site education and onboarding.
- Corporate site education and intake.
- First Nations portal education and legal-consent pathway.
- Base Sepolia demo interface.
- Admin console for authorized operational review.
- Protocol client adapters.
- Governance gate client utilities.
- Transaction preparation utilities.
- Transaction status tracking utilities.
- Receipt capture utilities.
- Read-only verification utilities.
- Configuration loading utilities.
- Environment separation controls.
- No-secret enforcement rules.
- Deployment status banners.
- No-reliance disclaimers.

## High-level user journey

A user should be able to understand what NST is before connecting a wallet.

A user should be able to read the current network status before taking any action.

A user should be able to distinguish testnet demo mode from production mainnet mode.

A user should be able to connect a wallet only through an approved wallet connection flow.

A user should be able to see whether minting is open.

A user should be able to see whether eligibility or vetting applies.

A user should be able to see whether the wallet has already minted.

A user should be able to preview the expected action before signing.

A user should be able to review the price, chain, contract, and transaction purpose before signing.

A user should be able to reject the transaction without penalty.

A user should be able to view a transaction hash after submission.

A user should be able to view confirmation status.

A user should be able to view membership state after confirmation.

A user should be able to view a receipt after confirmation.

A user should be able to avoid sharing private keys, seed phrases, or wallet secrets at all times.

## Public site role

The public site is the public-facing education and discovery interface.

The public site must communicate:

- Project purpose.
- Membership concept.
- Soul-bound NST concept.
- Network status.
- Deployment status.
- Testnet status.
- Mainnet status.
- Public disclaimers.
- No investment solicitation.
- No guarantee language.
- No custody language.
- No secret request language.
- Public documentation links.
- Base Sepolia demo boundary, if enabled.
- Mainnet readiness status, when appropriate.

The public site must not imply that mainnet is live before final authorization.

The public site must not expose privileged administrative actions.

The public site must not collect private keys.

The public site must not collect seed phrases.

The public site must not collect recovery phrases.

The public site must not collect unnecessary personal information.

## Corporate site role

The corporate site is the enterprise and institutional intake interface.

The corporate site must communicate:

- Corporate participation path.
- Enterprise integration categories.
- Possible API or protocol-client integration path.
- Governance status.
- Current readiness status.
- Legal review requirement.
- No deployment authorization.
- No investment solicitation.
- No production treasury approval.
- No operational reliance until mainnet release is complete.

Corporate intake must collect only non-secret business information.

Corporate intake must not collect private keys.

Corporate intake must not collect seed phrases.

Corporate intake must not collect deployer keys.

Corporate intake must not collect wallet recovery phrases.

Corporate intake must route production address or treasury requests into the approved source-of-truth process.

## First Nations portal role

The First Nations portal is a sensitive governance, legal, representation, and participation interface.

The First Nations portal must not be finalized without specialized Treaty-law review.

The First Nations lawyer specializing in Treaty law should be treated as a critical contributor to:

- Treaty-law language.
- Governance framing.
- Revenue language.
- Rights language.
- Representation language.
- Consent language.
- Community onboarding language.
- Legal disclaimers.
- Possible multisig or key-holder role design.
- First Nations evidence package review.
- Public-facing First Nations participation language.

The First Nations portal must not imply legal consent without documented authority.

The First Nations portal must not imply representation without documented authority.

The First Nations portal must not imply revenue entitlement language is final until legal language is approved.

The First Nations portal must not assign multisig or key-holder duties without formal governance approval.

The First Nations portal must support document-controlled review before public launch.

## Base Sepolia demo role

The Base Sepolia demo is the only appropriate public interaction candidate before production mainnet, and only if the public interface decision record permits it.

The Base Sepolia demo must be clearly labeled testnet.

The Base Sepolia demo must state that testnet tokens have no production value.

The Base Sepolia demo must state that testnet actions do not create production rights.

The Base Sepolia demo must state that contract addresses are Base Sepolia addresses only.

The Base Sepolia demo must not represent testnet state as production state.

The Base Sepolia demo must not collect private keys.

The Base Sepolia demo must not request seed phrases.

The Base Sepolia demo must not request recovery phrases.

The Base Sepolia demo must not ask users to bridge real funds for a testnet demo.

The Base Sepolia demo must show chain ID and network name.

The Base Sepolia demo must block interaction on the wrong chain.

The Base Sepolia demo must use only public testnet contract addresses from documented deployment inventory.

The Base Sepolia demo must preserve the no-deployment and no-reliance warnings.

## Admin console role

The admin console is not a public user interface.

The admin console is for controlled operational review only.

The admin console must not embed private keys.

The admin console must not include seed phrases.

The admin console must not include recovery phrases.

The admin console must not include production secrets in client code.

The admin console must not broadcast privileged transactions without an approved governance process.

The admin console may eventually display read-only status for:

- Contract addresses.
- Role owners.
- Treasury destinations.
- Mint state.
- Pause state.
- Metadata freeze state.
- Yield settings.
- Pending yield state.
- Registry dependencies.
- Release evidence.
- Deployment receipts.
- Verification receipts.

Any privileged operational function must be separately designed, reviewed, and approval-gated.

## Package boundary

The transaction rail package should eventually contain reusable rail logic.

The transaction rail package should not contain application secrets.

The transaction rail package should not hardcode production addresses before final source-of-truth approval.

The transaction rail package should not bypass config review.

The transaction rail package should not directly assume one network.

The transaction rail package should depend on approved config packages when they exist.

The transaction rail package should expose transaction state helpers.

The transaction rail package should expose safe user-facing transaction descriptions.

The transaction rail package should expose receipt normalization.

The transaction rail package should expose error classification.

The transaction rail package should expose network guard helpers.

The transaction rail package should not sign transactions itself.

Wallet signing must remain with the user wallet provider.

## Protocol clients package role

The protocol clients package should eventually contain generated or hand-reviewed contract client bindings.

The protocol clients package should distinguish read-only calls from write calls.

The protocol clients package should use approved ABI sources.

The protocol clients package should support network-specific configuration.

The protocol clients package should not include private keys.

The protocol clients package should not include deployer keys.

The protocol clients package should not include seed phrases.

The protocol clients package should not include recovery phrases.

The protocol clients package should not contain mock addresses in production config.

The protocol clients package should support contract address verification against approved config.

## Governance gates package role

The governance gates package should eventually contain shared application-level guards.

The governance gates package should not replace onchain role checks.

The governance gates package should not claim authority over protocol governance.

The governance gates package should help interfaces display status and block unsafe user flows.

Possible gates include:

- Network gate.
- Chain ID gate.
- Contract address gate.
- Deployment mode gate.
- Testnet disclaimer gate.
- Mainnet readiness gate.
- Mint open gate.
- Pause gate.
- Eligibility gate.
- Already minted gate.
- Address source-of-truth gate.
- Release evidence gate.
- Final approval gate.

## Config package role

The config package should eventually contain public non-secret configuration.

The config package may include public contract addresses only after approval.

The config package may include chain IDs.

The config package may include block explorer URLs.

The config package may include public feature flags.

The config package must not include private RPC credentials.

The config package must not include private keys.

The config package must not include wallet secrets.

The config package must not include seed phrases.

The config package must not include deployer keys.

The config package must not contain production addresses before source-of-truth approval.

## Transaction states

The rail should use explicit transaction states.

Recommended future transaction states:

- idle.
- wrong_network.
- wallet_disconnected.
- wallet_connected.
- preflight_loading.
- preflight_blocked.
- ready_to_preview.
- preview_ready.
- awaiting_user_signature.
- user_rejected.
- submitted.
- pending_confirmation.
- confirmed.
- failed.
- replaced.
- timed_out.
- receipt_available.
- post_action_syncing.
- complete.

Every state must have user-facing language.

Every state must avoid false certainty.

Every state must avoid implying a transaction succeeded before confirmation.

Every state must preserve the network boundary.

## Preflight checks

Before any future transaction request is presented to a user, the rail should check:

- Correct app mode.
- Correct chain.
- Correct contract address.
- Contract code exists.
- Contract address matches approved config.
- Wallet is connected.
- Wallet is on supported chain.
- User action is available.
- Contract state permits the action.
- Required price or value is shown.
- User has not already completed an exclusive action, where applicable.
- Eligibility gate is satisfied, where applicable.
- Pause state does not block action.
- Required disclaimers are visible.
- Receipt capture path is available.

Preflight failure should block transaction preparation.

Preflight failure should explain the reason.

Preflight failure should not request wallet signing.

## Write transaction boundary

Write transactions are high risk.

Write transactions must be isolated from read-only verification.

Write transactions must not be created from screenshots.

Write transactions must not be created from chat text.

Write transactions must not be created from mock addresses.

Write transactions must not be created from placeholder addresses.

Write transactions must not be created from unapproved production addresses.

Write transactions must not be broadcast by documentation scripts.

Write transactions must not run automatically on page load.

Write transactions must require deliberate user action.

Write transactions must display the chain, contract, action, value, and expected result.

Write transactions must be blocked if network or config does not match.

## Read-only boundary

Read-only calls are still security-sensitive.

Read-only calls must use approved public RPC surfaces.

Read-only calls must not require private keys.

Read-only calls must not require seed phrases.

Read-only calls must not require wallet secrets.

Read-only calls must not mutate chain state.

Read-only calls must not use cast send.

Read-only calls must not use forge script broadcast mode.

Read-only calls must not be treated as final approval.

Read-only calls must not authorize deployment.

Read-only calls can support status displays and verification receipts.

## Receipt model

The future rail should produce clear receipts.

Possible receipt categories include:

- Wallet connection receipt.
- Network check receipt.
- Preflight receipt.
- Transaction preview receipt.
- User rejection receipt.
- Submitted transaction receipt.
- Confirmation receipt.
- Post-action read-only status receipt.
- Error receipt.
- Explorer link receipt.
- Release evidence receipt.
- Admin review receipt.

Receipts must not contain secrets.

Receipts must not contain private keys.

Receipts must not contain seed phrases.

Receipts must not contain recovery phrases.

Receipts must not contain private RPC credentials.

Receipts must include enough public context to audit the action.

## Base Sepolia public interaction decision

Base Sepolia interaction can be useful for public confidence, education, and early interface testing.

Base Sepolia interaction should remain explicitly testnet-only.

Base Sepolia public interaction should be allowed only after:

- Inventory is complete.
- Demo interface warnings are complete.
- Contract addresses are documented.
- Contract state is reviewed.
- Demo actions are safe.
- No production reliance language exists.
- No mainnet implication exists.
- No real-value claim exists.
- Support and recovery expectations are documented.
- Public disclaimers are reviewed.

The current blueprint does not approve launching the demo.

The current blueprint defines what must be true before launch.

## Production mainnet boundary

Production mainnet must remain blocked until:

- Production owner addresses are complete.
- Governance objects are complete.
- Treasury destinations are complete.
- Operator authorities are complete.
- Role owner mappings are complete.
- Deployment config is complete.
- Deployment config checksum is captured.
- Read-only verification commands are complete.
- Release evidence bundle is complete.
- Final human approval receipt is complete.
- Final legal review is complete where required.
- Public interface launch decision is complete.
- Corporate interface launch decision is complete.
- First Nations language is legally reviewed.
- Emergency rollback path is complete.

## First Nations legal integration

The Treaty-law specialist should be treated as a strategic legal contributor.

The First Nations interface should route the legal contributor into the review path before public publication.

The legal contributor may also be considered for a future key-holder or multisig role only after governance approval.

No key-holder role is assigned by this blueprint.

No multisig role is assigned by this blueprint.

No First Nations governance authority is assigned by this blueprint.

No First Nations revenue language is finalized by this blueprint.

This blueprint preserves the need for specialized legal drafting and review.

## Public launch risk controls

Before any public interface launch, the project should confirm:

- No false mainnet readiness language.
- No unstated investment solicitation.
- No unstated legal claim.
- No unstated First Nations representation claim.
- No production address placeholder.
- No private key request.
- No seed phrase request.
- No recovery phrase request.
- No wallet secret request.
- No private RPC credential in code.
- No accidental production write path.
- No unreviewed contract address.
- No unreviewed ABI.
- No unreviewed role mapping.
- No unreviewed treasury route.
- No missing disclaimer.
- No missing support boundary.
- No missing incident response path.

## Implementation sequence

Recommended future implementation sequence:

1. Commit this transaction rail architecture blueprint.
2. Reference this blueprint in the readiness gates.
3. Create transaction rail package gate checklist.
4. Create protocol client package gate checklist.
5. Create public site content architecture.
6. Create corporate site content architecture.
7. Create First Nations portal legal-review intake architecture.
8. Create Base Sepolia demo launch gate checklist.
9. Create no-secret config package gate.
10. Create public non-secret config skeleton.
11. Create read-only protocol client skeleton.
12. Create transaction rail state machine skeleton.
13. Create Base Sepolia demo read-only status page.
14. Create Base Sepolia demo wallet connect gate.
15. Create Base Sepolia demo mint preview gate.
16. Create Base Sepolia demo testnet-only transaction path.
17. Create receipt capture model.
18. Create public launch review checklist.
19. Create corporate intake review checklist.
20. Create First Nations legal review checklist.
21. Create final demo acceptance gate.
22. Only after review, consider public Base Sepolia demo launch.

## No-go conditions

Do not build production transaction execution until production addresses are finalized.

Do not build production deployment config from screenshots.

Do not build production deployment config from chat text.

Do not build production deployment config from memory.

Do not build production deployment config from placeholder addresses.

Do not build production transaction rail code that embeds secrets.

Do not build a public mainnet mint interface until mainnet authorization is complete.

Do not build a public interface that implies Base Sepolia equals production.

Do not build a First Nations legal interface without specialized legal review.

Do not build multisig or key-holder assignments without governance approval.

Do not build treasury routing UI without approved treasury destinations.

Do not build admin write controls without a separate security review.

Do not request user private keys.

Do not request user seed phrases.

Do not request user recovery phrases.

Do not request wallet secrets.

Do not request deployer private keys.

Do not rely on Anvil addresses.

Do not rely on mock addresses.

Do not rely on Base Sepolia addresses as production addresses.

## Acceptance criteria for this blueprint

This blueprint is acceptable only if:

- It is docs-only.
- It creates no executable app code.
- It creates no deployment script.
- It creates no transaction script.
- It creates no production config.
- It preserves no-deployment status.
- It states the transaction rail is not built yet.
- It defines public site boundary.
- It defines corporate site boundary.
- It defines First Nations portal boundary.
- It defines Base Sepolia demo boundary.
- It defines admin console boundary.
- It defines transaction rail package boundary.
- It defines protocol client package boundary.
- It defines governance gate package boundary.
- It defines config package boundary.
- It includes no private keys.
- It includes no seed phrases.
- It includes no wallet secrets.
- It includes no recovery phrases.
- It preserves mainnet blockers.
- It identifies the next safe implementation sequence.
- It is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Transaction rail package gate checklist reference

Reference document: docs/checklists/V0_5_2_TRANSACTION_RAIL_PACKAGE_GATE_CHECKLIST.md

Reference commit: 611f97a8dbbd662412a6bdeb8713353ef0ec5a0b

Reference captured UTC: 2026-10-04T15:38:04Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize a production transaction rail.

This reference does not authorize writing executable transaction rail package code.

This reference does not authorize production mint transactions.

This reference does not authorize production treasury routing.

This reference does not authorize any public mainnet mint interface.

This reference records that the transaction rail package gate checklist exists as a controlled readiness artifact.

The transaction rail package remains gate-blocked until all package boundaries, state models, receipt models, error classifications, no-secret controls, read-only boundaries, write-transaction boundaries, config boundaries, and implementation review steps are complete.

Required follow-on work:

- Create protocol client package gate checklist.
- Create governance gates package checklist.
- Create public config package gate checklist.
- Create Base Sepolia demo launch gate checklist.
- Create package implementation plan.
- Create no-secret package scan rule.
- Create package test strategy.
- Create read-only protocol client package boundary.
- Create write-helper package boundary.
- Reference each package gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write transaction rail package source code until package gates are complete.
- Do not create production write helpers yet.
- Do not create production mint helpers yet.
- Do not create production treasury route helpers yet.
- Do not create production deployment config yet.
- Do not embed production addresses before source-of-truth approval.
- Do not use Base Sepolia addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use mock addresses as production addresses.
- Do not use screenshots as address source-of-truth.
- Do not use chat text as address source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Protocol client package gate checklist reference

Reference document: docs/checklists/V0_5_2_PROTOCOL_CLIENT_PACKAGE_GATE_CHECKLIST.md

Reference commit: e410e534eace03eb712f0a8cc90b7fd2cd479314

Reference captured UTC: 2026-10-04T17:54:18Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production protocol clients.

This reference does not authorize writing executable protocol client package code.

This reference does not authorize production mint transactions.

This reference does not authorize production treasury routing.

This reference does not authorize production role mutation.

This reference does not authorize production registry mutation.

This reference does not authorize production governance actions.

This reference does not authorize any public mainnet mint interface.

This reference records that the protocol client package gate checklist exists as a controlled readiness artifact.

The protocol client package remains gate-blocked until ABI source controls, address source controls, network guards, read-only client boundaries, write-client boundaries, transaction rail dependency, config dependency, governance gates dependency, Base Sepolia limitations, Base mainnet blockers, package test strategy, and no-secret package scan rules are complete.

Required follow-on work:

- Create config package gate checklist.
- Create governance gates package checklist.
- Create Base Sepolia demo launch gate checklist.
- Create ABI source policy.
- Create address source policy.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create protocol client package test strategy.
- Create no-secret package scan rule.
- Reference each package gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write protocol client package source code until package gates are complete.
- Do not create production protocol clients yet.
- Do not create production write clients yet.
- Do not create production mint clients yet.
- Do not create production treasury route clients yet.
- Do not create production governance clients yet.
- Do not embed production addresses before source-of-truth approval.
- Do not use Base Sepolia addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use mock addresses as production addresses.
- Do not use screenshots as address source-of-truth.
- Do not use chat text as address source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Config package gate checklist reference

Reference document: docs/checklists/V0_5_2_CONFIG_PACKAGE_GATE_CHECKLIST.md

Reference commit: 9c152de9c889c453168846ac28ef3ad69fb10dd7

Reference captured UTC: 2026-10-04T18:17:03Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production configuration.

This reference does not authorize production contract addresses.

This reference does not authorize production treasury routing.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable config package code.

This reference does not authorize any public mainnet mint interface.

This reference records that the config package gate checklist exists as a controlled readiness artifact.

The config package remains gate-blocked until public config boundaries, secret exclusion controls, network config rules, address config rules, ABI config rules, feature flag rules, interface copy boundaries, Base Sepolia limitations, Base mainnet blockers, transaction rail dependency, protocol client dependency, governance gates dependency, package test strategy, and no-secret package scan rules are complete.

Required follow-on work:

- Create governance gates package checklist.
- Create Base Sepolia demo launch gate checklist.
- Create ABI source policy.
- Create address source policy.
- Create Base Sepolia config map.
- Create public warning copy review.
- Create First Nations legal language review placeholder.
- Create package test strategy.
- Create no-secret package scan rule.
- Reference each remaining package gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write executable config package source code until package gates are complete.
- Do not create production mainnet config yet.
- Do not create production address config yet.
- Do not create production transaction enablement flags yet.
- Do not create production mint enablement flags yet.
- Do not create production treasury route config yet.
- Do not create production governance object config yet.
- Do not embed production addresses before source-of-truth approval.
- Do not use Base Sepolia addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use mock addresses as production addresses.
- Do not use screenshots as address source-of-truth.
- Do not use chat text as address source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Governance gates package gate checklist reference

Reference document: docs/checklists/V0_5_2_GOVERNANCE_GATES_PACKAGE_GATE_CHECKLIST.md

Reference commit: c44aa902a9d83b828fdf275f5b58588f5e9f1929

Reference captured UTC: 2026-10-04T18:53:52Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production governance.

This reference does not authorize production governance objects.

This reference does not authorize production role ownership.

This reference does not authorize production multisig assignments.

This reference does not authorize First Nations governance claims.

This reference does not authorize First Nations legal conclusions.

This reference does not authorize production treasury routing.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable governance gates package code.

This reference does not authorize any public mainnet mint interface.

This reference records that the governance gates package gate checklist exists as a controlled readiness artifact.

The governance gates package remains gate-blocked until governance authority rules, multisig/key-holder rules, First Nations legal review boundaries, corporate governance boundaries, treasury governance boundaries, emergency authority boundaries, operator authority boundaries, role owner mapping, transaction rail dependency, protocol client dependency, config dependency, Base Sepolia limitations, Base mainnet blockers, governance package test strategy, and no-secret package scan rules are complete.

Required follow-on work:

- Create ABI source policy.
- Create address source policy.
- Create Base Sepolia demo launch gate checklist.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference each remaining implementation gate in readiness documents before source code implementation.

No-go conditions preserved:

- Do not write executable governance-gates package source code until package gates are complete.
- Do not create production governance gates yet.
- Do not create production role owner execution logic yet.
- Do not create production treasury approval logic yet.
- Do not create production First Nations governance logic yet.
- Do not create production multisig signer logic yet.
- Do not create production emergency action logic yet.
- Do not embed production governance objects before source-of-truth approval.
- Do not embed production role owners before source-of-truth approval.
- Do not use Base Sepolia governance as production governance.
- Do not use Anvil governance as production governance.
- Do not use mock governance as production governance.
- Do not use screenshots as governance source-of-truth.
- Do not use chat text as governance source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 ABI source policy reference

Reference document: docs/audits/V0_5_2_ABI_SOURCE_POLICY.md

Reference commit: 046ed38768988e61c0f3b2537e65e51d5e87bbad

Reference captured UTC: 2026-10-04T19:10:43Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production configuration.

This reference does not authorize production governance.

This reference does not authorize writing executable ABI client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI source policy exists as a controlled readiness artifact.

ABI-dependent package work remains blocked until approved ABI source hierarchy, Foundry artifact rules, explorer verification rules, Base Sepolia ABI boundaries, Base mainnet ABI boundaries, local Anvil ABI boundaries, ABI record required fields, disallowed ABI source controls, secret exclusion controls, ABI drift controls, and ABI review workflow are complete.

Required follow-on work:

- Create address source policy.
- Create ABI evidence record template.
- Create ABI checksum receipt template.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI source policy in package gates before executable ABI client source implementation.

No-go conditions preserved:

- Do not write executable ABI client code until ABI policy gates are complete.
- Do not create production protocol clients yet.
- Do not create production transaction rail ABI bindings yet.
- Do not create production write clients yet.
- Do not create production mint clients yet.
- Do not use screenshot-derived ABIs.
- Do not use chat-derived ABIs.
- Do not use manually edited ABIs without receipt.
- Do not use Base Sepolia ABIs as production ABIs.
- Do not use Anvil ABIs as production ABIs.
- Do not use uncommitted build artifacts as approved ABIs.
- Do not use wrong-branch build artifacts as approved ABIs.
- Do not use wrong-profile build artifacts as approved ABIs.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address source policy reference

Reference document: docs/audits/V0_5_2_ADDRESS_SOURCE_POLICY.md

Reference commit: 8151b22f61901d0a0ce3fe4bd16788f6e925329c

Reference captured UTC: 2026-10-04T20:49:56Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize production addresses.

This reference does not authorize production governance objects.

This reference does not authorize production treasury routes.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production configuration.

This reference does not authorize writing executable address-dependent client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the address source policy exists as a controlled readiness artifact.

Address-dependent package work remains blocked until approved address source hierarchy, production address rules, testnet address rules, local Anvil address rules, Base mainnet address boundaries, contract address source rules, governance object address rules, treasury address source rules, operator address source rules, First Nations address boundaries, corporate address boundaries, checksum rules, ownership proof rules, disallowed address source controls, secret exclusion controls, address drift controls, and address review workflow are complete.

Required follow-on work:

- Create address evidence record template.
- Create address checksum receipt template.
- Create Base Sepolia address map.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference address source policy in package gates before executable address-dependent source implementation.

No-go conditions preserved:

- Do not write executable address-dependent client code until address policy gates are complete.
- Do not create production protocol clients yet.
- Do not create production transaction rail address bindings yet.
- Do not create production write clients yet.
- Do not create production mint clients yet.
- Do not use screenshot-derived addresses.
- Do not use chat-derived addresses.
- Do not use memory-derived addresses.
- Do not use manually copied addresses without receipt.
- Do not use Base Sepolia addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use mock addresses as production addresses.
- Do not use placeholder addresses as production addresses.
- Do not use unapproved production owner addresses.
- Do not use unapproved treasury addresses.
- Do not use unapproved governance objects.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address evidence record template reference

Reference document: docs/audits/V0_5_2_ADDRESS_EVIDENCE_RECORD_TEMPLATE.md

Reference commit: 8cf842065fad396728c1230eb0310c08c6b9158b

Reference captured UTC: 2026-10-05T08:56:12Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not approve any production operator.

This reference does not approve any production role owner.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize writing executable address-dependent client code.

This reference does not authorize any public mainnet mint interface.

This reference records that the address evidence record template exists as a controlled readiness artifact.

Address use remains blocked until completed address evidence records are created from approved source-of-truth inputs, checksum reviewed, no-secret reviewed, committed, pushed, remotely confirmed, and paired with required approval evidence.

No-go conditions preserved:

- Do not use Base Sepolia address evidence as Base mainnet evidence.
- Do not use Anvil address evidence as production evidence.
- Do not use mock address evidence as production evidence.
- Do not use screenshot address evidence as production evidence.
- Do not use chat text address evidence as production evidence.
- Do not use memory-derived address evidence as production evidence.
- Do not approve any record containing secrets.
- Do not approve any record missing checksum review.
- Do not approve any record missing approval evidence.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Address checksum receipt template reference

Reference document: docs/audits/V0_5_2_ADDRESS_CHECKSUM_RECEIPT_TEMPLATE.md

Reference commit: 1382bb15914ae132061940c80a455980ad9c4e4b

Reference captured UTC: 2026-10-05T09:11:21Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not approve any production operator.

This reference does not approve any production role owner.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize any public mainnet mint interface.

This reference records that the address checksum receipt template exists as a controlled readiness artifact.

A checksum-valid address is not automatically approved.

A checksum-valid address does not prove ownership.

A checksum-valid address does not prove governance authority.

A checksum-valid address does not prove treasury authority.

A checksum-valid address does not prove deployment authorization.

Address use remains blocked until completed checksum receipts are paired with completed address evidence records, source-of-truth evidence, approval evidence, no-secret review, and final readiness approval where required.

Required follow-on work:

- Create ABI evidence record template.
- Create ABI checksum receipt template.
- Create Base Sepolia address map.
- Create Base Sepolia ABI inventory receipt.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference checksum receipt template in package gates before executable address-dependent source implementation.

No-go conditions preserved:

- Do not use a checksum receipt as ownership proof.
- Do not use a checksum receipt as governance approval.
- Do not use a checksum receipt as treasury approval.
- Do not use a checksum receipt as legal approval.
- Do not use a checksum receipt as deployment authorization.
- Do not use Base Sepolia checksum evidence as Base mainnet evidence.
- Do not use Anvil checksum evidence as production evidence.
- Do not use mock checksum evidence as production evidence.
- Do not use screenshot checksum evidence as production evidence.
- Do not use chat text checksum evidence as production evidence.
- Do not use memory-derived checksum evidence as production evidence.
- Do not approve any receipt containing secrets.
- Do not approve any receipt missing reviewer identity.
- Do not approve any receipt missing source evidence.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 ABI evidence record template reference

Reference document: docs/audits/V0_5_2_ABI_EVIDENCE_RECORD_TEMPLATE.md

Reference commit: f949e4b64f85cd63e24391fa072a2d2b72aa21f2

Reference captured UTC: 2026-10-05T09:29:17Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI evidence record template exists as a controlled readiness artifact.

ABI use remains blocked until completed ABI evidence records are created from approved ABI sources, reviewed, checksum-confirmed where required, paired with address evidence where required, committed, pushed, remotely confirmed, and paired with required build, explorer, deployment, release, or approval evidence.

Required follow-on work:

- Create ABI checksum receipt template.
- Create Base Sepolia ABI inventory receipt.
- Create Base Sepolia address map.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI evidence record template in package gates before executable ABI-dependent source implementation.

No-go conditions preserved:

- Do not use an ABI evidence record outside its stated network scope.
- Do not use an ABI evidence record outside its stated chain ID.
- Do not use an ABI evidence record outside its stated contract or module.
- Do not use a Base Sepolia ABI evidence record as Base mainnet evidence.
- Do not use Anvil ABI evidence as production evidence.
- Do not use screenshot ABI evidence as production evidence.
- Do not use chat text ABI evidence as production evidence.
- Do not use memory-derived ABI evidence as production evidence.
- Do not use manually edited ABI evidence without receipt.
- Do not approve any ABI record containing secrets.
- Do not approve any ABI record missing source commit.
- Do not approve any ABI record with unresolved drift.
- Do not use write-capable ABI paths until final gates are complete.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 ABI checksum receipt template reference

Reference document: docs/audits/V0_5_2_ABI_CHECKSUM_RECEIPT_TEMPLATE.md

Reference commit: 4722469d10f94d86423632ff6fb46edf37dda16f

Reference captured UTC: 2026-10-06T08:04:02Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the ABI checksum receipt template exists as a controlled readiness artifact.

ABI checksum confirmation is not ABI approval.

ABI checksum confirmation does not prove the ABI is correct for a deployed contract.

ABI checksum confirmation does not prove source verification.

ABI checksum confirmation does not prove address correctness.

ABI checksum confirmation does not prove governance approval.

ABI checksum confirmation does not prove treasury approval.

ABI checksum confirmation does not authorize write execution.

ABI checksum confirmation does not authorize deployment.

ABI use remains blocked until completed ABI checksum receipts are paired with completed ABI evidence records, approved ABI source evidence, address evidence where required, build evidence where required, explorer evidence where required, release evidence where required, no-secret review, and final readiness approval where required.

Required follow-on work:

- Create Base Sepolia ABI inventory receipt.
- Create Base Sepolia address map.
- Create package test strategy.
- Create no-secret package scan rule.
- Create read-only client implementation plan.
- Create write-client implementation plan.
- Create config package implementation plan.
- Create governance gates implementation plan.
- Reference ABI checksum receipt template in package gates before executable ABI-dependent source implementation.

No-go conditions preserved:

- Do not use an ABI checksum receipt outside its stated network scope.
- Do not use an ABI checksum receipt outside its stated chain ID.
- Do not use an ABI checksum receipt outside its stated contract or module.
- Do not use a Base Sepolia ABI checksum receipt as Base mainnet evidence.
- Do not use Anvil ABI checksum evidence as production evidence.
- Do not use screenshot ABI checksum evidence as production evidence.
- Do not use chat text ABI checksum evidence as production evidence.
- Do not use memory-derived ABI checksum evidence as production evidence.
- Do not use manually edited ABI checksum evidence without receipt.
- Do not approve any ABI checksum receipt containing secrets.
- Do not approve any ABI checksum receipt missing source commit where required.
- Do not approve any ABI checksum receipt with unresolved drift.
- Do not use write-capable ABI paths until final gates are complete.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI inventory receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_INVENTORY_RECEIPT.md

Reference commit: 82fba6d0052aa7d42d4dc86049e98cc6e7b8b48b

Reference captured UTC: 2026-10-06T08:23:58Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production ABI.

This reference does not approve any production contract address.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia ABI inventory receipt exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Base Sepolia ABI use remains blocked until completed ABI evidence records, ABI checksum receipts, address evidence records, address checksum receipts, explorer/source verification receipts where applicable, no-secret review, package gates, and public-demo approval are complete.

Required follow-on work:

- Create Base Sepolia address map.
- Create Base Sepolia address evidence records.
- Create Base Sepolia address checksum receipts.
- Create Base Sepolia ABI evidence records.
- Create Base Sepolia ABI checksum receipts.
- Create Base Sepolia explorer/source verification receipts.
- Create public demo warning-language receipt.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.

No-go conditions preserved:

- Do not use this receipt as production ABI approval.
- Do not use this receipt as production address approval.
- Do not use this receipt as public demo approval.
- Do not use this receipt as mainnet deployment authorization.
- Do not use this receipt as transaction rail authorization.
- Do not use this receipt as governance approval.
- Do not use this receipt as treasury approval.
- Do not use Base Sepolia ABI evidence as Base mainnet evidence.
- Do not use Base Sepolia addresses as Base mainnet addresses.
- Do not expose write-capable clients from this receipt.
- Do not create production config from this receipt.
- Do not create production public interface config from this receipt.
- Do not create production corporate interface config from this receipt.
- Do not create production First Nations interface config from this receipt.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address map reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_MAP.md

Reference commit: c30dbdba2f141d84b36532c5d661884244dba807

Reference captured UTC: 2026-10-06T08:38:35Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address map exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Base Sepolia address use remains blocked until completed address evidence records, address checksum receipts, ABI evidence records where applicable, ABI checksum receipts where applicable, explorer/source verification receipts where applicable, no-secret review, package gates, and public-demo approval are complete.

Required follow-on work:

- Create Base Sepolia address evidence records.
- Create Base Sepolia address checksum receipts.
- Create Base Sepolia ABI evidence records.
- Create Base Sepolia ABI checksum receipts.
- Create Base Sepolia explorer/source verification receipts.
- Create public demo warning-language receipt.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.

No-go conditions preserved:

- Do not use this map as production address approval.
- Do not use this map as production ABI approval.
- Do not use this map as public demo approval.
- Do not use this map as mainnet deployment authorization.
- Do not use this map as transaction rail authorization.
- Do not use this map as governance approval.
- Do not use this map as treasury approval.
- Do not use Base Sepolia addresses as Base mainnet addresses.
- Do not use Base Sepolia ABI evidence as Base mainnet evidence.
- Do not expose write-capable clients from this map.
- Do not create production config from this map.
- Do not create production public interface config from this map.
- Do not create production corporate interface config from this map.
- Do not create production First Nations interface config from this map.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia public demo warning language receipt reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_PUBLIC_DEMO_WARNING_LANGUAGE_RECEIPT.md

Reference commit: 6c715e8bbacfe1c992e2c755910646450566f106

Reference captured UTC: 2026-10-06T08:54:09Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve a public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia public demo warning language receipt exists as a controlled testnet-only readiness artifact.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Public Base Sepolia demo launch remains blocked until warning language is implemented, address evidence is complete, ABI evidence is complete, checksum receipts are complete, no-secret review is complete, package gates are complete, UI review is complete, and demo-specific human approval is captured.

Required follow-on work:

- Create Base Sepolia address evidence records.
- Create Base Sepolia address checksum receipts.
- Create Base Sepolia ABI evidence records.
- Create Base Sepolia ABI checksum receipts.
- Create Base Sepolia explorer/source verification receipts.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.
- Create demo approval receipt template.
- Implement warning language only after app/source gates authorize implementation.

No-go conditions preserved:

- Do not launch a public Base Sepolia demo from this receipt alone.
- Do not launch a production interface from this receipt.
- Do not launch a mainnet interface from this receipt.
- Do not expose write methods from this receipt.
- Do not imply Base Sepolia has production value.
- Do not imply Base Sepolia creates mainnet rights.
- Do not imply Base Sepolia activates production governance.
- Do not imply Base Sepolia activates production treasury.
- Do not imply Base Sepolia activates First Nations production revenue.
- Do not imply Base Sepolia activates corporate production integration.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia public demo approval receipt template reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_PUBLIC_DEMO_APPROVAL_RECEIPT_TEMPLATE.md

Reference commit: 50507d18f6036ccada13440e88a601165f42f0f2

Reference captured UTC: 2026-10-06T09:15:31Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not approve a public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia public demo approval receipt template exists as a controlled testnet-only approval artifact.

No public Base Sepolia demo is approved by this reference.

No public Base Sepolia demo is approved by the template alone.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Base Sepolia has no investment offer.

Base Sepolia has no operational reliance.

Base Sepolia has no First Nations production approval.

Base Sepolia has no corporate production approval.

Public Base Sepolia demo launch remains blocked until a completed approval receipt exists, warning language is implemented, address evidence is complete, ABI evidence is complete, checksum receipts are complete, no-secret review is complete, package gates are complete, UI review is complete, and demo-specific human approval is captured.

Required follow-on work:

- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts.
- Implement Base Sepolia warning language.
- Create read-only client implementation plan.
- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client implementation plan.
- Create governance gates implementation plan.
- Create transaction rail implementation plan.
- Complete UI review.
- Complete demo-specific human approval receipt if demo launch is pursued.

No-go conditions preserved:

- Do not launch a public Base Sepolia demo from this template.
- Do not launch a public Base Sepolia demo unless a completed approval receipt exists.
- Do not launch a production interface from this template.
- Do not launch a mainnet interface from this template.
- Do not expose write methods from this template.
- Do not imply Base Sepolia has production value.
- Do not imply Base Sepolia creates mainnet rights.
- Do not imply Base Sepolia activates production governance.
- Do not imply Base Sepolia activates production treasury.
- Do not imply Base Sepolia activates First Nations production revenue.
- Do not imply Base Sepolia activates corporate production integration.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 read-only client implementation plan reference

Reference document: docs/plans/V0_5_2_READ_ONLY_CLIENT_IMPLEMENTATION_PLAN.md

Reference commit: b9c0b7fe0a9fc1e9aa0b72db40134166d757dc68

Reference captured UTC: 2026-10-06T09:26:34Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the read-only client implementation plan exists as a controlled planning artifact.

No executable read-only client code is approved by this reference alone.

No public Base Sepolia demo is approved by this reference alone.

No write-capable client behavior is approved by this reference.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Read-only client implementation remains blocked until address evidence, address checksum receipts, ABI evidence, ABI checksum receipts, config plan, protocol-client plan, no-secret scan rule, package test strategy, and applicable demo/interface approvals are complete.

Required follow-on work:

- Create package test strategy.
- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Implement read-only client code only after package gates authorize executable implementation.
- Complete UI/demo review before public Base Sepolia demo launch.

No-go conditions preserved:

- Do not implement executable read-only client code from this plan alone.
- Do not launch a public Base Sepolia demo from this plan alone.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not treat Base Sepolia as production.
- Do not treat Base Sepolia reads as mainnet evidence.
- Do not treat read-only client implementation as deployment authorization.
- Do not imply this reference authorizes deployment.

## v0.5.2 package test strategy reference

Reference document: docs/plans/V0_5_2_PACKAGE_TEST_STRATEGY.md

Reference commit: 650020e7418c707aa93bd471e0ef87857a76563d

Reference captured UTC: 2026-10-06T09:36:23Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the package test strategy exists as a controlled planning artifact.

No executable tests are approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Passing tests must not be treated as deployment authorization.

Passing tests must not be treated as mainnet approval.

Passing tests must not be treated as public demo approval.

Required follow-on work:

- Create no-secret package scan rule.
- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create package test source only after package gates authorize executable test implementation.
- Keep write paths blocked until explicit package and approval gates authorize them.

No-go conditions preserved:

- Do not implement package tests from this plan alone unless the next implementation gate authorizes test source creation.
- Do not implement executable app code from this plan alone.
- Do not implement executable package code from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not treat tests as deployment authorization.
- Do not treat passing tests as mainnet approval.
- Do not treat passing tests as public demo approval.
- Do not imply this reference authorizes deployment.

## v0.5.2 no-secret package scan rule reference

Reference document: docs/checklists/V0_5_2_NO_SECRET_PACKAGE_SCAN_RULE.md

Reference commit: 77c5de04cc86e509269024407e2d007b3fd7bd83

Reference captured UTC: 2026-10-07T09:44:39Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve executable no-secret scan tooling by itself.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the no-secret package scan rule exists as a controlled planning artifact.

No executable no-secret scan tooling is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

A no-secret scan pass must not be treated as deployment authorization.

A no-secret scan pass must not be treated as mainnet approval.

A no-secret scan pass must not be treated as public demo approval.

Required follow-on work:

- Create config package implementation plan.
- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Create executable no-secret scan tooling only after implementation gates authorize source creation.
- Create no-secret scan receipt template.
- Create no-secret scan receipt process.
- Complete no-secret scan receipt before public Base Sepolia demo approval.
- Complete no-secret scan receipt before any mainnet candidate deployment package.
- Keep all private keys, seed phrases, recovery phrases, wallet secrets, signer material, deployer keys, private RPC credentials, API keys, and bearer tokens out of the repository.

No-go conditions preserved:

- Do not implement executable no-secret scan tooling from this rule alone unless a future implementation gate authorizes it.
- Do not implement executable app code from this rule alone.
- Do not implement executable package code from this rule alone.
- Do not launch a public Base Sepolia demo from this rule.
- Do not launch a production interface from this rule.
- Do not launch a mainnet interface from this rule.
- Do not treat a no-secret scan pass as deployment authorization.
- Do not treat a no-secret scan pass as public demo approval.
- Do not treat a no-secret scan pass as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 config package implementation plan reference

Reference document: docs/plans/V0_5_2_CONFIG_PACKAGE_IMPLEMENTATION_PLAN.md

Reference commit: 4f7fad4b838bab2452da5bd257fe14cf7bcd9ea2

Reference captured UTC: 2026-10-08T08:44:33Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve generated config.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the config package implementation plan exists as a controlled planning artifact.

No executable config package source is approved by this reference alone.

No generated config is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Config package existence must not be treated as deployment authorization.

Config package existence must not be treated as public demo approval.

Config package existence must not be treated as mainnet approval.

Required follow-on work:

- Create protocol client package implementation plan.
- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create executable config package source only after package gates authorize implementation.
- Create generated config only after evidence and package gates authorize generation.
- Keep write methods disabled by default.
- Keep transaction broadcast disabled by default.
- Keep governance writes disabled by default.
- Keep production treasury routes disabled by default.
- Keep Base mainnet config blocked until final production gates are complete.

No-go conditions preserved:

- Do not implement executable config package source from this plan alone.
- Do not create generated config from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not enable transaction broadcast from this plan.
- Do not enable governance writes from this plan.
- Do not enable production treasury routes from this plan.
- Do not treat config existence as deployment authorization.
- Do not treat config existence as public demo approval.
- Do not treat config existence as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 protocol client package implementation plan reference

Reference document: docs/plans/V0_5_2_PROTOCOL_CLIENT_PACKAGE_IMPLEMENTATION_PLAN.md

Reference commit: d22b210151c1ca214154735eaedcec58675e6953

Reference captured UTC: 2026-10-08T20:42:59Z

Reference target: transaction rail architecture blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable protocol client package source.

This reference does not approve executable config package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve generated protocol clients.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production configuration.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the protocol client package implementation plan exists as a controlled planning artifact.

No executable protocol client package source is approved by this reference alone.

No generated protocol client source is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Protocol client package existence must not be treated as deployment authorization.

Protocol client package existence must not be treated as public demo approval.

Protocol client package existence must not be treated as mainnet approval.

Required follow-on work:

- Create Base Sepolia read-only config plan.
- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create executable config package source only after package gates authorize implementation.
- Create executable protocol client package source only after package gates authorize implementation.
- Keep write methods blocked by default.
- Keep transaction broadcast disabled by default.
- Keep governance writes disabled by default.
- Keep production treasury routes disabled by default.
- Keep Base mainnet protocol clients blocked until final production gates are complete.

No-go conditions preserved:

- Do not implement executable protocol client package source from this plan alone.
- Do not create generated protocol client source from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not enable transaction broadcast from this plan.
- Do not enable governance writes from this plan.
- Do not enable production treasury routes from this plan.
- Do not treat protocol client existence as deployment authorization.
- Do not treat protocol client existence as public demo approval.
- Do not treat protocol client existence as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia read-only config plan reference

Reference document: docs/plans/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_PLAN.md

Reference commit: 3d5d608993c1bc7c3971cf9d06c30ae45afec010

Reference captured UTC: 2026-10-08T21:04:27Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia read-only config plan exists as a controlled planning artifact.

No generated Base Sepolia read-only config is approved by this reference alone.

No executable config package source is approved by this reference alone.

No executable protocol client package source is approved by this reference alone.

No executable app, package, client, config, governance-gate, transaction-rail, or infra implementation is approved by this reference alone.

Base Sepolia read-only config existence must not be treated as deployment authorization.

Base Sepolia read-only config existence must not be treated as public demo approval.

Base Sepolia read-only config existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Create executable config package source only after package gates authorize implementation.
- Create executable protocol client package source only after package gates authorize implementation.
- Run package tests.
- Run no-secret scan.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet config blocked until final production gates are complete.

No-go conditions preserved:

- Do not create generated config from this plan alone.
- Do not implement executable config package source from this plan alone.
- Do not implement executable protocol client package source from this plan alone.
- Do not launch a public Base Sepolia demo from this plan.
- Do not launch a production interface from this plan.
- Do not launch a mainnet interface from this plan.
- Do not expose write methods from this plan.
- Do not enable transaction broadcast from this plan.
- Do not enable governance writes from this plan.
- Do not enable production treasury routes from this plan.
- Do not treat Base Sepolia read-only config existence as deployment authorization.
- Do not treat Base Sepolia read-only config existence as public demo approval.
- Do not treat Base Sepolia read-only config existence as mainnet approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not embed wallet secrets.
- Do not embed private RPC credentials.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address evidence request packet reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_REQUEST_PACKET.md

Reference commit: 35fc42e2b0ceee421522f9c1da24d6d692387576

Reference captured UTC: 2026-10-08T21:20:35Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address evidence request packet exists as a controlled public-evidence request artifact.

No Base Sepolia address evidence response is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia address evidence request packet existence must not be treated as deployment authorization.

Base Sepolia address evidence request packet existence must not be treated as public demo approval.

Base Sepolia address evidence request packet existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete Base Sepolia address evidence records.
- Complete Base Sepolia address checksum receipts.
- Complete Base Sepolia ABI evidence records.
- Complete Base Sepolia ABI checksum receipts.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Review all responses for public-only, no-secret compliance.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, or Base mainnet address evidence.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Create executable config package source only after package gates authorize implementation.
- Create executable protocol client package source only after package gates authorize implementation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not complete the evidence request with guessed addresses.
- Do not complete the evidence request with placeholder addresses.
- Do not complete the evidence request with screenshot-only evidence.
- Do not complete the evidence request with chat-only evidence.
- Do not complete the evidence request with memory-only evidence.
- Do not use local Anvil addresses.
- Do not use Base mainnet addresses.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not use the request packet as deployment authorization.
- Do not use the request packet as public demo approval.
- Do not use the request packet as mainnet approval.
- Do not use the request packet as production address approval.
- Do not use the request packet as production ABI approval.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia address evidence response review checklist reference

Reference document: docs/checklists/V0_5_2_BASE_SEPOLIA_ADDRESS_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

Reference commit: 281809dac7f87cad3d05f27a18aa97f776c2262d

Reference captured UTC: 2026-10-08T21:40:15Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia address evidence response review checklist exists as a controlled response-review gate artifact.

No Base Sepolia address evidence response is approved by this reference alone.

No Base Sepolia address evidence record is approved by this reference alone.

No Base Sepolia address checksum receipt is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia address evidence response review checklist existence must not be treated as deployment authorization.

Base Sepolia address evidence response review checklist existence must not be treated as public demo approval.

Base Sepolia address evidence response review checklist existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Review any Base Sepolia address evidence response against the checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, local Anvil, or Base mainnet address evidence.
- Complete Base Sepolia address evidence records only after response review allows drafting.
- Complete Base Sepolia address checksum receipts only after response review allows drafting.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

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
- Do not use the checklist as deployment authorization.
- Do not use the checklist as public demo approval.
- Do not use the checklist as mainnet approval.
- Do not use the checklist as production address approval.
- Do not use the checklist as production ABI approval.
- Do not use the checklist as treasury approval.
- Do not use the checklist as governance approval.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI evidence request packet reference

Reference document: docs/audits/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_REQUEST_PACKET.md

Reference commit: 40896fc74b347526b6dfb70f60637c36b6ae39d3

Reference captured UTC: 2026-10-10T08:19:46Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia ABI evidence request packet exists as a controlled public-evidence request artifact.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No Base Sepolia method allowlist is approved by this reference alone.

No Base Sepolia write method is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia ABI evidence request packet existence must not be treated as deployment authorization.

Base Sepolia ABI evidence request packet existence must not be treated as public demo approval.

Base Sepolia ABI evidence request packet existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Complete Base Sepolia ABI evidence response review checklist.
- Review any Base Sepolia ABI evidence response against the review checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, manually edited without receipt, or uncommitted ABI evidence.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Complete Base Sepolia address evidence records and checksum receipts.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Create executable protocol client package source only after package gates authorize implementation.
- Keep write methods blocked by default.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not complete the ABI evidence request with guessed ABIs.
- Do not complete the ABI evidence request with placeholder ABIs.
- Do not complete the ABI evidence request with screenshot-only evidence.
- Do not complete the ABI evidence request with chat-only evidence.
- Do not complete the ABI evidence request with memory-only evidence.
- Do not use manually edited ABIs without receipt.
- Do not use local uncommitted ABI artifacts.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not use the request packet as deployment authorization.
- Do not use the request packet as public demo approval.
- Do not use the request packet as mainnet approval.
- Do not use the request packet as production ABI approval.
- Do not use the request packet as production address approval.
- Do not use the request packet as treasury approval.
- Do not use the request packet as governance approval.
- Do not imply this reference authorizes deployment.

## v0.5.2 Base Sepolia ABI evidence response review checklist reference

Reference document: docs/checklists/V0_5_2_BASE_SEPOLIA_ABI_EVIDENCE_RESPONSE_REVIEW_CHECKLIST.md

Reference commit: 16761b446bc75736dff3e27685fbf82095efb586

Reference captured UTC: 2026-10-10T09:16:06Z

Reference target: transaction rail architecture blueprint

Network: Base Sepolia

Chain ID: 84532

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize public Base Sepolia demo launch by itself.

This reference does not approve executable config package source.

This reference does not approve generated config.

This reference does not approve executable protocol client package source.

This reference does not approve executable app source.

This reference does not approve executable package source.

This reference does not approve executable infra source.

This reference does not approve any production address.

This reference does not approve any Base Sepolia address.

This reference does not approve any production ABI.

This reference does not approve any Base Sepolia ABI.

This reference does not approve any Base Sepolia write method.

This reference does not approve any Base Sepolia read allowlist by itself.

This reference does not approve any production governance object.

This reference does not approve any production treasury route.

This reference does not authorize production protocol clients.

This reference does not authorize production transaction rail execution.

This reference does not authorize production governance gates.

This reference does not authorize any public mainnet mint interface.

This reference records that the Base Sepolia ABI evidence response review checklist exists as a controlled response-review gate artifact.

No Base Sepolia ABI evidence response is approved by this reference alone.

No Base Sepolia ABI evidence record is approved by this reference alone.

No Base Sepolia ABI checksum receipt is approved by this reference alone.

No Base Sepolia method classification is approved by this reference alone.

No Base Sepolia method allowlist is approved by this reference alone.

No generated Base Sepolia read-only config is approved by this reference alone.

Base Sepolia ABI evidence response review checklist existence must not be treated as deployment authorization.

Base Sepolia ABI evidence response review checklist existence must not be treated as public demo approval.

Base Sepolia ABI evidence response review checklist existence must not be treated as mainnet approval.

Base Sepolia has no production value.

Base Sepolia has no mainnet rights.

Base Sepolia has no production treasury authority.

Required follow-on work:

- Review any Base Sepolia ABI evidence response against the checklist.
- Reject screenshot-only, chat-only, memory-only, guessed, placeholder, manually edited without receipt, or local uncommitted ABI evidence.
- Complete Base Sepolia ABI evidence records only after response review allows drafting.
- Complete Base Sepolia ABI checksum receipts only after response review allows drafting.
- Complete Base Sepolia explorer/source verification receipts where applicable.
- Complete Base Sepolia method classification only after ABI evidence review allows drafting.
- Keep write methods blocked by default.
- Complete Base Sepolia address evidence records and checksum receipts.
- Create generated Base Sepolia read-only config only after evidence and package gates authorize generation.
- Keep public demo blocked until approval receipt is complete.
- Keep Base mainnet deployment blocked until final production gates are complete.

No-go conditions preserved:

- Do not accept guessed ABIs.
- Do not accept placeholder ABIs.
- Do not accept screenshot-only ABI evidence.
- Do not accept chat-only ABI evidence.
- Do not accept memory-only ABI evidence.
- Do not accept manually edited ABIs without receipt.
- Do not use local uncommitted ABI artifacts.
- Do not approve write methods from ABI presence.
- Do not approve transaction broadcast from ABI presence.
- Do not use Base Sepolia ABI as mainnet ABI approval.
- Do not request private keys.
- Do not request seed phrases.
- Do not request wallet recovery phrases.
- Do not request deployer keys.
- Do not request signer keys.
- Do not request wallet secrets.
- Do not request private RPC credentials.
- Do not use the checklist as deployment authorization.
- Do not use the checklist as public demo approval.
- Do not use the checklist as mainnet approval.
- Do not use the checklist as production ABI approval.
- Do not use the checklist as production address approval.
- Do not use the checklist as treasury approval.
- Do not use the checklist as governance approval.
- Do not imply this reference authorizes deployment.
