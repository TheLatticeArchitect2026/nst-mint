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
