# NST Core v0.5.2 Mainnet Read-Only Verification Commands Checklist

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: 6a14b8ed26aa501eeed697b7f5f81aa3168dba4e
Created UTC: 2026-09-27T19:52:09Z

Source runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source rollback checklist: docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source release hardening checklist: docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md
Source Via-IR hardening checklist: docs/checklists/V0_5_2_VIA_IR_BUILD_PROFILE_HARDENING_CHECKLIST.md
Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md
Source no-deployment candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md
Source address intake package: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md
Source address intake process: docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md
Source owner address template: docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md
Source role treasury operator matrix: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_MATRIX.md
Source role treasury operator audit: docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md
Source operator handoff checklist: docs/audits/V0_5_2_OPERATOR_HANDOFF_CHECKLIST.md
Source build profile decision record: docs/audits/V0_5_2_BUILD_PROFILE_DECISION_RECORD.md
Source Via-IR adoption record: docs/audits/V0_5_2_VIA_IR_BUILD_PROFILE_ADOPTION_RECORD.md
Source Foundry build profile triage: docs/audits/V0_5_2_FOUNDRY_BUILD_PROFILE_TRIAGE.md

## Purpose

This checklist defines the read-only verification command requirements for any future NST Core v0.5.2 mainnet candidate package.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

This checklist does not create deployment commands.

This checklist does not create deployment configuration.

This checklist does not approve any address, role, route, treasury destination, operator, key, deployer wallet, governance object, or release package.

This checklist exists to make sure that future post-deployment verification commands are prepared, reviewed, safe, deterministic, read-only, and compatible with the approved deployment configuration before any future candidate deployment command is prepared.

## Read-only command safety rule

Verification commands must be read-only.

Verification commands must not broadcast transactions.

Verification commands must not sign transactions.

Verification commands must not require private keys.

Verification commands must not require seed phrases.

Verification commands must not require deployer keys.

Verification commands must not require wallet secrets.

Verification commands must not require recovery phrases.

Verification commands must not write to chain state.

Verification commands must not use forge script broadcast mode.

Verification commands must not use cast send.

Verification commands must not use unsafe local mock values as production evidence.

Verification commands must use approved public production contract addresses only after those addresses are finalized.

## Current blocker

Production owner addresses remain TBD.

The final deployment configuration is not complete.

The final verification command set is not complete.

Mainnet deployment remains blocked.

A passing build does not authorize deployment.

A passing test suite does not authorize deployment.

A committed Via-IR build profile does not authorize deployment.

A read-only verification checklist does not authorize deployment.

## Required verification command categories

| Category | Required command type | Status |
| --- | --- | --- |
| Chain identity | Read chain ID and target network metadata | OPEN |
| Contract address capture | Verify each deployed contract address exists onchain | OPEN |
| Source verification | Confirm explorer/source verification for each contract | OPEN |
| Bytecode verification | Confirm deployed bytecode exists and is non-empty | OPEN |
| Ownership verification | Confirm admin and owner addresses match approved package | OPEN |
| Role verification | Confirm each contract role owner matches approved package | OPEN |
| Treasury route verification | Confirm route destinations match approved treasury matrix | OPEN |
| Yield receiver verification | Confirm yield receiver matches approved treasury package | OPEN |
| Rescue destination verification | Confirm rescue destination matches approved emergency/treasury package | OPEN |
| Pause authority verification | Confirm pause authority matches emergency package | OPEN |
| Mint authority verification | Confirm mint authority matches approved mint authority package | OPEN |
| Metadata authority verification | Confirm metadata authority matches approved metadata package | OPEN |
| Registry authority verification | Confirm registry authority matches approved registry package | OPEN |
| Claim authority verification | Confirm claim authority matches approved claim package | OPEN |
| Operator authority verification | Confirm routine operator permissions are limited | OPEN |
| Bootstrap authority verification | Confirm bootstrap powers are removed or explicitly approved | OPEN |
| SBT invariant verification | Confirm soulbound and mint-state invariants are reviewed | OPEN |
| CFT invariant verification | Confirm token configuration and treasury behavior are reviewed | OPEN |
| YieldPool verification | Confirm yield and claim configuration is reviewed | OPEN |
| VaultRegistry verification | Confirm credential/vault authority configuration is reviewed | OPEN |
| RewardEscrow verification | Confirm grant and claim controls are reviewed | OPEN |
| Release evidence verification | Confirm all receipts are captured before release | OPEN |

## Approved command surfaces

Allowed read-only surfaces include:

- cast call with approved production address inputs.
- cast code with approved production address inputs.
- cast storage only when the storage slot is documented and reviewed.
- cast chain-id.
- cast block.
- forge inspect.
- forge build using the committed approved build profile.
- forge test using the committed approved build profile.
- explorer source verification checks that do not sign or broadcast.
- local grep checks against committed docs and config.
- checksum commands for committed local files.
- git status, git diff, git log, and git rev-parse.

Disallowed surfaces include:

- cast send.
- forge script with --broadcast.
- any command that signs a transaction.
- any command that uses a private key.
- any command that uses a seed phrase.
- any command that uses a deployer key.
- any command that uses a wallet secret.
- any command that writes to a contract.
- any command that changes production contract state.
- any command that depends on unapproved production addresses.
- any command that uses local mock addresses as production evidence.
- any command that treats screenshots or chat text as final address evidence.

## Required input files before commands can be finalized

| Required input | Required state | Status |
| --- | --- | --- |
| Final owner address template | No TBD production owner values | OPEN |
| Final address intake package | All required address rows approved | OPEN |
| Final role treasury operator matrix | Updated from final approved addresses | OPEN |
| Final operator handoff checklist | Updated with final operator authority evidence | OPEN |
| Final deployment config | Created from approved address package only | OPEN |
| Final deployment config checksum | Captured after config creation | OPEN |
| Final deployment config review checklist | Completed and committed | OPEN |
| Final candidate contract address receipt | Captured after deployment only | OPEN |
| Final release evidence directory | Path finalized | OPEN |
| Final human approval receipt | Captured before deployment | OPEN |

## Command template rules

Every command template must include:

- Purpose.
- Contract or module being checked.
- Read-only command body.
- Required inputs.
- Expected output.
- Failure condition.
- Receipt file path.
- Reviewer.
- Approval status.
- No-broadcast confirmation.
- No-secret confirmation.

Every command template must avoid:

- Private key values.
- Seed phrase values.
- API key values.
- Wallet secret values.
- Recovery phrase values.
- Unapproved addresses.
- Placeholder values presented as production values.
- Mock/local/testnet values presented as production values.

## Phase A: pre-verification source check

| Check | Evidence required | Status |
| --- | --- | --- |
| Correct phase branch selected | branch receipt | OPEN |
| Working tree clean before verification command preparation | git status receipt | OPEN |
| Via-IR build profile committed | foundry.toml and commit receipt | COMPLETE |
| forge fmt --check passes | fmt receipt | OPEN |
| forge build passes under approved profile | build receipt | OPEN |
| forge test passes under approved profile | test receipt | OPEN |
| Final deployment config review checklist exists | checklist receipt | COMPLETE |
| Final deployment config review checklist complete | review receipt | OPEN |
| Final address package complete | address package receipt | OPEN |
| Final deployment config exists | file receipt | OPEN |
| Final deployment config checksum captured | checksum receipt | OPEN |
| No source changes pending | git diff receipt | OPEN |
| No script changes pending | git diff receipt | OPEN |
| No config changes pending | git diff receipt | OPEN |

## Phase B: chain and contract address verification

| Check | Evidence required | Status |
| --- | --- | --- |
| Chain ID command prepared | command review receipt | OPEN |
| Chain ID receipt captured | read-only receipt | OPEN |
| Current block command prepared | command review receipt | OPEN |
| Current block receipt captured | read-only receipt | OPEN |
| Contract address list finalized | deployment receipt | OPEN |
| Every expected contract address has non-empty bytecode | cast code receipt | OPEN |
| Every expected contract address maps to deployment receipt | address mapping receipt | OPEN |
| No mock address appears in contract address list | grep and manual review receipt | OPEN |
| No Base Sepolia address appears unless explicitly limited | grep and manual review receipt | OPEN |
| Explorer/source verification command prepared | command review receipt | OPEN |
| Explorer/source verification receipt captured | explorer receipt | OPEN |

## Phase C: role verification command set

| Role or authority | Required verification | Status |
| --- | --- | --- |
| DEFAULT_ADMIN_ROLE | Read-only role owner check against approved governance owner | OPEN |
| PAUSER_ROLE | Read-only role owner check against approved emergency authority | OPEN |
| MINT_MANAGER_ROLE | Read-only role owner check against approved mint authority | OPEN |
| METADATA_MANAGER_ROLE | Read-only role owner check against approved metadata authority | OPEN |
| TREASURY_MANAGER_ROLE | Read-only role owner check against approved treasury authority | OPEN |
| SWAP_OPERATOR_ROLE | Read-only role owner check against approved swap operator | OPEN |
| Registry authority | Read-only owner or role check against approved registry authority | OPEN |
| Vault credential authority | Read-only owner or role check against approved credential authority | OPEN |
| Yield claim authority | Read-only owner or role check against approved claim authority | OPEN |
| Reward grant authority | Read-only owner or role check against approved grant authority | OPEN |
| Bootstrap operator | Read-only check proving removed or explicitly approved | OPEN |

## Phase D: treasury and route verification command set

| Treasury item | Required verification | Status |
| --- | --- | --- |
| Founder payout destination | Read-only check against approved founder custody record | OPEN |
| Yield pool receiver | Read-only check against approved treasury record | OPEN |
| CFT treasury destination | Read-only check against approved treasury record | OPEN |
| TreasuryRouter destinations | Read-only route check against approved route matrix | OPEN |
| Fee or BPS recipient controls | Read-only check against governance and treasury approval | OPEN |
| Rescue destination | Read-only check against emergency and treasury approval | OPEN |
| No routine hot-wallet treasury authority | Manual and read-only role review receipt | OPEN |
| Treasury route verification receipt | Captured and stored in evidence bundle | OPEN |

## Phase E: contract-specific read-only verification

| Contract or module | Required verification | Status |
| --- | --- | --- |
| NSTSBT | Mint price, mint state, role owners, treasury split, metadata status, soulbound restrictions reviewed | OPEN |
| CFTv2 | Token name, symbol, decimals, roles, treasury mint authority, supply settings reviewed | OPEN |
| TreasuryRouter | Route destinations, route permissions, rescue controls reviewed | OPEN |
| YieldPool | Receiver, claim controls, pause controls, reward token settings reviewed | OPEN |
| VaultRegistry | Credential authority and vault membership controls reviewed | OPEN |
| RewardEscrow | Grant authority, claim authority, rescue controls, maturity rules reviewed | OPEN |
| ShieldRegistry | Vetting, ban, exemption, and registry authority controls reviewed | OPEN |

## Phase F: no-state-change proof

| Check | Evidence required | Status |
| --- | --- | --- |
| Verification command list contains no cast send | grep receipt | OPEN |
| Verification command list contains no --broadcast | grep receipt | OPEN |
| Verification command list contains no private key reference | grep receipt | OPEN |
| Verification command list contains no seed phrase reference | grep receipt | OPEN |
| Verification command list contains no wallet secret reference | grep receipt | OPEN |
| Verification command list contains no deployer key reference | grep receipt | OPEN |
| Verification command list contains no recovery phrase reference | grep receipt | OPEN |
| Verification command list contains no unapproved address | manual review receipt | OPEN |
| Verification command list is reviewed before use | human review receipt | OPEN |

## Phase G: receipt capture requirements

Each read-only verification run must produce a receipt that includes:

- UTC timestamp.
- Branch.
- Commit.
- Chain ID.
- RPC/network label without secret values.
- Contract address checked.
- Command category.
- Command output.
- PASS or FAIL result.
- Reviewer.
- Evidence file path.

Receipt files must not include:

- Private keys.
- Seed phrases.
- API keys.
- Wallet secrets.
- Recovery phrases.
- Signing material.
- Unredacted RPC URLs containing API credentials.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any deployment config field remains unresolved.
- Any final verification command is missing.
- Any verification command can write to chain state.
- Any verification command requires a private key.
- Any verification command requires a seed phrase.
- Any verification command requires a deployer key.
- Any verification command requires a wallet secret.
- Any verification command requires a recovery phrase.
- Any verification command uses cast send.
- Any verification command uses forge script broadcast mode.
- Any command uses local mock values as production values.
- Any command uses Base Sepolia values as production values without explicit written limitation and final approval.
- Any verification receipt is missing.
- Any rollback path is incomplete.
- Any release evidence file is missing.
- Any final human approval receipt is missing.

## Acceptance rule for this checklist

This checklist is complete only when:

- The final deployment config review checklist is complete.
- The final address package has no TBD production owner values.
- The final owner address template has no TBD production owner values.
- The final deployment config is created from approved production addresses only.
- The final deployment config checksum is captured.
- The verification command set is reviewed and committed.
- forge fmt --check passes.
- forge build passes under the approved committed build profile.
- forge test passes under the approved committed build profile.
- Every read-only command is confirmed non-broadcasting.
- Every receipt path is defined.
- The final acceptance gate references the completed verification command set.
- No mainnet deployment has been authorized by this checklist alone.

## Current status

- Read-only verification command checklist draft created.
- No verification commands have been finalized.
- No production owner address has been approved by this checklist.
- No deployment config has been created by this checklist.
- No source code has been changed.
- No Foundry config has been changed.
- No deployment script has been changed.
- No release script has been changed.
- No mainnet deployment has been authorized.
- Next task: review this read-only verification command checklist, then commit it as a docs-only readiness artifact.

## V0.5.2 mainnet release evidence bundle checklist reference

Source checklist: `docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md`

Release evidence checklist commit: `59da1a7333700290c330d8af33e44e06e47366f9`

Reference created UTC: `2026-09-28T10:27:42Z`

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

The mainnet release evidence bundle remains a required blocker gate until every required evidence file, release note, checksum, receipt, GitHub release view, upload confirmation, verification receipt, and final human approval receipt is complete, reviewed, committed, and remotely confirmed.

The release evidence bundle must not contain private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, or private RPC credentials.

The release evidence bundle must not be treated as complete while any of the following remain missing, empty, TBD, unreviewed, uncommitted, or unconfirmed:

- production owner address approval evidence;
- deployment configuration checksum evidence;
- deployment configuration manual review receipt;
- read-only verification command receipts;
- release notes;
- release evidence directory;
- artifact upload confirmation;
- GitHub release view capture;
- rollback evidence;
- final acceptance gate receipt;
- final human approval receipt.

A release evidence bundle checklist pass is required before any future candidate release package can be considered complete.

A release evidence bundle checklist pass does not authorize deployment by itself.

## v0.5.2 final human approval receipt template reference

Reference added UTC: 2026-09-28T11:50:22Z

Source final human approval receipt template: docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md

Source template commit: 6ad106ff5eda4ec1d8bf970985ec2c2d58975ea7

This reference does not authorize deployment.

No mainnet deployment is authorized by adding this reference.

Final human approval remains missing until a completed final human approval receipt is reviewed, committed, pushed, remotely confirmed, and supported by all required readiness evidence.

A passing build does not authorize deployment.

A passing test suite does not authorize deployment.

A committed Via-IR build profile does not authorize deployment.

A completed checklist draft does not authorize deployment.

A release evidence bundle checklist does not authorize deployment.

A read-only verification commands checklist does not authorize deployment.

A no-deployment candidate plan does not authorize deployment.

Only a complete final approval package plus explicit human approval can authorize moving toward a candidate deployment command.

Required handling:

- Use docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md as the approved structure for any future final human approval receipt.
- Do not substitute chat text, screenshots, passing builds, passing tests, draft checklists, or implied approval for final approval.
- Do not include private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information in any approval receipt.
- Keep deployment blocked while any production owner address, governance object, treasury destination, operator assignment, deployment config, verification command, release evidence bundle, rollback path, or final human approval item remains OPEN or TBD.

## V0.5.2 mainnet readiness blocker register reference

Reference source: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md
Reference commit: 54ed452cc3f64cbd6ad69a2b9ed875e9fa5c8f19
Reference UTC: 2026-09-29T08:52:02Z

This document now recognizes the v0.5.2 mainnet readiness blocker register as a controlling readiness artifact.

This reference does not authorize deployment.

Mainnet deployment remains blocked until every blocker in the register is resolved, reviewed, committed, pushed, remotely confirmed, and paired with explicit final human approval.

The blocker register must be checked before any future candidate deployment command is prepared.

## v0.5.2 final production address collection package reference

Reference added UTC: 2026-09-29T20:50:39Z

Reference artifact: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md

Reference commit: efbf87cf1b199f5fe42026925aa4bdea03663179

Current branch at reference time: phase/v0.5.2-mainnet-readiness

This reference records that the v0.5.2 final production address collection package exists as a committed readiness artifact.

This reference does not approve any production address, route, role, treasury destination, operator, governance object, deployment key, release package, deployment configuration, or mainnet deployment.

This reference does not authorize deployment.

Production owner addresses remain TBD until final public production addresses are collected from an approved source of truth, reviewed, committed, pushed, and remotely confirmed.

No private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information belong in this repository.

Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.

Mainnet deployment remains blocked.

## V0.5.2 final production address approval receipt template reference

Reference file: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md
Reference commit: fcfaf82996a48c711d5f9537051ad5a5b91a4291
Reference UTC: 2026-09-30T09:05:59Z

This reference connects the Read-only verification commands checklist to the final production address approval receipt template.

This reference is not a deployment authorization.

No mainnet deployment is authorized by this reference.

This reference does not approve any production address, route, role, treasury destination, operator, key, deployer wallet, governance object, release package, or deployment configuration.

Final production addresses remain blocked unless each required production address row is paired with a completed approval receipt created from the committed final production address approval receipt template or a stricter committed successor.

Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.

No private key, seed phrase, deployer key, wallet secret, API key, recovery phrase, private RPC credential, keystore password, signing material, or hardware wallet recovery information may be documented in this reference chain.

Required approval evidence before this gate can close:

- Completed final production address approval receipt.
- Final public production address values from an approved source of truth.
- Approval evidence for each required owner category.
- Checksum confirmation for each public address.
- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
- Confirmation that no private signing material or secret material is included.
- Manual review receipt.
- Commit and remote confirmation receipt.

Until this approval evidence exists, the production-address portion of this readiness gate remains OPEN and mainnet deployment remains BLOCKED.

## v0.5.2 production address source-of-truth request packet reference

Reference added UTC: 2026-10-02T08:17:08Z
Reference source packet commit: 0b9d98e712085fcbab4618360a316143fd6a7a4b
Reference source packet: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md

This reference does not authorize deployment.

No mainnet deployment is authorized by this reference.

The production address source-of-truth request packet is now part of the v0.5.2 readiness evidence chain.

Final production addresses remain unresolved until approved public source-of-truth evidence is collected, reviewed, committed, pushed, remotely confirmed, and converted into a completed final production address approval receipt.

Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.

Mainnet deployment remains blocked until every final acceptance gate item is COMPLETE, every production owner address is resolved from approved public source-of-truth evidence, and explicit final human approval is captured.

## V0.5.2 source-of-truth response review checklist reference

Reference added UTC: 2026-10-04T11:24:21Z

Source checklist: docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md

Source checklist commit: c95b21a5263e10154ca9b0aee6ac1225c6d92075

Source checklist short commit: c95b21a

This reference does not authorize deployment.

The production address source-of-truth response review checklist must be completed before any production address response can be accepted into a final owner address template, deployment configuration, verification command set, release evidence bundle, final human approval receipt, or candidate deployment command.

The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.

No private key, seed phrase, API key, deployer key, wallet secret, recovery phrase, signing material, private RPC credential, keystore password, or hardware wallet recovery information may be included in any response review artifact.

Readiness remains blocked until final public production addresses, approval evidence, deployment configuration review, read-only verification receipts, release evidence, and final human approval are complete, reviewed, committed, pushed, and remotely confirmed.

Mainnet deployment remains blocked.

## V0.5.2 application source tree scaffold reference

Status: CREATED AND COMMITTED

Application source tree scaffold commit: f1710989494f97154f7d9dcaeb0ece2f00aad089

Application source tree scaffold gate checklist: docs/checklists/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_GATE_CHECKLIST.md

Application source tree scaffold record: docs/plans/V0_5_2_APPLICATION_SOURCE_TREE_SCAFFOLD_RECORD.md

Scaffolded application surfaces:

- apps/public-site/
- apps/corporate-site/
- apps/base-sepolia-demo/
- apps/first-nations-portal/
- apps/admin-console/

Scaffolded package surfaces:

- packages/transaction-rail/
- packages/protocol-clients/
- packages/governance-gates/
- packages/ui/
- packages/config/

Scaffolded infrastructure surface:

- infra/

Control rule:

- The scaffold is README-only at this stage.
- The scaffold is non-executable.
- The scaffold does not introduce production application code.
- The scaffold does not authorize deployment.
- The scaffold does not authorize public launch.
- The scaffold does not authorize public reliance.
- The scaffold does not authorize Base Sepolia public onboarding.
- The scaffold does not authorize mainnet deployment.
- Future implementation inside apps/, packages/, or infra/ must pass source-tree, security, governance, legal, address, verification, release-evidence, and final human approval controls before production use.

## v0.5.2 Transaction rail package gate checklist reference

Reference document: docs/checklists/V0_5_2_TRANSACTION_RAIL_PACKAGE_GATE_CHECKLIST.md

Reference commit: 611f97a8dbbd662412a6bdeb8713353ef0ec5a0b

Reference captured UTC: 2026-10-04T15:38:04Z

Reference target: read-only verification commands checklist

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
