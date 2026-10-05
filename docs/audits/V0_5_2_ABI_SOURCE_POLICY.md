# NST Core v0.5.2 ABI Source Policy

Status: DRAFT POLICY
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-04T19:03:58Z
Current commit at creation: f580f3ca91c4821df2ca6d7a9b1e273328183831

Protocol client package gate commit: f580f3ca91c4821df2ca6d7a9b1e273328183831

Config package gate commit: f580f3ca91c4821df2ca6d7a9b1e273328183831

Governance gates package gate commit: c44aa902a9d83b828fdf275f5b58588f5e9f1929

Transaction rail package gate commit: f580f3ca91c4821df2ca6d7a9b1e273328183831

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize production protocol clients.

This document does not authorize production transaction rail execution.

This document does not authorize production configuration.

This document does not authorize production governance.

This document does not authorize any public mainnet mint interface.

This document does not authorize writing executable ABI client code yet.

## Purpose

This policy defines the approved source-of-truth rules for ABIs used by NST Lattice applications, protocol clients, config, governance gates, and transaction rail packages.

No application, package, demo, public interface, corporate interface, First Nations interface, admin console, protocol client, or transaction rail may rely on an ABI unless the ABI source is approved under this policy.

The purpose is to prevent the project from using stale, pasted, screenshot-derived, explorer-only, chat-derived, unverified, or mismatched ABIs.

## Current blocker

Executable ABI-dependent source remains blocked.

Protocol client package implementation remains blocked.

Transaction rail implementation remains blocked.

Config package implementation remains blocked.

Governance gates implementation remains blocked.

Public production interface launch remains blocked.

Mainnet deployment remains blocked.

## Approved ABI source hierarchy

The approved ABI source hierarchy is:

1. Committed Foundry build artifacts produced from the committed repository source using the approved build profile.
2. Source-verified explorer ABI matching the deployed contract and committed source.
3. Release evidence bundle ABI artifact with checksum and commit reference.
4. Explicitly reviewed ABI export generated from the approved build process.

No lower-quality source may override a higher-quality source.

No ABI may be accepted from memory, screenshots, chat text, guesses, copied UI fragments, unverified pasted JSON, or undocumented external files.

## Foundry build artifact rule

A Foundry ABI is acceptable only when all of the following are true:

- It is generated from committed source code.
- It is generated using the committed approved Foundry build profile.
- The build profile is documented.
- The commit hash is documented.
- The contract name is documented.
- The artifact path is documented.
- The ABI checksum is documented where applicable.
- The source contract path is documented.
- The build command is documented.
- The build receipt is captured.
- The ABI is not edited by hand.
- The ABI is not pasted from chat.
- The ABI is not derived from a screenshot.
- The ABI is not derived from an untracked local file.

## Explorer ABI rule

An explorer ABI is acceptable only when all of the following are true:

- The contract address is from an approved deployment inventory.
- The network is clearly identified.
- The chain ID is clearly identified.
- The explorer source verification page confirms source verification.
- The contract source matches the expected repository source or release source.
- The explorer ABI matches the intended contract.
- The explorer ABI is captured with a receipt.
- The explorer URL is documented.
- The capture date is documented.
- The reviewer is documented.
- The ABI is not used as the only source for production unless paired with approved release/build evidence.

## Base Sepolia ABI boundary

Base Sepolia ABIs may be used for testnet demo mode only.

Base Sepolia ABIs must be marked:

- testnet-only;
- no-production-value;
- no-mainnet-rights;
- no-production-treasury;
- no-investment-offer;
- no-operational-reliance.

Base Sepolia ABI references must not be presented as Base mainnet ABI references.

Base Sepolia ABI references must not authorize production config.

Base Sepolia ABI references must not authorize production transaction rail execution.

Base Sepolia ABI references must not authorize public production minting.

## Base mainnet ABI boundary

Base mainnet ABI use remains blocked until:

- final production addresses are approved;
- final deployment config exists;
- final deployment config checksum is captured;
- final read-only verification command set is complete;
- release evidence bundle is complete;
- final human approval receipt is complete;
- source verification receipts are captured after deployment;
- mainnet contract addresses are captured after deployment.

No Base mainnet ABI may be finalized before deployment evidence exists.

No Base mainnet ABI may be guessed from Base Sepolia deployment.

No Base mainnet ABI may be assumed from local Anvil deployment.

## Local Anvil ABI boundary

Local Anvil ABIs may be used only for local development and tests.

Local Anvil ABIs must not be used as production ABI evidence.

Local Anvil ABIs must not be used as Base Sepolia ABI evidence.

Local Anvil ABIs must not be used as Base mainnet ABI evidence.

Local Anvil deployment addresses must not be paired with production ABI records.

## ABI package eligibility

An ABI may be made available to packages only when it has:

- contract name;
- source contract path;
- source commit;
- build profile;
- network scope;
- chain ID scope;
- artifact path;
- checksum or review receipt;
- approval status;
- reviewer;
- no-secret confirmation;
- no-manual-edit confirmation.

## Protocol client ABI dependency

Protocol clients must use only approved ABI sources.

Protocol clients must not import unapproved pasted ABIs.

Protocol clients must not depend on screenshot-derived ABIs.

Protocol clients must not silently fall back to an ABI from another network.

Protocol clients must fail closed when ABI source status is OPEN or BLOCKED.

Protocol clients must distinguish read-only ABI use from write-capable ABI use.

## Transaction rail ABI dependency

Transaction rail packages must use only approved ABI sources.

Transaction rail packages must not broadcast transactions using an unapproved ABI.

Transaction rail packages must not use ABI entries for write methods until the write path gate is complete.

Transaction rail packages must fail closed when ABI source status is incomplete.

Transaction rail packages must not infer method safety from ABI presence alone.

## Config ABI dependency

Config may reference ABI source metadata only after ABI policy gates are satisfied.

Config must not embed ABI content from unapproved sources.

Config must not configure production ABI references before production approvals are complete.

Config must label Base Sepolia ABI references as testnet-only.

Config must label Base mainnet ABI references as blocked until production deployment evidence exists.

## Governance ABI dependency

Governance gates may require ABI references to verify role owner reads, pause state reads, mint state reads, treasury route reads, registry reads, and admin role reads.

Governance gates must not treat ABI availability as governance approval.

Governance gates must not enable privileged writes from ABI availability alone.

Governance gates must fail closed if ABI evidence is incomplete.

## ABI record required fields

Every ABI record must include:

- contract name;
- contract module;
- source contract path;
- source commit;
- build command;
- build profile;
- artifact path;
- ABI extraction method;
- ABI checksum where applicable;
- network scope;
- chain ID;
- deployed address where applicable;
- explorer verification URL where applicable;
- explorer capture receipt where applicable;
- release evidence reference where applicable;
- reviewer;
- review date;
- approval status;
- no-secret confirmation;
- no-manual-edit confirmation;
- no-screenshot-source confirmation;
- no-chat-source confirmation.

## Disallowed ABI sources

The following ABI sources are disallowed:

- screenshots;
- chat text;
- memory;
- guesses;
- manually edited JSON without receipt;
- pasted explorer output without receipt;
- old build artifacts with unknown commit;
- artifacts from uncommitted source;
- artifacts from wrong build profile;
- artifacts from wrong branch;
- artifacts from wrong chain;
- local Anvil artifact presented as production artifact;
- Base Sepolia artifact presented as Base mainnet artifact;
- third-party ABI with no source verification;
- ABI from an unreviewed npm package;
- ABI from an unreviewed web page;
- ABI from a private message;
- ABI from a file containing secrets.

## Secret exclusion rule

ABI files and ABI records must not contain:

- private keys;
- seed phrases;
- wallet recovery phrases;
- deployer keys;
- wallet secrets;
- private RPC credentials;
- keystore passwords;
- hardware wallet recovery information;
- private signer material;
- personal access tokens;
- private API keys.

If secret material is found in any ABI source or ABI record, the ABI source is rejected.

## ABI drift rule

ABI drift must be treated as a blocker.

ABI drift includes:

- ABI method mismatch;
- ABI event mismatch;
- ABI constructor mismatch;
- ABI error mismatch;
- stale artifact commit;
- stale source verification;
- wrong compiler profile;
- wrong optimization setting;
- wrong via-ir setting;
- wrong contract address;
- wrong network.

Any ABI drift blocks protocol clients, transaction rail, config, public interface, and mainnet deployment until resolved.

## ABI review workflow

Required ABI review workflow:

1. Identify contract source path.
2. Confirm branch.
3. Confirm clean tree.
4. Confirm committed source.
5. Confirm approved build profile.
6. Run deterministic build.
7. Capture build receipt.
8. Capture ABI artifact path.
9. Capture ABI checksum where applicable.
10. Compare ABI to explorer verification where applicable.
11. Record network scope.
12. Record chain ID.
13. Record reviewer.
14. Record approval status.
15. Confirm no secrets.
16. Confirm no manual edits.
17. Commit ABI evidence record.
18. Reference ABI record in readiness gates before executable client use.

## Required ABI categories

| ABI category | Required source | Status |
| --- | --- | --- |
| NSTSBT ABI | Committed build artifact plus deployment/source verification evidence | OPEN |
| CFT ABI | Committed build artifact plus deployment/source verification evidence | OPEN |
| TreasuryRouter ABI | Committed build artifact plus deployment/source verification evidence | OPEN |
| ShieldRegistry ABI | Committed build artifact plus deployment/source verification evidence | OPEN |
| VaultRegistry ABI | Committed build artifact plus deployment/source verification evidence | OPEN |
| YieldPool ABI | Committed build artifact plus deployment/source verification evidence | OPEN |
| RewardEscrow ABI | Committed build artifact plus deployment/source verification evidence | OPEN |
| Read-only helper ABIs | Committed build artifact or reviewed interface source | OPEN |
| Base Sepolia demo ABIs | Base Sepolia deployment inventory and source verification | OPEN |
| Base mainnet production ABIs | Post-deployment release evidence and explorer verification | BLOCKED |

## First approved implementation after policy

The first future ABI implementation should be one of:

- ABI evidence record template;
- ABI checksum receipt template;
- ABI source mapping document;
- read-only ABI metadata type;
- no-secret ABI validator;
- test-only ABI loader marked development-only.

The first implementation must not include:

- production write clients;
- production mint transaction helpers;
- production treasury transaction helpers;
- production governance transaction helpers;
- unapproved production addresses;
- private keys;
- seed phrases;
- wallet recovery phrases;
- private RPC credentials.

## No-go conditions

Do not write executable ABI client code until this policy is committed and referenced.

Do not create production protocol clients yet.

Do not create production transaction rail ABI bindings yet.

Do not create production write clients yet.

Do not create production mint clients yet.

Do not use screenshot-derived ABIs.

Do not use chat-derived ABIs.

Do not use manually edited ABIs without receipt.

Do not use Base Sepolia ABIs as production ABIs.

Do not use Anvil ABIs as production ABIs.

Do not use uncommitted build artifacts as approved ABIs.

Do not use wrong-branch build artifacts as approved ABIs.

Do not use wrong-profile build artifacts as approved ABIs.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not embed wallet secrets.

Do not embed private RPC credentials.

Do not imply this policy authorizes deployment.

## Acceptance criteria

This policy is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states executable ABI client code is not authorized yet;
- it defines approved ABI sources;
- it defines disallowed ABI sources;
- it defines Base Sepolia ABI boundaries;
- it defines Base mainnet ABI boundaries;
- it defines local Anvil ABI boundaries;
- it defines ABI drift blockers;
- it defines ABI review workflow;
- it defines secret exclusion rules;
- it includes no private keys;
- it includes no seed phrases;
- it includes no wallet secrets;
- it includes no recovery phrases;
- it includes no production ABI approval;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Address source policy reference

Reference document: docs/audits/V0_5_2_ADDRESS_SOURCE_POLICY.md

Reference commit: 8151b22f61901d0a0ce3fe4bd16788f6e925329c

Reference captured UTC: 2026-10-04T20:49:56Z

Reference target: ABI source policy

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

Reference target: ABI source policy

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

Reference target: ABI source policy

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

Reference target: ABI source policy

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
