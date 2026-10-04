# NST Core v0.5.2 Base Sepolia Deployment Inventory and Public Interface Decision Record

Status: DRAFT DECISION RECORD  
Phase: v0.5.2 mainnet readiness  
Branch: phase/v0.5.2-mainnet-readiness  
Created UTC: 2026-10-04T11:48:27Z  
Current commit at creation: ab373042e6db51211cac7e463c46af8958ea76bd

This document is not a deployment authorization.

No mainnet deployment is authorized by this document.

This document does not approve any public production interface.

This document does not approve any production address, treasury destination, operator, governance object, legal claim, or public mint campaign.

## Purpose

This record defines the safe next step for understanding what is deployed on Base Sepolia and whether the public should be allowed to interact with the deployed testnet system.

The goal is to prevent public interface work from being built from memory, screenshots, chat text, assumptions, placeholder addresses, local Anvil values, or incomplete deployment records.

## Current observed state

The project has a prior v0.5.1 Base Sepolia live release history.

The exact currently deployed Base Sepolia contracts, addresses, verification status, ABI sources, deployed commit, role owners, registry settings, treasury routes, and public safety status must be inventoried from repository evidence before any public interface is promoted.

## Local repository scan receipt

Scan created UTC: 2026-10-04T11:48:27Z

Base Sepolia keyword hits: 170

Unique address-like strings found in scanned roots: 4496

Candidate deployment or verification files found: 10

Base Sepolia keyword receipt:

```text
/mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-base-sepolia-keyword-hits-20261004T114831Z.txt
```

Unique address-like strings receipt:

```text
/mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-address-like-hits-20261004T114831Z.txt
```

Candidate deployment file receipt:

```text
/mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-base-sepolia-candidate-files-20261004T114831Z.txt
```

## Public interface decision

Do not launch a broad public write interface yet.

The current safe public-facing path is:

1. Public informational landing page only.
2. Corporate informational landing page only.
3. Optional read-only Base Sepolia status page after the deployment inventory is confirmed.
4. Optional controlled testnet demo only after every Base Sepolia contract address, ABI, verification source, chain ID, warning label, and user-safety notice is reviewed.
5. No mainnet implication.
6. No real-value representation.
7. No public mainnet mint language.
8. No production treasury routing claim.
9. No First Nations legal or revenue-sharing claim until reviewed by qualified counsel.
10. No wallet-connected public testnet flow until the deployed-contract inventory is complete.

## Base Sepolia interface rule

A Base Sepolia interface may be considered only if it is clearly labelled:

- Testnet only.
- No real funds.
- No investment product.
- No mainnet deployment.
- No production claim.
- No legal entitlement claim.
- No First Nations revenue claim unless legal language has been approved.
- No custody or private-key handling by the interface.
- No request for seed phrases, private keys, wallet secrets, deployer keys, recovery phrases, API keys, or private RPC credentials.

## Required inventory before public testnet interaction

Before the public interacts with any deployed Base Sepolia system, the project must produce a confirmed inventory containing:

- Network name.
- Chain ID.
- RPC target category.
- Deployment commit.
- Deployed contract names.
- Deployed contract addresses.
- Deployment transaction hashes.
- Explorer verification links or source verification receipts.
- ABI source path.
- Constructor arguments or documented verification receipt.
- Current admin or owner role state.
- Mint state.
- Pause state.
- Registry settings.
- Treasury route settings.
- Yield pool settings.
- Emergency controls.
- Any test-only role or local mock exclusion.
- Public interface warning language.
- Read-only verification commands.
- Manual review receipt.
- Final human approval receipt for public testnet exposure.

## First Nations legal track

The First Nations legal language should be treated as a separate governance and legal workstream.

A Treaty-law lawyer may be an excellent contributor for:

- First Nations participation language.
- Treaty-sensitive governance language.
- Revenue-sharing language.
- Authority and representative capacity language.
- Legal disclaimers.
- Public-facing claims review.
- Possible future multisig/key-holder consideration.

No key-holder role should be assigned until there is:

- A key-holder policy.
- Conflict review.
- Custody expectation.
- Signing threshold plan.
- Replacement and emergency procedure.
- Governance approval record.
- Written acceptance.
- Final human approval receipt.

## Transaction rail status

The end-to-end NST Lattice transaction rail is not yet built.

The transaction rail should be treated as a future product layer above the core contracts and governance controls.

Required future rail components include:

- Public landing page.
- Corporate landing page.
- Wallet connection interface.
- Testnet onboarding flow.
- NST mint or membership flow, where approved.
- CFT utility flow, where approved.
- Treasury routing visibility.
- First Nations governance/revenue information surface, after legal review.
- User dashboard.
- Corporate dashboard.
- Read-only explorer/status page.
- Indexing layer.
- Event monitoring.
- Failure and pause status display.
- Support and incident response pathway.
- Public documentation.
- Legal terms and privacy policy.
- Mainnet launch controls.

## Current recommendation

Build the public and corporate landing pages before building a wallet-connected transaction interface.

Build the Base Sepolia deployment inventory before inviting the public to interact with the testnet contracts.

Build the First Nations legal workstream before making public claims about Treaty, First Nations participation, revenue allocation, governance authority, or multisig authority.

Build the transaction rail only after the deployment inventory, address approval package, governance/key-holder policy, and public interface safety rules are complete.

## No-go conditions

Do not open a public wallet-connected interface if any of the following are true:

- Base Sepolia deployed contract addresses are not confirmed.
- Explorer/source verification is missing.
- ABI source is missing.
- Deployment transaction evidence is missing.
- Contract role state is unknown.
- Mint state is unknown.
- Pause state is unknown.
- Treasury route state is unknown.
- Yield route state is unknown.
- Registry state is unknown.
- Public warning language is missing.
- Testnet-only disclaimer is missing.
- Any private key, seed phrase, API key, deployer key, wallet secret, recovery phrase, signing material, private RPC credential, keystore password, or hardware wallet recovery information appears in public docs or interface config.
- The interface implies mainnet deployment.
- The interface implies real-world value.
- The interface implies legal entitlement before legal review.
- The interface implies First Nations approval before legal review.
- Final human approval is missing.

## Current status

- Base Sepolia inventory decision record created.
- No source code changed.
- No deployment script changed.
- No Foundry config changed.
- No release script changed.
- No mainnet deployment authorized.
- Public broad write interface remains blocked.
- Next safe task: review the scan receipts and create a confirmed Base Sepolia deployment inventory from repository evidence only.

## Base Sepolia keyword hit excerpt

```text
docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md:98:- Final deployment configuration contains no Base Sepolia values unless explicitly limited and approved.
docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md:229:- Any Base Sepolia address is used as a production address without explicit written limitation and final approval.
docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md:296:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md:316:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md:326:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md:347:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md:365:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md:37:This template exists so final production address approval cannot be implied from screenshots, chat text, memory, local mocks, Anvil addresses, Base Sepolia test-only addresses, placeholder values, passing tests, passing builds, or incomplete address drafts.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md:71:Do not use memory, screenshots, chat text, guesswork, mock addresses, local addresses, Anvil addresses, Base Sepolia test-only addresses, or placeholder addresses as final production values.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md:96:- No Base Sepolia test-only address is used as a production address unless explicitly limited and approved.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md:192:| No Base Sepolia test-only address is used as production | Grep and manual review receipt | OPEN |
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md:313:- Any Base Sepolia test-only address is used as production without explicit written limitation and final approval.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md:345:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_APPROVAL_RECEIPT_TEMPLATE.md:363:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md:118:- It is a Base Sepolia address presented as production without explicit written limitation and final approval.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md:219:- Base Sepolia exclusion confirmation.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md:233:| 5 | Confirm address is not a Base Sepolia address unless explicitly limited and approved | OPEN |
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md:308:- No local, mock, Anvil, Base Sepolia, test-only, screenshot, chat, memory, or placeholder value is presented as a final production value.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md:346:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md:356:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md:377:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md:395:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md:75:Do not use Base Sepolia addresses as production address evidence unless the address is explicitly approved in writing for a limited production role and the limitation is recorded.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md:118:- Local, mock, Anvil, Base Sepolia, test-only, and placeholder exclusion confirmation.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md:185:| Row ID | Category | Intended use | Final public address or governance object | Chain or network | Custody type | Signer threshold | Controller or responsible party | Approval evidence reference | Checksum confirmed | Non-secret confirmed | Local or mock excluded | Anvil excluded | Base Sepolia excluded or explicitly limited | Placeholder excluded | Reviewer | Status |
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md:218:| Address is not Base Sepolia unless explicitly limited and approved | Base Sepolia exclusion or limitation receipt | OPEN |
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md:229:4. Reject any row that uses local, mock, Anvil, Base Sepolia, test-only, screenshot, chat-text, guessed, or placeholder values as production values.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md:249:- Any address row is local, mock, Anvil, Base Sepolia, or test-only without explicit written limitation and approval.
docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md:284:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md:65:- It is a Base Sepolia or test-only address presented as production without explicit written limitation.
docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md:146:| 4 | Confirm address is not a Base Sepolia test-only address unless explicitly limited | OPEN |
docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md:206:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md:226:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PACKAGE.md:236:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/audits/V0_5_2_MAINNET_ADDRESS_INTAKE_PROCESS.md:69:| 4 | Confirm address is not a Base Sepolia test-only address unless explicitly approved for testing only | OPEN |
docs/audits/V0_5_2_MAINNET_OWNER_ADDRESS_TEMPLATE.md:136:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md:138:Do not use memory, screenshots, chat text, guesswork, mock addresses, Anvil addresses, local addresses, Base Sepolia test-only addresses, or placeholder addresses as final production values.
docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md:196:Do not use mock, local, Base Sepolia, Anvil, screenshot, chat, or placeholder addresses as production values.
docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md:232:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md:252:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md:262:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md:283:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md:301:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:20:- v0.5.1 Base Sepolia live deployment completed.
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2839:docs/releases/v0.5.1-base-sepolia-live.md:10:- CFT=0xd8ca133624850dd9e2f19a35606527e7d80c79d4
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2840:docs/releases/v0.5.1-base-sepolia-live.md:11:- NST=0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2841:docs/releases/v0.5.1-base-sepolia-live.md:12:- REFERRAL=0x9d3f9dc182ef22da7521234e13b0d34220f00a7b
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2842:docs/releases/v0.5.1-base-sepolia-live.md:13:- REWARDESCROW=0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2843:docs/releases/v0.5.1-base-sepolia-live.md:14:- ROUTER=0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2844:docs/releases/v0.5.1-base-sepolia-live.md:15:- SHIELD=0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2845:docs/releases/v0.5.1-base-sepolia-live.md:16:- TREASURYROUTER=0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2846:docs/releases/v0.5.1-base-sepolia-live.md:17:- VAULTREGISTRY=0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2847:docs/releases/v0.5.1-base-sepolia-live.md:18:- YIELDPOOL=0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2988:docs/phase/v0.5.2-mainnet-readiness.md:10:Prepare NST Core for mainnet-grade operation after the successful Base Sepolia v0.5.1 live release.
docs/audits/V0_5_2_ROLE_TREASURY_OPERATOR_AUDIT.md:2995:docs/status/V0_5_2_MAINNET_READINESS_STATUS.md:10:Prepare NST Core for mainnet-grade operation after the successful Base Sepolia v0.5.1 live release.
docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md:40:| v0.5.1 Base Sepolia release | Complete, tagged, verified, published | COMPLETE |
docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md:131:| No Base Sepolia test-only addresses remain unless explicitly limited | grep receipt | OPEN |
docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md:209:- Any mock, local, Base Sepolia, or test-only address is used as a production address without explicit limitation.
docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md:467:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md:487:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md:497:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md:518:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md:536:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md:34:This checklist exists to prevent production owner addresses from being accepted from memory, screenshots, chat text, guesses, mock values, local values, Anvil values, Base Sepolia values, placeholder values, or unapproved operator convenience.
docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md:148:- It contains a Base Sepolia address presented as production.
docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md:184:- Base Sepolia exclusion confirmation.
docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md:277:| No Base Sepolia test-only address is used as production | Grep and manual review receipt | OPEN |
docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md:390:- Any response relies on Base Sepolia values as production.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md:80:| No Base Sepolia test-only addresses remain unless explicitly limited | Grep receipt | OPEN |
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md:378:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md:398:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md:408:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md:429:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md:447:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:53:The final deployment configuration must not be created from memory, screenshots, chat text, guesswork, mock values, local values, Base Sepolia values, or temporary placeholders.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:96:- No local, mock, Base Sepolia, or test-only address is used as a production address without explicit written limitation and final approval.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:169:| No Base Sepolia address is used as production without limitation | grep and manual review receipt | OPEN |
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:214:| Final deployment config contains no Base Sepolia production values unless limited | grep receipt | OPEN |
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:254:- Any local, mock, Base Sepolia, or test-only value is used as a production value without explicit written limitation.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:274:- Final grep receipt proving no unapproved local, mock, Base Sepolia, or test-only production values.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:424:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:444:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:454:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:475:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md:493:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md:221:| No Base Sepolia address appears unless explicitly limited | grep and manual review receipt | OPEN |
docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md:325:- Any command uses Base Sepolia values as production values without explicit written limitation and final approval.
docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md:467:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md:487:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md:497:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md:518:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md:536:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md:216:| No Base Sepolia address is presented as production unless explicitly limited | Grep and review receipt | OPEN |
docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md:422:Do not use screenshots, chat text, mock values, local values, Anvil values, Base Sepolia test-only values, or placeholder addresses as final production values.
docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md:442:Any TBD, placeholder, mock, local, Anvil, Base Sepolia test-only, screenshot-derived, chat-derived, or unapproved address value remains a NO-GO.
docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md:452:- Confirmation that no local, mock, Anvil, Base Sepolia test-only, placeholder, screenshot-derived, or chat-derived values are being used as production values.
docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md:473:Do not use memory, screenshots, chat text, guesses, placeholder addresses, local addresses, Anvil addresses, mock addresses, Base Sepolia test-only addresses, private keys, seed phrases, API keys, deployer keys, wallet secrets, recovery phrases, signing material, private RPC credentials, keystore passwords, or hardware wallet recovery information as production address evidence.
docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md:491:The response review must confirm that every production address comes only from an approved source of truth, has required approval evidence, is checksum reviewed, is not a local mock address, is not an Anvil address, is not a placeholder address, and is not a Base Sepolia or test-only address unless explicitly limited and approved.
docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md:30:- No mock, local, Base Sepolia, or test-only address may be treated as a production mainnet address without explicit written limitation.
docs/checklists/V0_5_2_MAINNET_ROLLBACK_CHECKLIST.md:72:- Any deployment script contains a local mock address, Base Sepolia address, or test-only address for production without explicit limitation.
docs/NST_LATTICE_IMPLEMENTATION_MATRIX.md:31:| Base Sepolia env template | .env.base-sepolia.example | Built | Safe | Private env stays outside repo |
docs/NST_LATTICE_IMPLEMENTATION_MATRIX.md:56:| 20 | Base Sepolia deployment | Deferred | deployment scripts | testnet smoke | Later |
docs/NST_LATTICE_IMPLEMENTATION_MATRIX.md:62:Base Sepolia funding and deployment are intentionally deferred until the local system is more complete, seamless, and institutionally tested.
docs/NST_LATTICE_MASTER_SPEC.md:506:The ShieldRegistry milestone is no longer the next file to build. ShieldRegistry was completed and included in the v0.5.1 Base Sepolia live release.
docs/NST_LATTICE_MASTER_SPEC.md:522:# NST Core Base Sepolia Release v0.5.1-base-sepolia-live
docs/NST_LATTICE_MASTER_SPEC.md:526:Chain: Base Sepolia 84532
docs/NST_LATTICE_MASTER_SPEC.md:527:Git tag: v0.5.1-base-sepolia-live
docs/NST_LATTICE_MASTER_SPEC.md:561:- nst-core-base-sepolia-LIVE-broadcast-20260831T090425Z.log
docs/NST_LATTICE_MASTER_SPEC.md:562:- nst-core-base-sepolia-basescan-source-verification-final-20260902T085804Z.txt
docs/NST_LATTICE_MASTER_SPEC.md:563:- nst-core-base-sepolia-cft-bytecode-correction-20260831T101044Z.txt
docs/NST_LATTICE_MASTER_SPEC.md:564:- nst-core-base-sepolia-final-release-tag-20260902T090457Z.txt
docs/NST_LATTICE_MASTER_SPEC.md:565:- nst-core-base-sepolia-post-deploy-readonly-smoke-20260831T222109Z.txt
docs/NST_LATTICE_MASTER_SPEC.md:566:- nst-core-base-sepolia-release-tag-remote-audit-20260902T091115Z.txt
docs/phase/v0.5.2-mainnet-readiness.md:4:Base release: v0.5.1-base-sepolia-live
docs/phase/v0.5.2-mainnet-readiness.md:10:Prepare NST Core for mainnet-grade operation after the successful Base Sepolia v0.5.1 live release.
docs/phase/v0.5.2-mainnet-readiness.md:13:- Base Sepolia live deployment completed.
docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md:159:No mock, local, Base Sepolia, or test-only address may be used as a production address without explicit written limitation and final approval.
docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md:169:- It does not contain Base Sepolia test-only addresses unless explicitly limited.
docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md:223:- Any mock, local, Base Sepolia, or test-only address is used as a production address without explicit limitation.
docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md:307:Before any future deployment candidate can be prepared, the deployment config review checklist must confirm that the final deployment configuration uses approved public production addresses only, contains no secrets, contains no local mock values, contains no unauthorized Base Sepolia values, matches the final owner address template, matches the role and treasury matrices, and has checksum, manual review, and read-only verification receipts.
```

## Unique address-like string excerpt

```text
1000:0x420acf02ff0b8557021e34ff70cc43a4c4926889
1002:0x2f2ff15d00000000000000000000000000000000
1003:0x8a791620dd6260079bf849dc5567adc3f2fdc318
1006:0x0000000000000000000000000000000000000000
1007:0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
1010:0x63ee28336a4efd3e337a49bce4c99589ba3fb66c
1010:0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
1011:0x8a791620dd6260079bf849dc5567adc3f2fdc318
1013:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
1014:0xd547741f00000000000000000000000000000000
1016:0x65d7a28e3265b37a6474929f336521b332c1681b
1017:0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC
1020:0x3b81f369a25a4a2a41dadf68aebb44206d908db0
1021:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
1022:0x4915a339439183d8f2c040e56c7310f17c3102ba
1024:0x2f2ff15d65d7a28e3265b37a6474929f336521b3
1025:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
1028:0x0000000000000000000000000000000000000000
1029:0x70997970C51812dc3A010C7d01b50e0d17dc79C8
102:0x90F79bf6EB2c4f870365E785982E1f101E93b906
1032:0xea737b9211d831676c5fd044d867f3adc7ec75f5
1032:0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
1033:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
1035:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
1036:0x2f2ff15d00000000000000000000000000000000
1038:0xbbfb55d933c2bfa638763473275b1d84c4418e58
1039:0x14dC79964da2C08b23698B3D3cc7Ca32193d9955
103:0xe4874dc70032d8ea9c58f61b6942350347ffd0b3
1042:0x3b81f369a25a4a2a41dadf68aebb44206d908db0
1043:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
1044:0x2200e06be1b493cbc9f568f22a841ba846bead38
1046:0x2f2ff15dbbfb55d933c2bfa638763473275b1d84
1047:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
1050:0x65d7a28e3265b37a6474929f336521b332c1681b
1051:0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC
1054:0x6ebc066c96e81b67b92b2e428ffded6c6b36cec6
1054:0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
1055:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
1057:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
1058:0x2f2ff15d65d7a28e3265b37a6474929f336521b3
105:0x25823337b2857ea143c2faa955c9db28c54e9c88
105:0x394e5e1fa9aaab83c164c78d5a3e1c0fa61a2478
105:0x44bc25c39ccbc05c6afcbd09cbb5d5c0845ff4fa
105:0x62d42819dca354d6c688847a3a6893e95ff0f22b
105:0x9cc65f4fb56ede7c29a9ee1f8b27f844d28a4ec7
105:0xb4f1cf299983f0e377ce204adfa93decfea46698
105:0xf4699ec33753af3bfa348feabe5881b1a9e379bb
105:0xfc314a6fde1955aff2ab9b0528f5dfd207a7aff3
1060:0x65d7a28e3265b37a6474929f336521b332c1681b
1061:0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0
1064:0x3b81f369a25a4a2a41dadf68aebb44206d908db0
1065:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
1066:0xc674b68eb8b639e3662755cad99fa99f89821420
1068:0xd547741f65d7a28e3265b37a6474929f336521b3
1069:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
106:0xee9e20b753134e59036ddc8dfa3d15d9be0dda9b
106:0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
1072:0xbbfb55d933c2bfa638763473275b1d84c4418e58
1073:0x14dC79964da2C08b23698B3D3cc7Ca32193d9955
1076:0x14cf8854c81a9b4e8a667a4e34d8fb35568209f2
1076:0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
1077:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
1079:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
107:0x9fe46736679d2d9a65f0992f2272de9f3c7fa6e0
1080:0x2f2ff15dbbfb55d933c2bfa638763473275b1d84
1082:0xbbfb55d933c2bfa638763473275b1d84c4418e58
1083:0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0
1086:0x3b81f369a25a4a2a41dadf68aebb44206d908db0
1087:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
1088:0x955b1f83caec5b90dbc6eee8af9ce4599fb99a96
108:0x09635f643e140090a9a8dcd712ed6285858cebef
108:0x2fc631e4b3018258759c52af169200213e84abab
108:0x4cedf6104ba9ee94465add7452adc6f093660c3c
108:0x59f2f1fcfe2474fd5f0b9ba1e73ca90b143eb8d0
108:0x5fc8d32690cc91d4c39d9d3abcbd16989f875707
108:0xa51c1fc2f0d1a1b8494ed1fe312d7c3a78ed91c0
1090:0xd547741fbbfb55d933c2bfa638763473275b1d84
1091:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
1094:0xaa281724df8796c05531061ce14f56e5f1d6bed4
1095:0x14dC79964da2C08b23698B3D3cc7Ca32193d9955
1098:0x3e8b26ad2827fd545a3c107fb3918e874ca46acd
1098:0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
1099:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
109:0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0
10:0x0dcd1bf9a1b36ce34237eeafef220932846bcd82
10:0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0
10:0x70997970C51812dc3A010C7d01b50e0d17dc79C8
10:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
10:0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
1101:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
1102:0x2f2ff15daa281724df8796c05531061ce14f56e5
1104:0x0000000000000000000000000000000000000000
1105:0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0
1108:0x3b81f369a25a4a2a41dadf68aebb44206d908db0
1109:0xd8ca133624850dd9e2f19a35606527e7d80c79d4
110:0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0
110:0x6336f3ac00000000000000000000000090f79bf6
1110:0x411405669cd08a9afdb63030164d8c2a642056c6
1112:0xd547741f00000000000000000000000000000000
1113:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
1116:0x65d7a28e3265b37a6474929f336521b332c1681b
1117:0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
111:0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0
111:0x4A679253410272dd5232B3Ff7cF5dbB88f295319
111:0x610178dA211FEF7D417bC0e6FeD39F05609AD788
111:0x712516e61C8B383dF4A63CFe83d7701Bce54B03e
111:0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9
111:0xde2DB49f523C042686B473A912C31e6eDC0E0979
111:0xfbAb4aa40C202E4e80390171E82379824f7372dd
1120:0x798bb3aba78a052f011f8d738c09b7eb2c6b3e30
1120:0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266
1121:0xb7f8bc63bbcad18155201308c8f3540b07f84f5e
1123:0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c
1124:0xd547741f65d7a28e3265b37a6474929f336521b3
1126:0x0000000000000000000000000000000000000000
1127:0x70997970C51812dc3A010C7d01b50e0d17dc79C8
112:0x0D4ff719551E23185Aeb16FFbF2ABEbB90635942
112:0x2279B7A0a67DB372996a5FaB50D91eAA73d2eBe6
112:0x322813Fd9A801c5507c9de605d63CEA4f2CE6c44
112:0x3B81F369A25a4a2a41dadF68AeBB44206D908DB0
```

## Candidate file excerpt

```text
deployments/local-mock-router-84532.json
deployments/nstlattice-core-84532.json
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md
docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md
docs/checklists/V0_5_2_RELEASE_SCRIPT_HARDENING_CHECKLIST.md
docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md
docs/releases/v0.5.1-base-sepolia-live.md
script/DeployLocalMockRouter.s.sol
script/DeployNSTLatticeCore.s.sol
```

## V0.5.2 application infrastructure blueprint reference

Source blueprint: `docs/plans/V0_5_2_APPLICATION_INFRASTRUCTURE_BLUEPRINT.md`

Blueprint commit: `3bc2c6b9b463dd78c7c5de6b58f098f28707083b`

This reference does not authorize deployment.

This reference does not authorize public use of any Base Sepolia or mainnet interface.

This reference does not approve an end-to-end transaction rail, public landing page, corporate landing page, First Nations interface, deployment command, production address, treasury route, operator role, or mainnet release.

The application infrastructure blueprint is now a controlled readiness artifact for the future application/interface layer.

The following workstreams remain blocked until separately built, reviewed, tested, approved, committed, pushed, and paired with evidence receipts:

- public landing page;
- corporate landing page;
- First Nations legal/review interface;
- Base Sepolia public demo boundary;
- wallet connection boundary;
- read-only protocol status interface;
- source-of-truth production address flow;
- end-to-end transaction rail;
- backend/indexer/API layer;
- admin/operator dashboard;
- monitoring and audit log layer;
- release and rollback controls for application infrastructure.

No app, frontend, backend, infrastructure, deployment, or protocol source file is approved by this reference alone.

