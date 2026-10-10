# NST Core v0.5.2 Protocol Client Package Implementation Plan

Status: DRAFT PLAN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-08T08:51:30Z
Current commit at creation: fac4a36b228fa415b9d068f904f17fbc31e5dbe0

Config package implementation plan commit: 4f7fad4b838bab2452da5bd257fe14cf7bcd9ea2

No-secret package scan rule commit: fac4a36b228fa415b9d068f904f17fbc31e5dbe0

Package test strategy commit: fac4a36b228fa415b9d068f904f17fbc31e5dbe0

Read-only client implementation plan commit: fac4a36b228fa415b9d068f904f17fbc31e5dbe0

Protocol client package gate checklist commit: fac4a36b228fa415b9d068f904f17fbc31e5dbe0

Base Sepolia address map commit: fac4a36b228fa415b9d068f904f17fbc31e5dbe0

Base Sepolia ABI inventory receipt commit: fac4a36b228fa415b9d068f904f17fbc31e5dbe0

This document is not a deployment authorization.

This document does not authorize mainnet deployment.

This document does not authorize public production interface launch.

This document does not authorize public Base Sepolia demo launch by itself.

This document does not approve executable protocol client source.

This document does not approve executable config source.

This document does not approve executable app source.

This document does not approve executable package source.

This document does not approve executable infra source.

This document does not approve any production address.

This document does not approve any production ABI.

This document does not approve any production governance object.

This document does not approve any production treasury route.

This document does not authorize production configuration.

This document does not authorize production transaction rail execution.

This document does not authorize production governance gates.

This document does not authorize any public mainnet mint interface.

This document is a planning artifact only.

## Purpose

This plan defines the controlled implementation boundary for the future NST Core v0.5.2 protocol client package.

The protocol client package is the future safe client layer used by applications and packages to read approved protocol contracts.

The first allowed design target is Base Sepolia read-only behavior.

The protocol client package must be fail-closed.

The protocol client package must be evidence-backed.

The protocol client package must be network-scoped.

The protocol client package must not broadcast transactions by default.

The protocol client package must not request private keys.

The protocol client package must not request seed phrases.

The protocol client package must not request wallet recovery phrases.

The protocol client package must not embed wallet secrets.

The protocol client package must not embed private RPC credentials.

This plan does not create executable protocol client source.

This plan does not create generated client source.

This plan does not create app source.

This plan does not create config source.

This plan does not create transaction rail source.

This plan does not create governance gate source.

## Current blocker

Protocol client implementation is not approved yet.

Executable protocol client source does not exist yet.

Protocol client package tests do not exist yet.

Executable config package source does not exist yet.

No-secret executable scan tooling does not exist yet.

Base Sepolia address evidence records are not complete.

Base Sepolia address checksum receipts are not complete.

Base Sepolia ABI evidence records are not complete.

Base Sepolia ABI checksum receipts are not complete.

Base Sepolia explorer/source verification receipts are not complete.

Base Sepolia public demo approval receipt is not complete.

Mainnet production address evidence is not complete.

Mainnet production ABI evidence is not complete.

Mainnet deployment remains blocked.

## Future package path

Expected future package path:

packages/protocol-clients

Expected future purpose:

- provide safe protocol client factories;
- provide read-only contract clients;
- load config from approved config package;
- validate network and chain ID;
- validate address evidence;
- validate address checksum receipts;
- validate ABI evidence;
- validate ABI checksum receipts;
- classify ABI methods;
- expose allowlisted read methods;
- block write methods by default;
- expose safe typed error codes;
- provide UI-safe read-only status models;
- fail closed on any missing evidence or mismatch.

This plan does not create the package path.

This plan does not create package source.

## Network and chain ID enforcement

Future protocol clients must verify:

- configured network name;
- configured chain ID;
- provider chain ID;
- config package chain ID;
- address map chain ID;
- ABI inventory chain ID;
- environment label;
- testnet or production flag.

The client must reject:

- missing network;
- missing chain ID;
- unknown chain ID;
- provider chain ID mismatch;
- config chain ID mismatch;
- address map chain ID mismatch;
- ABI inventory chain ID mismatch;
- Base Sepolia config in Base mainnet mode;
- Base mainnet config in Base Sepolia mode;
- local Anvil config in Base Sepolia or Base mainnet mode.

A warning is not enough.

The client must fail closed.

## Evidence dependency

Future protocol clients must not instantiate without:

- approved config object;
- address map reference;
- address evidence record;
- address checksum receipt;
- ABI inventory reference;
- ABI evidence record;
- ABI checksum receipt;
- no-secret scan rule;
- package test strategy;
- config package validation result;
- protocol client package gate approval.

A client may be created only for rows whose status allows the requested mode.

OPEN rows must fail.

BLOCKED rows must fail.

REJECTED rows must fail.

SUPERSEDED rows must fail unless explicitly mapped to a current replacement.

## Client factory boundary

Future package should expose client factories, not raw unvalidated contract access.

Expected factory design:

- createReadOnlyClient(config);
- createContractReader(config, contractLabel);
- createBaseSepoliaReadOnlyClient(config);
- createStatusReader(config);
- createMetadataReader(config);
- createGovernanceReadModel(config);
- createTreasuryReadModel(config);

Blocked factory design:

- createUncheckedClient;
- createWriteClient by default;
- createSignerClient from private key;
- createClientFromRawAddress without evidence;
- createClientFromRawABI without checksum;
- createMainnetClient without final gates;
- createTransactionBroadcaster without transaction rail approval.

## ABI/address validation

Before any contract read, the protocol client must validate:

- contract label exists;
- address exists;
- address is not TBD;
- address is not placeholder;
- address is not mock;
- address is not local unless local mode is explicit;
- address checksum receipt exists;
- address checksum matches;
- ABI exists;
- ABI is parseable;
- ABI evidence record exists;
- ABI checksum receipt exists;
- ABI checksum matches;
- ABI belongs to expected contract label;
- ABI belongs to expected network scope;
- method is allowlisted;
- method is read-only;
- method is safe for requested mode.

If validation fails, no read call may occur.

## Read-only client boundary

Read-only protocol clients may support:

- name;
- symbol;
- decimals where applicable;
- totalSupply where safe;
- balanceOf where safe;
- ownerOf where safe;
- tokenURI where safe;
- locked status where safe;
- paused state where safe;
- role membership where safe;
- role admin where safe;
- registry state where safe;
- treasury route view where safe;
- config constants where safe;
- public status summaries.

Read-only protocol clients must not support:

- mint;
- transfer;
- approve;
- setApprovalForAll;
- pause;
- unpause;
- grantRole;
- revokeRole;
- set metadata;
- freeze metadata;
- set registry;
- set treasury;
- set router;
- propose config;
- apply config;
- process pending yield;
- sweep;
- rescue;
- any payable method;
- any nonpayable state-changing method;
- transaction broadcast;
- signer request.

## Write method blocker

Write methods must be blocked by default.

A write method must not be exposed merely because it exists in an ABI.

A write method must not be exposed merely because wallet connection exists.

A write method must not be exposed merely because Base Sepolia is testnet.

A write method must not be exposed merely because tests pass.

A write method may be considered only after:

- transaction rail package gate is complete;
- governance gate is complete where applicable;
- config gate explicitly enables it;
- method-specific evidence exists;
- method-specific tests pass;
- warning language is implemented;
- approval receipt explicitly allows the method.

## ABI method classification

Future protocol clients must classify ABI methods.

| ABI item | Default status |
| --- | --- |
| view function | Block unless allowlisted |
| pure function | Block unless allowlisted |
| nonpayable function | Block |
| payable function | Block |
| constructor | Block |
| fallback | Block |
| receive | Block |
| event | Read/query only if explicitly allowed |
| error | Safe for decoding only |

If mutability is missing, block.

If method classification is unclear, block.

If method has payable state, block.

If method can change state, block.

## Base Sepolia client boundary

Base Sepolia clients may be planned only for:

- chain ID 84532;
- testnet-only reads;
- evidence-backed addresses;
- evidence-backed ABIs;
- read-only contract status;
- public demo display after demo approval;
- internal readiness verification.

Base Sepolia clients must display or surface:

- testnet-only status;
- no production value status;
- no mainnet rights status;
- no production treasury status;
- no investment offer status;
- no operational reliance status.

Base Sepolia clients must not imply:

- mainnet launch;
- production deployment;
- production minting;
- production treasury;
- production governance;
- First Nations production approval;
- corporate production integration.

## Base mainnet client boundary

Base mainnet clients remain blocked until:

- final production addresses are approved;
- production address evidence is complete;
- production address checksum receipts are complete;
- production ABI evidence is complete;
- production ABI checksum receipts are complete;
- production config package is complete;
- mainnet read-only verification commands are complete;
- release evidence bundle is complete;
- final human approval receipt is complete.

No Base mainnet client source is approved by this plan.

## Config package dependency

Protocol clients must consume config only from approved config package boundaries.

Protocol clients must not hardcode addresses.

Protocol clients must not hardcode ABIs.

Protocol clients must not use screenshots as config.

Protocol clients must not use chat text as config.

Protocol clients must not use memory as config.

Protocol clients must not use uncommitted local output as config.

Protocol clients must reject config with:

- missing network;
- missing chain ID;
- missing address evidence;
- missing ABI evidence;
- missing checksum receipt;
- secret-looking value;
- unknown status;
- stale source commit;
- drift from evidence source.

## Public UI dependency

Public UI may call protocol clients only if:

- network badge is visible;
- testnet or production status is explicit;
- warning language is implemented;
- client mode is approved;
- config mode is approved;
- write methods are disabled unless explicitly approved;
- no-secret scan receipt exists;
- demo approval receipt exists if public Base Sepolia demo is launched.

Public UI must not call protocol clients in hidden production mode.

Public UI must not silently switch networks.

Public UI must not silently promote testnet to mainnet.

## Transaction rail dependency

Protocol clients are not transaction rail.

Read-only clients do not authorize transaction rail.

Transaction rail broadcast must remain blocked unless transaction rail gates are complete.

Protocol clients must not expose transaction broadcast through read-only APIs.

Protocol clients must not include signer handling in read-only mode.

Protocol clients must not accept private keys.

Protocol clients must not accept seed phrases.

Protocol clients must not accept recovery phrases.

## Governance gates dependency

Protocol clients may expose safe governance read models only.

Protocol clients must not expose governance writes by default.

Protocol clients must not grant roles.

Protocol clients must not revoke roles.

Protocol clients must not perform admin actions.

Protocol clients must not imply production governance.

Governance writes require separate governance gate approval.

## Treasury dependency

Protocol clients may expose safe treasury read models only if evidence and config allow them.

Protocol clients must not trigger payout.

Protocol clients must not process yield.

Protocol clients must not sweep.

Protocol clients must not rescue.

Protocol clients must not imply production treasury activation.

Protocol clients must not imply real funds.

## First Nations dependency

Any protocol client read model used by a First Nations-facing interface must preserve:

- testnet-only status where applicable;
- no production governance status unless approved;
- no production revenue status unless approved;
- no Treaty-law finalization status unless reviewed;
- no consent implied status;
- no key-holder appointment implied status.

Protocol clients must not encode First Nations production routes until legal and governance gates are complete.

## Corporate dependency

Any protocol client read model used by a corporate-facing interface must preserve:

- no production integration status unless approved;
- no paid service status unless approved;
- no operational reliance status unless approved;
- no investment solicitation status;
- testnet-only status where applicable.

Protocol clients must not encode corporate production routes until legal and operational gates are complete.

## Error handling

Future protocol clients must expose safe error codes.

Required error categories:

- UNSUPPORTED_NETWORK;
- CHAIN_ID_MISMATCH;
- CONFIG_MISSING;
- CONFIG_BLOCKED;
- ADDRESS_MISSING;
- ADDRESS_EVIDENCE_MISSING;
- ADDRESS_CHECKSUM_MISSING;
- ADDRESS_CHECKSUM_MISMATCH;
- ABI_MISSING;
- ABI_EVIDENCE_MISSING;
- ABI_CHECKSUM_MISSING;
- ABI_CHECKSUM_MISMATCH;
- METHOD_NOT_ALLOWLISTED;
- WRITE_METHOD_BLOCKED;
- PAYABLE_METHOD_BLOCKED;
- DEMO_NOT_APPROVED;
- WARNING_LANGUAGE_MISSING;
- SECRET_DETECTED;
- STALE_CONFIG;
- DRIFT_DETECTED.

Errors must not leak secrets.

Errors must not tell users to paste private keys.

Errors must not tell users to bypass gates.

## Logging rule

Protocol client logs may include:

- non-secret network name;
- chain ID;
- public address;
- contract label;
- method label;
- non-secret error code;
- evidence status.

Protocol client logs must not include:

- private keys;
- seed phrases;
- recovery phrases;
- wallet secrets;
- signer objects;
- private RPC credentials;
- bearer tokens;
- API keys;
- raw environment files;
- authorization headers.

## No-secret rule

Protocol client source must pass no-secret scan before acceptance.

Protocol client tests must not include real secrets.

Protocol client fixtures must not include real secrets.

Protocol client examples must use placeholders only.

Protocol client docs must not tell users to paste secrets.

Protocol client logging must be secret-safe.

## Protocol client tests

Future protocol client tests must prove:

- missing config fails;
- unsupported network fails;
- wrong chain ID fails;
- missing address evidence fails;
- missing address checksum fails;
- address checksum mismatch fails;
- missing ABI evidence fails;
- missing ABI checksum fails;
- ABI checksum mismatch fails;
- write methods are blocked;
- payable methods are blocked;
- non-allowlisted view methods are blocked;
- read-only allowlisted methods are callable;
- signer is not requested in read-only mode;
- private key input is rejected;
- seed phrase input is rejected;
- recovery phrase input is rejected;
- Base Sepolia cannot become mainnet silently;
- mainnet mode remains blocked until final gates;
- errors are safe;
- logs are safe.

## Implementation sequence

Future implementation sequence should be:

1. Complete this plan.
2. Reference this plan in readiness gates.
3. Create Base Sepolia read-only config plan.
4. Complete address evidence records for selected Base Sepolia scope.
5. Complete address checksum receipts for selected Base Sepolia scope.
6. Complete ABI evidence records for selected Base Sepolia scope.
7. Complete ABI checksum receipts for selected Base Sepolia scope.
8. Create config package gate update if needed.
9. Create protocol client package gate update if needed.
10. Create executable config package only when authorized.
11. Create executable protocol client package only when authorized.
12. Add tests from package test strategy.
13. Add no-secret scan tooling when authorized.
14. Keep write paths blocked.
15. Keep public demo launch blocked until demo approval receipt is complete.

## Required files before executable implementation

Before executable protocol client source is created, the project should have:

- config package implementation plan;
- protocol client package implementation plan;
- package test strategy;
- no-secret package scan rule;
- Base Sepolia read-only config plan;
- Base Sepolia address evidence records;
- Base Sepolia address checksum receipts;
- Base Sepolia ABI evidence records;
- Base Sepolia ABI checksum receipts;
- package gate approval to create executable source.

## No-go conditions

Do not implement executable protocol client package source from this plan alone.

Do not create generated protocol client source from this plan alone.

Do not launch a public Base Sepolia demo from this plan.

Do not launch a production interface from this plan.

Do not launch a mainnet interface from this plan.

Do not expose write methods from this plan.

Do not enable transaction broadcast from this plan.

Do not enable governance writes from this plan.

Do not enable production treasury routes from this plan.

Do not treat protocol client existence as deployment authorization.

Do not treat protocol client existence as public demo approval.

Do not treat protocol client existence as mainnet approval.

Do not request private keys.

Do not request seed phrases.

Do not request wallet recovery phrases.

Do not embed wallet secrets.

Do not embed private RPC credentials.

## Secret exclusion checklist

This plan must contain none of the following usable secret material:

| Secret type | Present? | Status |
| --- | --- | --- |
| Private key value | NO | REQUIRED |
| Seed phrase value | NO | REQUIRED |
| Wallet recovery phrase value | NO | REQUIRED |
| Deployer key value | NO | REQUIRED |
| Wallet secret value | NO | REQUIRED |
| Private RPC credential value | NO | REQUIRED |
| Keystore password value | NO | REQUIRED |
| Hardware wallet recovery value | NO | REQUIRED |
| Private signer material value | NO | REQUIRED |
| Personal access token value | NO | REQUIRED |
| Private API key value | NO | REQUIRED |

## Acceptance criteria

This plan is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it preserves no-deployment status;
- it states protocol clients do not authorize deployment;
- it states protocol clients do not authorize public demo launch;
- it states protocol clients do not authorize mainnet approval;
- it defines network and chain ID enforcement;
- it defines evidence dependency;
- it defines client factory boundary;
- it defines ABI/address validation;
- it defines read-only client boundary;
- it defines write method blocker;
- it defines Base Sepolia client boundary;
- it defines Base mainnet client boundary;
- it defines config package dependency;
- it defines transaction rail dependency;
- it defines governance gates dependency;
- it defines no-secret rule;
- it defines protocol client tests;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.

## v0.5.2 Base Sepolia read-only config plan reference

Reference document: docs/plans/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_PLAN.md

Reference commit: 3d5d608993c1bc7c3971cf9d06c30ae45afec010

Reference captured UTC: 2026-10-08T21:04:27Z

Reference target: protocol client package implementation plan

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

Reference target: protocol client package implementation plan

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

Reference target: protocol client package implementation plan

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

Reference target: protocol client package implementation plan

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

Reference target: protocol client package implementation plan

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
