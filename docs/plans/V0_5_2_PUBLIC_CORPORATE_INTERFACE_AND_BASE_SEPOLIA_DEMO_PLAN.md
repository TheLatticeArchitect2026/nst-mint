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
