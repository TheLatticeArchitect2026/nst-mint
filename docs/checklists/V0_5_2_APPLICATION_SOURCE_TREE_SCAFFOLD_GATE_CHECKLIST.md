# NST Core v0.5.2 Application Source Tree Scaffold Gate Checklist

Status: DRAFT CHECKLIST  
Phase: v0.5.2 mainnet readiness  
Branch: phase/v0.5.2-mainnet-readiness  
Created UTC: 2026-10-04T13:35:42Z  
Current commit at creation: 3bd7e7e3cbb43a0520d0a8a52d3a14797e4088a9  

Application infrastructure blueprint commit: 3bc2c6b9b463dd78c7c5de6b58f098f28707083b  
Public/corporate interface plan commit: 3bd7e7e3cbb43a0520d0a8a52d3a14797e4088a9  
Base Sepolia public interface decision record commit: 3bd7e7e3cbb43a0520d0a8a52d3a14797e4088a9  
Readiness blocker register commit: 3bd7e7e3cbb43a0520d0a8a52d3a14797e4088a9  

Source application infrastructure blueprint: docs/plans/V0_5_2_APPLICATION_INFRASTRUCTURE_BLUEPRINT.md  
Source public/corporate interface and Base Sepolia demo plan: docs/plans/V0_5_2_PUBLIC_CORPORATE_INTERFACE_AND_BASE_SEPOLIA_DEMO_PLAN.md  
Source Base Sepolia decision record: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md  
Source blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md  
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md  
Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md  
Source read-only verification checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md  
Source readiness runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md  

## Purpose

This checklist defines the gate for creating the first controlled application source tree scaffold for NST Core v0.5.2.

This document is not a deployment authorization.

No mainnet deployment is authorized by this checklist.

No Base Sepolia public interface is authorized by this checklist.

No production public interface is authorized by this checklist.

No public mint, corporate onboarding, First Nations interface, payment rail, treasury rail, governance rail, or end-to-end transaction rail is authorized by this checklist.

This checklist only controls whether the repository may begin a non-deploying application scaffold.

## Current controlled state

| Area | Current result | Status |
| --- | --- | --- |
| Protocol contracts | Existing protocol source remains controlled under prior release work | COMPLETE |
| Via-IR build profile | Committed in foundry.toml | COMPLETE |
| Mainnet readiness operating system | Governance, address, approval, blocker, release, verification, and final approval gates created | COMPLETE |
| Application infrastructure blueprint | Created and referenced in readiness gates | COMPLETE |
| Public/corporate interface plan | Created and committed | COMPLETE |
| Base Sepolia public interface decision | Created and committed | COMPLETE |
| Production owner addresses | Still require final approved source-of-truth responses | OPEN |
| Mainnet deployment | Not authorized | BLOCKED |
| Application source tree | Not yet scaffolded | OPEN |
| End-to-end transaction rail | Not yet built | OPEN |
| Public landing page | Not yet built | OPEN |
| Corporate landing page | Not yet built | OPEN |
| First Nations interface | Not yet built and must receive specialized Treaty-law review | OPEN |

## Scaffold authorization boundary

The first application scaffold may create directory structure and non-secret project files only.

Allowed initial scaffold areas:

- apps/public-site/
- apps/corporate-site/
- apps/admin-console/
- apps/base-sepolia-demo/
- apps/first-nations-portal/
- packages/ui/
- packages/config/
- packages/contracts/
- packages/read-only-verification/
- packages/address-registry/
- packages/transaction-rail/
- packages/compliance-copy/
- packages/audit-logging/
- infra/
- docs/app/

The first scaffold may include:

- README.md files;
- placeholder architecture notes;
- non-executing route plans;
- non-secret configuration examples;
- lint/type/test placeholders;
- package boundary notes;
- app-specific no-deployment warnings;
- wallet connection prohibition notes;
- Base Sepolia demo boundary notes;
- First Nations legal review notes;
- corporate intake boundary notes;
- transaction rail design boundary notes.

The first scaffold must not include:

- private keys;
- seed phrases;
- API keys;
- deployer keys;
- wallet secrets;
- recovery phrases;
- private RPC credentials;
- production addresses unless approved by the final source-of-truth process;
- mock/local/Anvil addresses presented as production values;
- Base Sepolia addresses presented as production values;
- mainnet deployment commands;
- broadcast scripts;
- transaction-signing code;
- public mint UI;
- production onboarding UI;
- real payment flows;
- real treasury routing flows;
- real end-to-end transaction rail execution;
- unreviewed First Nations legal language;
- public claims of operational readiness;
- investment solicitation language;
- public release language.

## Required source tree strategy

The scaffold should separate five concerns:

1. Public education and landing page.
2. Corporate participation and intake path.
3. First Nations legal/governance participation path.
4. Read-only protocol/demo interface.
5. Future transaction rail and operational application layer.

The scaffold should not merge these concerns into one uncontrolled frontend.

## Proposed first source tree

```text
apps/
  public-site/
    README.md
  corporate-site/
    README.md
  admin-console/
    README.md
  base-sepolia-demo/
    README.md
  first-nations-portal/
    README.md

packages/
  ui/
    README.md
  config/
    README.md
  contracts/
    README.md
  read-only-verification/
    README.md
  address-registry/
    README.md
  transaction-rail/
    README.md
  compliance-copy/
    README.md
  audit-logging/
    README.md

infra/
  README.md

docs/app/
  README.md
```

## Public-site boundary

The public site may explain:

- NST Lattice purpose;
- NST soul-bound ownership concept;
- protocol status;
- non-deployment status;
- Base Sepolia demo status, if enabled later;
- public education;
- founder vision;
- roadmap;
- disclaimers.

The public site must not:

- claim mainnet readiness before final approval;
- collect private keys;
- collect seed phrases;
- collect wallet recovery information;
- present Base Sepolia as mainnet;
- present test tokens as valuable;
- present any investment solicitation;
- open production minting;
- open production treasury flows.

## Corporate-site boundary

The corporate site may explain:

- corporate participation pathway;
- enterprise integration interest;
- intake process;
- compliance review path;
- legal review path;
- governance status;
- no-deployment status;
- contact path.

The corporate site must not:

- onboard real counterparties into production;
- authorize production use;
- accept funds;
- solicit investment;
- imply operational reliance before mainnet release;
- present draft legal terms as final.

## First Nations portal boundary

The First Nations portal must not be finalized without specialized legal review.

The First Nations lawyer specializing in Treaty law should be considered a critical contributor for:

- Treaty-law language;
- governance framing;
- revenue language;
- rights language;
- consent language;
- community onboarding language;
- legal disclaimers;
- possible multisig/key-holder role design;
- First Nations participation path;
- source-of-truth approval evidence.

The first scaffold may create only a README placeholder for this workstream.

No First Nations-facing claims are approved by the scaffold.

## Base Sepolia demo boundary

A Base Sepolia demo may be considered later only as a controlled testnet interface.

Any Base Sepolia public demo must clearly state:

- testnet only;
- no real funds;
- no mainnet deployment;
- no production reliance;
- no investment solicitation;
- no production ownership claim;
- no production treasury route;
- no production address reliance.

The first scaffold must not launch a public demo.

## End-to-end transaction rail boundary

The transaction rail is not built.

The future transaction rail must be designed separately and reviewed before implementation.

Future transaction rail design must cover:

- wallet connection model;
- identity/member state;
- NST proof-of-membership read path;
- CFT utility-token interaction path;
- treasury route safety;
- role separation;
- operator limits;
- fee/revenue logic;
- receipts;
- failed transaction handling;
- user confirmations;
- audit logging;
- monitoring;
- rollback;
- abuse prevention;
- regulatory/legal review;
- frontend/backend/API boundaries;
- production key custody;
- multisig approvals;
- First Nations governance/revenue path, if applicable.

No transaction rail code is approved by this scaffold gate.

## Phase A: pre-scaffold checks

| Check | Evidence required | Status |
| --- | --- | --- |
| Correct phase branch selected | branch receipt | OPEN |
| Working tree clean before scaffold | git status receipt | OPEN |
| Application infrastructure blueprint committed | commit receipt | COMPLETE |
| Public/corporate interface plan committed | commit receipt | COMPLETE |
| Base Sepolia public interface decision committed | commit receipt | COMPLETE |
| Blocker register committed | commit receipt | COMPLETE |
| No production address reliance | review receipt | OPEN |
| No deployment authorization implied | review receipt | OPEN |
| No app files created before scaffold gate | git status receipt | OPEN |

## Phase B: scaffold creation gate

| Check | Evidence required | Status |
| --- | --- | --- |
| Only approved scaffold directories created | tree receipt | OPEN |
| Only README.md and non-secret placeholder files created | diff receipt | OPEN |
| No source code with runtime behavior added | diff receipt | OPEN |
| No wallet connection code added | grep receipt | OPEN |
| No transaction-signing code added | grep receipt | OPEN |
| No deployment script added | grep receipt | OPEN |
| No private material added | grep receipt | OPEN |
| No Base Sepolia value presented as production | grep/manual receipt | OPEN |
| No mainnet value presented as production without source-of-truth evidence | grep/manual receipt | OPEN |

## Phase C: package boundary gate

| Package or app | Initial allowed content | Status |
| --- | --- | --- |
| apps/public-site | README only | OPEN |
| apps/corporate-site | README only | OPEN |
| apps/admin-console | README only | OPEN |
| apps/base-sepolia-demo | README only | OPEN |
| apps/first-nations-portal | README only | OPEN |
| packages/ui | README only | OPEN |
| packages/config | README only | OPEN |
| packages/contracts | README only | OPEN |
| packages/read-only-verification | README only | OPEN |
| packages/address-registry | README only | OPEN |
| packages/transaction-rail | README only | OPEN |
| packages/compliance-copy | README only | OPEN |
| packages/audit-logging | README only | OPEN |
| infra | README only | OPEN |
| docs/app | README only | OPEN |

## Phase D: post-scaffold verification gate

| Check | Evidence required | Status |
| --- | --- | --- |
| Scaffold tree printed | tree/find receipt | OPEN |
| Git diff reviewed | diff receipt | OPEN |
| Secret scan performed | grep receipt | OPEN |
| Deployment command absence confirmed | grep receipt | OPEN |
| Wallet signing absence confirmed | grep receipt | OPEN |
| Broadcast absence confirmed | grep receipt | OPEN |
| Cast send absence confirmed | grep receipt | OPEN |
| Working tree contains only approved scaffold files | git status receipt | OPEN |
| Scaffold committed and pushed | commit and remote receipt | OPEN |

## No-go conditions

Do not proceed to application scaffold if any of the following are true:

- working tree is not clean before scaffold;
- wrong branch is selected;
- application infrastructure blueprint is missing;
- public/corporate interface plan is missing;
- Base Sepolia public interface decision record is missing;
- blocker register is missing;
- any production address is guessed;
- any private key, seed phrase, API key, wallet secret, deployer key, or recovery phrase appears;
- any deployment script is created;
- any transaction-signing code is created;
- any public demo is launched;
- any app implies mainnet deployment authorization;
- any First Nations language is treated as final without specialized legal review.

## Acceptance rule for this checklist

This checklist is complete only when:

- the application scaffold boundary is documented;
- the proposed source tree is documented;
- the no-deployment rule is documented;
- the public, corporate, First Nations, Base Sepolia demo, and transaction rail boundaries are documented;
- no source code is changed by this checklist;
- this checklist is committed and pushed to the v0.5.2 phase branch.

## Current status

- Application source tree scaffold gate checklist created.
- This is a docs-only readiness artifact.
- No app scaffold has been created yet.
- No source code has been changed.
- No package config has been changed.
- No deployment script has been changed.
- No mainnet deployment has been authorized.
- Next safe task: create the first controlled application source tree scaffold after this checklist is committed.

