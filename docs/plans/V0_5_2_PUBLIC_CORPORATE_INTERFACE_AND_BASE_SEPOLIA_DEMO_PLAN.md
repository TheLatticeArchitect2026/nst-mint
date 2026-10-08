# NST Core v0.5.2 Public / Corporate Interface and Base Sepolia Demo Plan

Status: DRAFT PLAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-04T12:39:13Z
Current commit at creation: 7fd192ac0fa141ebcbd90b51bbe58c6e70d6a01f

Base Sepolia public-interface decision commit: 02fad4ea64dde6fe74f09d06a77719634c14ce71
Readiness blocker register commit: 7fd192ac0fa141ebcbd90b51bbe58c6e70d6a01f
Readiness runbook commit: 7fd192ac0fa141ebcbd90b51bbe58c6e70d6a01f

Source Base Sepolia decision record: docs/audits/V0_5_2_BASE_SEPOLIA_DEPLOYMENT_INVENTORY_AND_PUBLIC_INTERFACE_DECISION_RECORD.md
Source readiness runbook: docs/runbooks/V0_5_2_MAINNET_READINESS_RUNBOOK.md
Source no-deployment candidate plan: docs/plans/V0_5_2_MAINNET_CANDIDATE_PLAN_NO_DEPLOYMENT.md
Source readiness blocker register: docs/audits/V0_5_2_MAINNET_READINESS_BLOCKER_REGISTER.md
Source final production address collection package: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_COLLECTION_PACKAGE.md
Source production address source-of-truth request packet: docs/audits/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_REQUEST_PACKET.md
Source production address response review checklist: docs/checklists/V0_5_2_FINAL_PRODUCTION_ADDRESS_SOURCE_OF_TRUTH_RESPONSE_REVIEW_CHECKLIST.md
Source deployment config review checklist: docs/checklists/V0_5_2_MAINNET_DEPLOYMENT_CONFIG_REVIEW_CHECKLIST.md
Source read-only verification checklist: docs/checklists/V0_5_2_MAINNET_READ_ONLY_VERIFICATION_COMMANDS_CHECKLIST.md
Source release evidence checklist: docs/checklists/V0_5_2_MAINNET_RELEASE_EVIDENCE_BUNDLE_CHECKLIST.md
Source final human approval template: docs/audits/V0_5_2_FINAL_HUMAN_APPROVAL_RECEIPT_TEMPLATE.md

## Purpose

This document defines the public, corporate, First Nations, and Base Sepolia interface planning path for NST Core v0.5.2.

This document is not a deployment authorization.

No mainnet deployment is authorized by this plan.

This document does not create a frontend, landing page, dApp, deployment command, production address, production key, governance object, treasury route, legal opinion, token sale, investment offering, or public launch.

This plan exists to define the safe next interface layer while preserving the institutional readiness gates already created for v0.5.2.

## Current controlled state

| Area | Current status |
| --- | --- |
| v0.5.2 branch | Active on phase/v0.5.2-mainnet-readiness |
| Foundry build profile | Via-IR committed in foundry.toml |
| Build status | Passing under committed Via-IR profile |
| Test status | Passing under committed Via-IR profile |
| Base Sepolia deployment | Existing testnet deployment inventory documented |
| Base Sepolia public access | Controlled public-interface decision documented |
| Mainnet deployment | BLOCKED |
| Production addresses | TBD / incomplete |
| Public frontend | Not built |
| Corporate frontend | Not built |
| First Nations legal language | Not finalized |
| Transaction rail | Not built end-to-end |
| Final human approval | Missing |
| Public launch | Not authorized |

## Non-negotiable safety rule

A public interface must not imply:

- mainnet readiness;
- production custody;
- production governance approval;
- final treasury approval;
- final First Nations legal approval;
- investment return;
- securities offering;
- guaranteed yield;
- guaranteed revenue;
- guaranteed First Nations distribution;
- final deployment approval;
- completed institutional adoption;
- completed legal review.

Every public-facing interface must clearly distinguish:

- current testnet artifacts;
- future mainnet intent;
- not-yet-approved production addresses;
- not-yet-final legal language;
- not-yet-final governance;
- not-yet-final treasury routes;
- not-yet-final operator permissions;
- not-yet-final release evidence.

## Base Sepolia public-interface rule

Base Sepolia may be used only for controlled education, controlled demonstration, and controlled technical validation.

Base Sepolia must not be represented as production.

Base Sepolia must not be represented as mainnet.

Base Sepolia must not be represented as custody-ready.

Base Sepolia must not be represented as revenue-ready.

Base Sepolia must not be represented as a live public financial rail.

Allowed Base Sepolia public interface modes:

1. Read-only explorer links.
2. Read-only contract inventory.
3. Read-only educational dashboard.
4. Founder-controlled demo walkthrough.
5. Limited testnet interaction only if clearly labelled as testnet.
6. Wallet connection only after explicit testnet warning.
7. No real-value transfers.
8. No production address reuse.
9. No mainnet claims.
10. No public promise of continued availability.

Blocked Base Sepolia public interface modes:

1. Broad public minting without reviewed demo controls.
2. Broad public write access without a public demo risk review.
3. Any production-like treasury routing.
4. Any production-like governance action.
5. Any production-like yield representation.
6. Any real-value claim.
7. Any mainnet deployment representation.
8. Any invitation to treat testnet assets as valuable.
9. Any final First Nations governance representation before legal review.
10. Any public investor-facing claim.

## Public landing page objective

The public landing page should explain NST Lattice at a high level without requiring wallet connection.

Primary purpose:

- explain the vision;
- explain permanent NST ownership conceptually;
- explain the future value rail concept;
- explain Canada-first positioning;
- explain First Nations participation as a future legal/governance workstream;
- explain current testnet status;
- collect responsible interest;
- route serious inquiries to founder-controlled review.

The first public landing page should be educational, not transactional.

## Public landing page sections

Required sections:

1. Hero section.
2. Founder vision.
3. What NST Lattice is.
4. What is built today.
5. What is not built yet.
6. Base Sepolia testnet status.
7. Mainnet readiness status.
8. First Nations legal/governance workstream.
9. Corporate/institutional inquiry path.
10. Developer/technical documentation path.
11. Waitlist or contact form.
12. Risk and no-deployment disclosure.
13. No investment advice / no securities offering disclosure.
14. Privacy and contact policy.
15. Roadmap.

## Public landing page prohibited claims

The public landing page must not state or imply:

- that mainnet deployment is complete;
- that the public can acquire production NST;
- that any token has investment value;
- that any revenue distribution is legally finalized;
- that First Nations legal participation is finalized;
- that a treaty-law structure has been approved;
- that any multisig member has accepted responsibility;
- that any treasury route is active on mainnet;
- that any future CFT or NST value is guaranteed;
- that a public sale is open;
- that a public mint is open on mainnet;
- that a user should send funds.

## Corporate landing page objective

The corporate landing page should be an institutional intake interface.

Primary purpose:

- receive partnership inquiries;
- receive construction, infrastructure, trade, banking, First Nations, municipal, provincial, and corporate interest;
- separate serious counterparties from general public traffic;
- preserve paper trail;
- avoid premature commercial promises.

Corporate landing page sections:

1. Institutional overview.
2. System architecture summary.
3. Mainnet readiness status.
4. Governance and treasury blockers.
5. Compliance and legal-review status.
6. First Nations legal workstream.
7. Corporate intake form.
8. Meeting request form.
9. Documentation request path.
10. No-offer disclaimer.
11. Confidentiality notice.
12. Contact routing.

## First Nations interface objective

The First Nations interface must not be finalized without specialized legal review.

The First Nations lawyer specializing in Treaty law should be considered a critical contributor for:

- Treaty-law language;
- governance framing;
- revenue language;
- rights language;
- representation language;
- consent language;
- community onboarding language;
- legal disclaimers;
- possible multisig/key-holder role design;
- dispute process;
- approval workflow;
- public statement boundaries.

The First Nations page must remain draft until legal language is reviewed and approved.

## First Nations page required controls

Before publishing a First Nations public page, the project must have:

1. Treaty-law review receipt.
2. Founder review receipt.
3. Governance review receipt.
4. No-securities language review.
5. Public statement approval.
6. Clear statement of what is proposed versus finalized.
7. Clear statement of what is not yet legally approved.
8. Clear statement of who has authority to speak for the project.
9. Clear statement that no production treasury route is live unless actually deployed and approved.
10. Clear statement that no First Nations key-holder role is active unless approved and documented.

## First Nations lawyer potential role

The Treaty-law lawyer may be considered for future governance/key-holder participation only after:

- role description is written;
- obligations are written;
- liability boundaries are written;
- compensation or non-compensation terms are written;
- conflict rules are written;
- resignation/removal path is written;
- multisig threshold impact is reviewed;
- emergency authority limits are reviewed;
- signer acceptance is documented;
- final human approval is captured.

No key-holder assignment is created by this plan.

## End-to-end transaction rail status

The end-to-end transaction rail is not yet built.

The current project has significant core smart-contract and readiness documentation, but the complete real-world transaction rail still requires:

1. Final product flow definition.
2. Final user journey definition.
3. Final NST membership flow.
4. Final CFT utility flow.
5. Final treasury route flow.
6. Final YieldPool flow.
7. Final cross-module permissions.
8. Frontend wallet connection.
9. Frontend read-only dashboard.
10. Frontend controlled testnet action path.
11. Backend/indexing layer, if required.
12. Event indexing.
13. Admin/operator console.
14. Governance console.
15. Treasury console.
16. Claim/receipt console.
17. Compliance/legal content layer.
18. Public documentation.
19. Corporate onboarding.
20. Security review.
21. Mainnet deployment package.
22. Mainnet monitoring and incident response.

## Transaction rail phases

Phase 1: Education and public presence.

- Public landing page.
- Corporate landing page.
- First Nations draft page.
- Docs portal.
- Base Sepolia read-only explorer links.
- No public write access by default.

Phase 2: Controlled testnet interface.

- Read-only contract dashboard.
- Wallet connection warning.
- Testnet-only labels.
- Controlled mint demo, if approved.
- Controlled role/status viewer.
- Controlled event viewer.
- Controlled transaction receipt viewer.
- No mainnet implication.

Phase 3: Institutional demo.

- Private demo environment.
- Founder-led walkthrough.
- Corporate inquiry conversion.
- First Nations legal review path.
- Treasury/gov address collection path.

Phase 4: Mainnet candidate package.

- Final production addresses.
- Final governance objects.
- Final treasury routes.
- Final operator handoff.
- Final deployment config.
- Final read-only verification commands.
- Final release evidence.
- Final human approval.

Phase 5: Mainnet deployment.

- Only after final gates are complete.
- Only after explicit human approval.
- Only after no-go blockers are closed.
- Only after final legal/public-language review.

Phase 6: Public production interface.

- Production landing page.
- Production app.
- Production user support.
- Production monitoring.
- Production governance transparency.
- Production incident response.

## Interface architecture direction

Recommended stack direction for public/corporate pages:

- Static landing pages first.
- No wallet connection on initial public homepage.
- Separate testnet demo route.
- Separate corporate intake route.
- Separate First Nations information route.
- Separate technical docs route.
- Separate admin/operator tools from public pages.

Possible future surfaces:

- / public homepage.
- /vision.
- /technology.
- /first-nations.
- /corporate.
- /docs.
- /testnet.
- /status.
- /contact.
- /legal.

## Public app architecture direction

The eventual NST Lattice public app should separate:

- read-only views;
- testnet-only actions;
- mainnet-only actions;
- admin-only actions;
- operator-only actions;
- governance-only actions;
- treasury-only actions.

No admin, treasury, mint manager, metadata manager, swap operator, registry authority, credential authority, claim authority, or rescue authority action should be exposed through a public route without explicit authorization.

## Wallet connection rule

Wallet connection must not be required for the initial public landing page.

Wallet connection may be introduced only in a clearly marked testnet/demo route.

Before wallet connection, the user should see:

- this is testnet;
- no real value;
- not mainnet;
- do not send mainnet funds;
- no investment claim;
- no production rights;
- no production guarantee.

## Base Sepolia demo interface minimum labels

Every Base Sepolia interface must display:

- Base Sepolia testnet.
- For demonstration only.
- No real value.
- Not mainnet.
- Not production.
- No investment value.
- No guarantee of future rights.
- No guarantee of mainnet equivalence.
- Do not send real funds.
- Production deployment is blocked until final approval.

## Corporate intake data fields

A corporate intake form may request:

- name;
- organization;
- role/title;
- email;
- phone optional;
- website;
- jurisdiction;
- sector;
- interest category;
- requested meeting;
- message;
- consent to contact;
- non-confidential submission acknowledgment.

A corporate intake form must not request:

- private keys;
- wallet secrets;
- seed phrases;
- deployer keys;
- API keys;
- private RPC credentials;
- bank credentials;
- identity documents unless a proper privacy/compliance process exists.

## First Nations intake data fields

A First Nations inquiry form may request:

- name;
- Nation/community/organization;
- role/capacity;
- contact email;
- phone optional;
- region/province/territory;
- inquiry type;
- meeting request;
- message;
- consent to contact.

A First Nations inquiry form must not imply that an inquiry equals legal consent, governance approval, treaty approval, or revenue-participation approval.

## Documentation portal objective

A documentation portal should eventually include:

- white paper;
- master spec;
- deployment inventory;
- audit/readiness records;
- status page;
- FAQ;
- contract addresses;
- explorer links;
- risk disclosures;
- governance model drafts;
- First Nations legal review status;
- corporate onboarding process.

## Current recommended public position

The project may safely say:

- NST Core v0.5.2 has passed local build and test under committed Via-IR configuration.
- Base Sepolia deployment inventory is documented.
- Mainnet deployment is not authorized.
- Production addresses remain under collection/review.
- Public/corporate interface planning is underway.
- First Nations legal language requires specialized Treaty-law review.
- The end-to-end real-world transaction rail remains in development.

The project should not say:

- mainnet is ready;
- public mint is live;
- production addresses are finalized;
- First Nations revenue structure is legally final;
- corporate adoption is complete;
- the transaction rail is production-ready;
- any public user should send funds.

## No-go conditions

Do not publish a public interface if any of the following are true:

- The page implies mainnet readiness.
- The page implies investment value.
- The page implies final legal approval where none exists.
- The page implies First Nations approval where none exists.
- The page exposes unsafe write functions.
- The page uses production-looking labels for Base Sepolia.
- The page contains production addresses copied from memory, screenshots, chat text, local Anvil, Base Sepolia placeholders, or unapproved sources.
- The page asks for private keys, seed phrases, deployer keys, wallet secrets, or signing material.
- The page directs real funds to any address.
- The page conflicts with the readiness blocker register.

## Acceptance rule for this plan

This plan is complete only when:

- The public/corporate interface scope is documented.
- The Base Sepolia public demo boundary is documented.
- The First Nations legal workstream boundary is documented.
- The transaction rail status is documented as not complete.
- The no-deployment rule is documented.
- The no-public-mainnet claim rule is documented.
- No source code is changed.
- The plan is committed and pushed to the v0.5.2 phase branch.

## Current status

- Public/corporate interface plan created.
- This is a docs-only planning artifact.
- No frontend has been created.
- No public interface has been deployed.
- No Base Sepolia public write access has been authorized.
- No mainnet deployment has been authorized.
- Next safe task: create a public/corporate interface content checklist and wireframe plan, or begin a separate frontend branch only after approving the interface boundary.

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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

Reference target: public corporate interface and Base Sepolia demo plan

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
