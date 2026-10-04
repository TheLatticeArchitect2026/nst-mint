# NST Core v0.5.2 Final Production Address Source-of-Truth Response Review Checklist

Status: DRAFT CHECKLIST  
Phase: v0.5.2 mainnet readiness  
Branch: phase/v0.5.2-mainnet-readiness  
Created UTC: 2026-10-04T11:09:57Z  
Current commit at creation: 9883b43e3c2d678a050a6eda13dece87a4252ecf  

Source request packet: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md  
Source request packet commit: 0b9d98e712085fcbab4618360a316143fd6a7a4b  
Source collection package: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md  
Source collection package commit: 9883b43e3c2d678a050a6eda13dece87a4252ecf  
Source approval receipt template: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md  
Source approval receipt template commit: 9883b43e3c2d678a050a6eda13dece87a4252ecf  
Source blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md  
Source blocker register commit: 9883b43e3c2d678a050a6eda13dece87a4252ecf  

## Purpose

This checklist defines the review gate for any future response to the v0.5.2 production address source-of-truth request packet.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

This checklist does not add production addresses.

This checklist does not approve production addresses.

This checklist does not create a deployment configuration.

This checklist does not create a deployment command.

This checklist exists to prevent production owner addresses from being accepted from memory, screenshots, chat text, guesses, mock values, local values, Anvil values, Base Sepolia values, placeholder values, or unapproved operator convenience.

Final production addresses may be accepted only after the returned source-of-truth response is reviewed, rejected or accepted, documented, committed, pushed, remotely confirmed, and paired with the required approval receipt.

## Current blocker

Production owner addresses remain unresolved until approved public production address evidence is received and reviewed.

Mainnet deployment remains blocked.

A source-of-truth request packet does not authorize deployment.

A source-of-truth response does not authorize deployment.

A reviewed source-of-truth response does not authorize deployment.

A final production address approval receipt does not authorize deployment by itself.

Only a complete final readiness package plus explicit final human approval can authorize moving toward a candidate deployment command.

## Response safety rule

The response review must be read-only.

The response review must be documentation-only.

The response review must not edit source code.

The response review must not edit deployment scripts.

The response review must not edit release scripts.

The response review must not edit Foundry configuration.

The response review must not create final deployment configuration.

The response review must not create a broadcast command.

The response review must not use cast send.

The response review must not require private keys.

The response review must not require seed phrases.

The response review must not require deployer keys.

The response review must not require API keys.

The response review must not require wallet secrets.

The response review must not require recovery phrases.

The response review must not require signing material.

The response review must not require private RPC credentials.

The response review must not require keystore passwords.

The response review must not require hardware wallet recovery information.

Only public production addresses, public governance objects, public contract addresses, public route destinations, public checksums, public approval references, commit IDs, evidence file names, and non-secret operational confirmations may be documented.

## Required response source

A valid source-of-truth response must come from an approved source of truth.

Approved response sources may include:

- Final governance approval record.
- Final emergency authority approval record.
- Final treasury approval record.
- Final operator approval record.
- Final mint authority approval record.
- Final metadata authority approval record.
- Final ShieldRegistry authority approval record.
- Final VaultRegistry authority approval record.
- Final YieldPool approval record.
- Final founder custody approval record.
- Final rescue destination approval record.
- Final deployment funding approval record.
- Final bootstrap operator approval or removal record.
- Final treasury route approval record.
- Final route destination approval record.
- Final fee or BPS recipient approval record.
- Final checksum review receipt.
- Final address template update receipt.
- Final operator handoff update receipt.
- Final role treasury operator matrix update receipt.
- Final manual review receipt.

Unapproved response sources must be rejected.

## Rejection rule

Reject a source-of-truth response if any of the following are true:

- It includes a private key.
- It includes a seed phrase.
- It includes an API key.
- It includes a deployer key.
- It includes a wallet secret.
- It includes a recovery phrase.
- It includes signing material.
- It includes a private RPC credential.
- It includes a keystore password.
- It includes hardware wallet recovery information.
- It relies only on a screenshot.
- It relies only on chat text.
- It relies only on memory.
- It relies only on guesswork.
- It contains a placeholder address.
- It contains a zero address without explicit approved reason.
- It contains a local mock address.
- It contains an Anvil address.
- It contains a Base Sepolia address presented as production.
- It contains a test-only address presented as production.
- It contains a contract address without source verification or bytecode evidence.
- It contains a multisig address without threshold or custody evidence.
- It contains a route destination without treasury approval evidence.
- It contains an operator address without operator permission evidence.
- It conflicts with the role, treasury, or operator matrix.
- It conflicts with the operator handoff checklist.
- It conflicts with the final production address collection package.
- It conflicts with the final owner address template.
- It conflicts with the source-of-truth request packet.
- It cannot be traced to an approved source of truth.
- It cannot be reviewed without secret material.

## Required response fields

Every reviewed response row must include:

- Response ID.
- Response date.
- Source-of-truth request packet reference.
- Source-of-truth request packet commit.
- Responding authority.
- Responding controller or responsible party.
- Owner category.
- Role, route, treasury destination, operator authority, or config field affected.
- Final public production address or public governance object.
- Address checksum.
- Chain or network context.
- Custody type.
- Signer threshold, where applicable.
- Signer or controller separation statement, where applicable.
- Approval evidence reference.
- Intended deployment config field, contract role, or route mapping.
- Local mock exclusion confirmation.
- Anvil exclusion confirmation.
- Base Sepolia exclusion confirmation.
- Test-only value exclusion confirmation.
- Secret exclusion confirmation.
- Manual review receipt.
- Reviewer.
- Status.
- Rejection reason, if rejected.
- Follow-up requirement, if incomplete.

Any response row missing required fields remains OPEN.

Any response row marked OPEN keeps mainnet deployment blocked.

## Required production address categories

| Category | Required source | Review status |
| --- | --- | --- |
| Governance multisig or governance object | Final governance approval record | OPEN |
| Emergency multisig or emergency authority | Final emergency authority approval record | OPEN |
| Treasury multisig | Final treasury approval record | OPEN |
| Operator multisig | Final operator approval record | OPEN |
| Mint authority | Final mint authority approval record | OPEN |
| Metadata operator | Final metadata authority approval record | OPEN |
| Vetting operator | Final ShieldRegistry authority approval record | OPEN |
| Credential operator | Final VaultRegistry authority approval record | OPEN |
| Claim operator | Final YieldPool claim approval record | OPEN |
| Founder receipt wallet or governance object | Final founder custody approval record | OPEN |
| Rescue destination | Final emergency and treasury approval record | OPEN |
| Deployment funding wallet | Final deployment funding approval record | OPEN |
| Bootstrap operator wallet | Temporary deployment-only approval or removal record | OPEN |
| TreasuryRouter route destinations | Final treasury route approval record | OPEN |
| Fee or BPS recipient controls | Governance and treasury approval record | OPEN |

## Contract role response review

| Contract or module | Role or authority | Required response evidence | Status |
| --- | --- | --- | --- |
| CFTv2 | DEFAULT_ADMIN_ROLE | Governance owner approval and final public address | OPEN |
| CFTv2 | PAUSER_ROLE | Emergency authority approval and final public address | OPEN |
| CFTv2 | MINTER_ROLE | Mint authority approval and final public address | OPEN |
| NSTSBT | DEFAULT_ADMIN_ROLE | Governance owner approval and final public address | OPEN |
| NSTSBT | PAUSER_ROLE | Emergency authority approval and final public address | OPEN |
| NSTSBT | MINT_MANAGER_ROLE | Mint manager approval and final public address | OPEN |
| NSTSBT | METADATA_MANAGER_ROLE | Metadata manager approval and final public address | OPEN |
| NSTSBT | TREASURY_MANAGER_ROLE | Treasury manager approval and final public address | OPEN |
| NSTSBT | SWAP_OPERATOR_ROLE | Swap operator approval and final public address | OPEN |
| TreasuryRouter | Route authority | Treasury route authority approval and final public address | OPEN |
| TreasuryRouter | Route operator | Treasury route operations approval and final public address | OPEN |
| TreasuryRouter | Asset manager | Asset control approval and final public address | OPEN |
| ShieldRegistry | Vetting authority | Vetting or ban authority approval and final public address | OPEN |
| VaultRegistry | Credential authority | Credential issuance authority approval and final public address | OPEN |
| YieldPool | Claim authority | Claim and yield operations approval and final public address | OPEN |
| RewardEscrow | Grant authority | Grant creation authority approval and final public address | OPEN |

## Treasury route response review

| Route or destination | Required source | Review status |
| --- | --- | --- |
| Founder payout wallet or governance object | Founder custody approval | OPEN |
| Yield pool receiver | Treasury approval | OPEN |
| CFT treasury destination | Treasury approval | OPEN |
| Fee or BPS recipient controls | Governance and treasury approval | OPEN |
| Rescue destination | Emergency and treasury approval | OPEN |
| TreasuryRouter route destinations | Treasury route approval | OPEN |

## Phase A: source response intake

| Check | Evidence required | Status |
| --- | --- | --- |
| Response received from approved source | Source receipt | OPEN |
| Response maps to request packet | Request packet reference | OPEN |
| Response includes public production values only | Manual review receipt | OPEN |
| Response excludes private keys | Secret exclusion receipt | OPEN |
| Response excludes seed phrases | Secret exclusion receipt | OPEN |
| Response excludes API keys | Secret exclusion receipt | OPEN |
| Response excludes deployer keys | Secret exclusion receipt | OPEN |
| Response excludes wallet secrets | Secret exclusion receipt | OPEN |
| Response excludes recovery phrases | Secret exclusion receipt | OPEN |
| Response excludes private RPC credentials | Secret exclusion receipt | OPEN |
| Response excludes screenshots as final evidence | Manual review receipt | OPEN |
| Response excludes chat text as final evidence | Manual review receipt | OPEN |
| Response excludes memory as final evidence | Manual review receipt | OPEN |
| Response excludes placeholder values | Manual review receipt | OPEN |

## Phase B: address format review

| Check | Evidence required | Status |
| --- | --- | --- |
| Every address is public | Address review receipt | OPEN |
| Every address has checksum review | Checksum receipt | OPEN |
| No zero address is used unless explicitly approved | Manual review receipt | OPEN |
| No local mock address is used | Grep and manual review receipt | OPEN |
| No Anvil address is used | Grep and manual review receipt | OPEN |
| No Base Sepolia test-only address is used as production | Grep and manual review receipt | OPEN |
| No placeholder address remains | Grep and manual review receipt | OPEN |
| Every public contract address has bytecode evidence | Cast code or explorer receipt | OPEN |
| Every public contract address has source or explorer evidence | Explorer receipt | OPEN |
| Every externally owned account is categorized and justified | Manual review receipt | OPEN |

## Phase C: role mapping review

| Check | Evidence required | Status |
| --- | --- | --- |
| Governance owner maps to DEFAULT_ADMIN_ROLE | Matrix receipt | OPEN |
| Emergency owner maps to PAUSER_ROLE | Matrix receipt | OPEN |
| Mint authority maps to MINTER_ROLE or MINT_MANAGER_ROLE | Matrix receipt | OPEN |
| Metadata authority maps to METADATA_MANAGER_ROLE | Matrix receipt | OPEN |
| Treasury authority maps to TREASURY_MANAGER_ROLE | Matrix receipt | OPEN |
| Swap authority maps to SWAP_OPERATOR_ROLE | Matrix receipt | OPEN |
| Registry authority maps to approved registry owner | Matrix receipt | OPEN |
| Credential authority maps to approved credential owner | Matrix receipt | OPEN |
| Claim authority maps to approved claim owner | Matrix receipt | OPEN |
| Grant authority maps to approved grant owner | Matrix receipt | OPEN |
| Bootstrap operator is removed or explicitly temporary | Handoff receipt | OPEN |
| Routine operators cannot move treasury funds where avoidable | Separation review receipt | OPEN |
| Emergency authorities are separate from routine operators where practical | Separation review receipt | OPEN |

## Phase D: treasury route review

| Check | Evidence required | Status |
| --- | --- | --- |
| Founder payout destination reviewed | Treasury approval receipt | OPEN |
| Yield pool receiver reviewed | Treasury approval receipt | OPEN |
| CFT treasury destination reviewed | Treasury approval receipt | OPEN |
| TreasuryRouter route destinations reviewed | Treasury route approval receipt | OPEN |
| Rescue destination reviewed | Emergency and treasury approval receipt | OPEN |
| Fee or BPS recipient controls reviewed | Governance and treasury approval receipt | OPEN |
| No routine operator controls treasury movement without approval | Manual review receipt | OPEN |

## Phase E: update package review

| Check | Evidence required | Status |
| --- | --- | --- |
| Final address intake package updated from reviewed response | Package update receipt | OPEN |
| Final owner address template updated from reviewed response | Template update receipt | OPEN |
| Final role treasury operator matrix updated from reviewed response | Matrix update receipt | OPEN |
| Final operator handoff checklist updated from reviewed response | Handoff update receipt | OPEN |
| Final deployment config review checklist references reviewed response | Checklist update receipt | OPEN |
| Final read-only verification checklist references reviewed response | Checklist update receipt | OPEN |
| Final release evidence bundle checklist references reviewed response | Checklist update receipt | OPEN |
| Final acceptance gate references reviewed response | Checklist update receipt | OPEN |
| Mainnet readiness blocker register updated | Blocker update receipt | OPEN |

## Phase F: post-review confirmation

| Check | Evidence required | Status |
| --- | --- | --- |
| No source code changed during response review | Git diff receipt | OPEN |
| No deployment scripts changed during response review | Git diff receipt | OPEN |
| No release scripts changed during response review | Git diff receipt | OPEN |
| No Foundry config changed during response review | Git diff receipt | OPEN |
| No private material entered repository | Grep receipt | OPEN |
| Review result committed | Commit receipt | OPEN |
| Review result pushed | Push receipt | OPEN |
| Review result remotely confirmed | Remote HEAD receipt | OPEN |
| Working tree clean after review | Git status receipt | OPEN |

## Allowed review outputs

A response review may produce:

- Rejection receipt.
- Clarification request.
- Partial acceptance receipt.
- Final acceptance receipt.
- Final address package update receipt.
- Final owner template update receipt.
- Final role matrix update receipt.
- Final treasury route update receipt.
- Final operator handoff update receipt.
- Final blocker register update receipt.

A response review must not produce:

- Deployment command.
- Broadcast command.
- Signed transaction.
- Private key.
- Seed phrase.
- Deployer key.
- Wallet secret.
- Recovery phrase.
- Private RPC credential.
- Mock production address.
- Anvil production address.
- Placeholder production address.

## No-go conditions

Do not proceed toward mainnet deployment if any of the following are true:

- Any production owner address remains TBD.
- Any governance object remains TBD.
- Any emergency authority remains TBD.
- Any treasury destination remains TBD.
- Any operator assignment remains TBD.
- Any role owner remains TBD.
- Any route destination remains TBD.
- Any reviewed response is missing approval evidence.
- Any response includes private material.
- Any response relies on screenshots as final evidence.
- Any response relies on chat text as final evidence.
- Any response relies on memory as final evidence.
- Any response relies on placeholder values.
- Any response relies on local values.
- Any response relies on Anvil values.
- Any response relies on Base Sepolia values as production.
- Any response conflicts with the role, treasury, or operator matrix.
- Any response conflicts with the operator handoff checklist.
- Any response conflicts with the final production address collection package.
- Any response conflicts with the final production address approval receipt template.
- Any final deployment config field remains unresolved.
- Any final read-only verification command is missing.
- Any final release evidence receipt is missing.
- Any final human approval receipt is missing.

## Acceptance rule for this checklist

This checklist is complete only when:

- The response review process is documented.
- The rejection rule is documented.
- The required fields are documented.
- The role mapping review is documented.
- The treasury route review is documented.
- The update package review is documented.
- The no-go conditions are documented.
- No source code has been changed.
- No deployment script has been changed.
- No release script has been changed.
- No Foundry config has been changed.
- The checklist is committed and pushed to the v0.5.2 phase branch.
- Mainnet deployment remains blocked.

## Current status

- Source-of-truth response review checklist created.
- This is a docs-only readiness artifact.
- No source code has been changed.
- No Foundry config has been changed.
- No deployment script has been changed.
- No release script has been changed.
- No production address has been approved by this checklist.
- No mainnet deployment has been authorized.
- Next task: commit this checklist, then reference it in the readiness gates.
