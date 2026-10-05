# NST Core v0.5.2 Application Infrastructure Blueprint

Status: DRAFT BLUEPRINT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-04T13:02:33Z
Current commit at creation: 3cd2b101d61bb5ad2e02e3bd8bc0bca18e91cfb2

Source public/corporate interface plan: docs/plans/V0_5_2_PUBLIC_CORPORATE_INTERFACE_AND_BASE_SEPOLIA_DEMO_PLAN.md
Source Base Sepolia decision record: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md
Source blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md
Source candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md
Source final production address collection package: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md
Source source-of-truth request packet: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md
Source source-of-truth response review checklist: docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md
Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md
Source read-only verification commands checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md
Source release evidence bundle checklist: docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md
Source final human approval template: docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md
Source final acceptance gate: docs/checklists/V0_5_2_FINAL_ACCEPTANCE_GATE_CHECKLIST.md
Source deployment checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CHECKLIST.md
Source readiness runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md

## Purpose

This document defines the future application infrastructure blueprint for NST Core v0.5.2.

This document is not a deployment authorization.

No mainnet deployment is authorized by this blueprint.

This blueprint does not create frontend code.

This blueprint does not create backend code.

This blueprint does not create infrastructure code.

This blueprint does not create deployment commands.

This blueprint does not approve any production address, operator, treasury destination, governance object, key holder, public interface, corporate interface, First Nations interface, or transaction rail.

No source code has been changed by this blueprint.

## Current position

NST Core now has an institutional mainnet-readiness operating layer around the protocol.

The current readiness layer includes:

- build-profile decision records;
- Via-IR adoption evidence;
- mainnet readiness runbook;
- deployment checklist;
- rollback checklist;
- final acceptance gate;
- address intake process;
- final production address collection package;
- production address source-of-truth request packet;
- source-of-truth response review checklist;
- deployment config review checklist;
- read-only verification command checklist;
- release evidence bundle checklist;
- final human approval receipt template;
- readiness blocker register;
- Base Sepolia deployment inventory and public-interface decision record;
- public/corporate interface and Base Sepolia demo plan.

The protocol readiness control plane is now strong.

The application infrastructure layer is not yet built.

The end-to-end transaction rail is not yet built.

The public landing site is not yet built.

The corporate landing site is not yet built.

The First Nations interface is not yet built.

The Base Sepolia public demo interface is not yet built.

The backend service layer is not yet built.

The indexer/event layer is not yet built.

The admin/governance console is not yet built.

The treasury/operator console is not yet built.

The mainnet deployment configuration is not complete.

Production owner addresses remain unresolved.

Final human approval remains missing.

Mainnet deployment remains blocked.

## Operating principle

The application layer must be built in the same institutional style as the protocol readiness layer.

The application layer must separate:

- public education;
- corporate intake;
- First Nations legal and governance language;
- testnet demonstration;
- read-only contract visibility;
- member wallet interaction;
- operator actions;
- governance controls;
- treasury controls;
- production deployment tooling.

No public surface may expose privileged operator controls.

No public surface may imply mainnet launch before approval.

No public surface may imply securities, investment return, government approval, treaty approval, First Nations approval, or production deployment.

No application page may request private keys, seed phrases, wallet secrets, deployer keys, recovery phrases, private RPC credentials, keystore passwords, or hardware wallet recovery information.

## Target application surfaces

| Surface | Purpose | Chain write access | Current status |
| --- | --- | --- | --- |
| Public landing page | Explain NST Lattice, ownership, mission, and public status | None | NOT BUILT |
| Corporate landing page | Explain enterprise/corporate participation and intake | None | NOT BUILT |
| First Nations interface | Present treaty-law reviewed language and participation framework | None | NOT BUILT |
| Base Sepolia demo | Controlled testnet-only demonstration | BLOCKED until demo policy | NOT BUILT |
| Read-only protocol dashboard | Display deployed testnet/mainnet addresses, chain status, and contract state | None | NOT BUILT |
| Member mint interface | Future wallet-connected mint flow | BLOCKED | NOT BUILT |
| Corporate onboarding portal | Intake only; no production claims | None initially | NOT BUILT |
| Governance console | Restricted role/governance visibility and future proposals | BLOCKED | NOT BUILT |
| Treasury console | Restricted treasury/yield routing review | BLOCKED | NOT BUILT |
| Operator console | Restricted operations and emergency procedures | BLOCKED | NOT BUILT |
| Evidence portal | Public or restricted release receipts and audit artifacts | None | NOT BUILT |
| Developer docs portal | Controlled technical documentation | None | NOT BUILT |

## Recommended future repository structure

The following source layout is a future recommendation only.

It is not created by this blueprint.

Proposed future structure:

- apps/web-public
- apps/web-corporate
- apps/web-demo
- apps/admin-console
- apps/api
- packages/contracts
- packages/sdk
- packages/ui
- packages/config
- packages/addresses
- packages/abi
- packages/legal-copy
- packages/compliance-copy
- packages/test-fixtures
- infra/hosting
- infra/indexer
- infra/monitoring
- infra/ci
- docs/interfaces
- docs/operations
- docs/release-evidence
- docs/legal
- docs/first-nations

No source folder should be created until a dedicated source-infrastructure patch is opened, reviewed, committed, and separated from the documentation phase.

## Public landing page objective

The public landing page should communicate:

- NST Lattice mission;
- non-transferable NST membership concept;
- permanent ownership framing;
- Canada-first value rail vision;
- current development status;
- testnet status;
- mainnet not live unless explicitly approved;
- no investment solicitation;
- no guaranteed return;
- no production deployment claim;
- no First Nations legal claim without treaty-law review;
- no hidden private-key request;
- safe contact/intake path;
- public documentation path.

The public landing page must not:

- imply the public can mint on mainnet before launch;
- imply revenue rights are legally finalized;
- imply First Nations participation language is approved before legal review;
- imply government, treaty, or nation approval before evidence;
- present Base Sepolia as production;
- present testnet tokens as valuable;
- request private keys;
- request seed phrases;
- request wallet recovery information.

## Corporate landing page objective

The corporate landing page should communicate:

- enterprise/corporate participation path;
- use-case categories;
- possible integration paths;
- governance status;
- current readiness status;
- legal review requirement;
- no deployment authorization;
- no investment solicitation;
- no production treasury approval;
- no operational reliance until mainnet release is complete.

Corporate intake should collect only non-secret business information.

Corporate intake must not collect:

- private keys;
- seed phrases;
- wallet secrets;
- deployer keys;
- treasury keys;
- recovery phrases;
- bank credentials;
- private RPC credentials.

Corporate intake may later collect public wallet addresses only through an approved address intake process.

## First Nations interface objective

The First Nations interface must be treated as a legal, governance, consent, and treaty-language workstream.

The First Nations Treaty-law lawyer should be treated as a critical contributor for:

- treaty-law language;
- rights language;
- revenue language;
- consent language;
- representation language;
- community onboarding language;
- governance language;
- disclaimer language;
- possible multisig/key-holder role design;
- limitations on authority;
- approval and withdrawal process;
- dispute procedure;
- public communication boundaries.

No First Nations legal page should be finalized before specialized legal review.

No First Nations revenue claim should be publicly represented as final before legal approval.

No First Nations representative or lawyer should be assigned multisig/key-holder responsibilities before:

- written scope;
- liability review;
- resignation process;
- removal process;
- replacement process;
- threshold impact review;
- emergency procedure review;
- final approval receipt.

## Base Sepolia public demo boundary

Base Sepolia public demo access may be useful only after the demo boundary is formalized.

Base Sepolia may be used only for controlled education.

Base Sepolia is not production.

Base Sepolia tokens have no real-world value.

Base Sepolia demo interaction must not imply mainnet rights.

Base Sepolia demo interaction must not imply founder, treasury, First Nations, corporate, or governance approval.

A Base Sepolia demo should begin as read-only.

A wallet-connected testnet demo may be considered only after:

- public demo policy is approved;
- testnet disclaimer is visible;
- no private-key request exists;
- no production addresses are used;
- no production treasury route is used;
- rate limits or abuse controls are considered;
- testnet-only contract inventory is displayed;
- demo logs and receipts are captured;
- public support language is prepared.

## End-to-end transaction rail status

The end-to-end transaction rail is not yet built.

A future end-to-end NST Lattice rail may require:

- public education page;
- wallet connection;
- network detection;
- account eligibility check;
- vetting/ban/registry read checks;
- mint open/closed read checks;
- mint price display;
- transaction simulation;
- user confirmation;
- transaction submission;
- receipt capture;
- event indexing;
- membership state refresh;
- yield routing visibility;
- CFT/yield pool status display;
- support path;
- dispute path;
- audit evidence capture;
- privacy and data-retention review.

A future real-world rail must include:

- production address package;
- production deployment config;
- deployment config review receipt;
- final verification commands;
- release evidence bundle;
- final human approval;
- post-deployment read-only audit;
- monitoring and incident response;
- rollback or pause procedure.

## Backend layer objective

The backend layer should be minimal and controlled.

The backend should never custody private user keys.

The backend should never receive seed phrases.

The backend should never receive wallet recovery phrases.

The backend should never receive deployer private keys.

The backend may eventually support:

- public content API;
- approved address metadata;
- contract inventory metadata;
- read-only indexed events;
- receipts and evidence metadata;
- corporate intake forms;
- First Nations contact routing;
- support ticket routing;
- analytics with privacy controls;
- abuse/rate limiting;
- feature flagging;
- version reporting.

The backend must be designed as non-custodial unless a separate custody architecture is approved.

## Indexer layer objective

The indexer should track read-only onchain facts.

The indexer may eventually track:

- NST mint events;
- membership state;
- locked/soulbound state;
- yield swap events;
- deferred yield events;
- pending yield processing events;
- treasury route events;
- CFT supply and distribution events;
- YieldPool deposit and claim events;
- role changes;
- pause/unpause events;
- metadata freeze events;
- contract verification status;
- deployment block and chain ID.

The indexer must not sign transactions.

The indexer must not hold private keys.

The indexer must not change contract state.

## Admin console boundary

An admin console is a restricted privileged interface.

It must not be public.

It must not be launched until:

- role ownership is finalized;
- multisig roles are finalized;
- operator authority is finalized;
- emergency authority is finalized;
- final verification commands exist;
- action simulation exists;
- transaction review controls exist;
- signer policy exists;
- no single operator can accidentally move treasury or protocol-critical controls;
- approval receipts are captured.

Early admin console work should be read-only only.

## Governance console boundary

A governance console must show governance state without overstating authority.

It may eventually include:

- governance object display;
- multisig threshold display;
- role owner display;
- proposal status;
- approval references;
- governance documentation;
- decision records.

Governance write actions remain blocked until production governance is approved.

## Treasury console boundary

A treasury console is a high-risk privileged surface.

It must be restricted.

It must not launch with write controls until:

- treasury authority is approved;
- treasury routes are approved;
- yield pool destination is approved;
- CFT treasury destination is approved;
- founder payout destination is approved;
- rescue destination is approved;
- fee or BPS recipient controls are approved;
- emergency process is approved;
- manual review receipts are complete.

Early treasury console work should be read-only only.

## Security requirements

Application infrastructure must include:

- no private keys in repo;
- no seed phrases in repo;
- no deployer keys in repo;
- no wallet secrets in repo;
- no recovery phrases in repo;
- no private RPC credentials in repo;
- no production secrets in frontend bundles;
- no testnet/local placeholder values presented as production;
- no Base Sepolia values presented as mainnet;
- no Anvil values presented as production;
- no mock addresses presented as production;
- environment separation;
- secret scanning;
- dependency review;
- build reproducibility;
- least-privilege deployment permissions;
- read-only defaults;
- safe failure modes;
- clear disclaimers.

## Hosting requirements

Future hosting must support:

- public site hosting;
- controlled preview environments;
- no secret exposure in client bundles;
- separate testnet and production environments;
- explicit environment banners;
- immutable release artifacts where practical;
- audit logs;
- rollback;
- uptime monitoring;
- domain ownership control;
- DNS control;
- HTTPS;
- content security policy;
- repository-to-deployment traceability.

## CI/CD requirements

Future CI/CD must include:

- lint check;
- type check;
- unit tests;
- build check;
- dependency audit;
- secret scan;
- environment variable allowlist;
- no production deployment without approval;
- preview deployment separation;
- release evidence capture;
- checksum capture;
- final human approval before production deployment.

CI/CD must not deploy to production from an unapproved branch.

CI/CD must not deploy production without final acceptance evidence.

## Interface copy rules

All public-facing copy must be reviewed against:

- no investment promise;
- no guaranteed return;
- no securities-style claim;
- no false production status;
- no implied First Nations approval;
- no implied government approval;
- no implied treaty approval;
- no implied mainnet launch;
- no hidden solicitation;
- no technical overpromise.

## Demo policy requirements

Before any public Base Sepolia demo is opened, the project must have:

- demo purpose statement;
- testnet-only disclaimer;
- no-value disclaimer;
- no-mainnet disclaimer;
- no-legal-rights disclaimer;
- wallet safety disclaimer;
- support contact;
- abuse policy;
- data-retention statement;
- testnet contract inventory;
- demo shutdown procedure;
- demo monitoring procedure.

## Application phase sequence

| Phase | Required action | Status |
| --- | --- | --- |
| A | Commit this application infrastructure blueprint | OPEN |
| B | Create source-infrastructure scaffold decision record | OPEN |
| C | Create public/corporate content architecture spec | OPEN |
| D | Create First Nations legal workstream intake packet | OPEN |
| E | Create Base Sepolia demo policy and disclaimer spec | OPEN |
| F | Create read-only dashboard spec | OPEN |
| G | Create app repository/source scaffold in dedicated patch | BLOCKED |
| H | Create frontend public landing page | BLOCKED |
| I | Create corporate landing page | BLOCKED |
| J | Create First Nations draft page after legal input | BLOCKED |
| K | Create Base Sepolia read-only demo | BLOCKED |
| L | Create wallet-connected testnet demo | BLOCKED |
| M | Create admin/governance console | BLOCKED |
| N | Create treasury/operator console | BLOCKED |
| O | Create end-to-end transaction rail | BLOCKED |
| P | Prepare mainnet interface release package | BLOCKED |

## No-go conditions

Do not create public production application infrastructure if any of the following are true:

- production owner addresses remain TBD;
- final deployment config is incomplete;
- final human approval is missing;
- First Nations legal language is not reviewed;
- Base Sepolia is being presented as production;
- a public page implies mainnet launch before approval;
- a public page implies guaranteed financial return;
- a public page implies First Nations approval before legal evidence;
- a public page requests private keys or seed phrases;
- a frontend bundle contains secret values;
- a backend service stores private wallet material;
- a public demo writes to chain without approved demo policy;
- admin/treasury/governance controls are exposed to the public;
- source code is changed without a dedicated source patch.

## Acceptance rule for this blueprint

This blueprint is complete only when:

- the application infrastructure boundary is documented;
- the end-to-end rail is explicitly marked not built;
- public and corporate interfaces are scoped;
- First Nations legal review requirements are scoped;
- Base Sepolia demo rules are scoped;
- admin, governance, treasury, backend, and indexer boundaries are scoped;
- no source code is changed;
- the blueprint is committed and pushed to the v0.5.2 phase branch.

## Current status

- Application infrastructure blueprint created.
- This is a docs-only readiness artifact.
- No source code has been changed.
- No frontend code has been created.
- No backend code has been created.
- No infrastructure code has been created.
- No deployment command has been created.
- No mainnet deployment has been authorized.
- Next safe task: commit this blueprint, then create the source-infrastructure scaffold decision record.

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

## v0.5.2 Transaction rail architecture blueprint reference

Reference document: docs/plans/V0_5_2_TRANSACTION_RAIL_ARCHITECTURE_BLUEPRINT.md

Reference commit: 8e779a9c160732f55e133275a316fb4b5b19f437

Reference captured UTC: 2026-10-04T15:24:37Z

Reference target: application infrastructure blueprint

This reference does not authorize deployment.

This reference does not authorize mainnet deployment.

This reference does not authorize public production interface launch.

This reference does not authorize a production transaction rail.

This reference does not authorize production treasury routing.

This reference does not authorize any public mainnet mint interface.

This reference records that the transaction rail architecture blueprint exists as a controlled planning artifact.

The transaction rail remains not built.

The public site remains not built.

The corporate site remains not built.

The First Nations portal remains not built.

The admin console remains not built.

The Base Sepolia demo interface remains not production.

The production mainnet transaction rail remains blocked until approved production addresses, deployment configuration, verification commands, release evidence, final legal review where required, and final human approval are complete.

Required follow-on work:

- Create transaction rail package gate checklist.
- Create protocol client package gate checklist.
- Create governance gate package checklist.
- Create public non-secret config package gate.
- Create public site content architecture.
- Create corporate site content architecture.
- Create First Nations portal legal-review intake architecture.
- Create Base Sepolia demo launch gate checklist.
- Create transaction rail state machine skeleton only after source gates are approved.
- Create read-only protocol client skeleton only after package gates are approved.
- Create no-secret config skeleton only after config gates are approved.

No-go conditions preserved:

- Do not use mock addresses as production addresses.
- Do not use Anvil addresses as production addresses.
- Do not use Base Sepolia addresses as production mainnet addresses.
- Do not use screenshots as production address source-of-truth.
- Do not use chat text as production address source-of-truth.
- Do not request private keys.
- Do not request seed phrases.
- Do not request recovery phrases.
- Do not embed wallet secrets.
- Do not embed deployer keys.
- Do not present testnet actions as production actions.
- Do not present this reference as deployment approval.

## v0.5.2 Transaction rail package gate checklist reference

Reference document: docs/checklists/V0_5_2_TRANSACTION_RAIL_PACKAGE_GATE_CHECKLIST.md

Reference commit: 611f97a8dbbd662412a6bdeb8713353ef0ec5a0b

Reference captured UTC: 2026-10-04T15:38:04Z

Reference target: application infrastructure blueprint

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

Reference target: application infrastructure blueprint

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

Reference target: application infrastructure blueprint

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

Reference target: application infrastructure blueprint

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

Reference target: application infrastructure blueprint

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

Reference target: application infrastructure blueprint

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

Reference target: application infrastructure blueprint

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

Reference target: application infrastructure blueprint

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
