# NST Core v0.5.2 Base Sepolia Read-Only Config Candidate Review Receipt

Status: READ_ONLY_CONFIG_CANDIDATE_REVIEW_COMPLETE_PENDING_CONFIG_PACKAGE_GATE
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-12T14:09:04Z
Current commit at review creation: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Config candidate receipt commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Generation gate receipt commit: 3a5ce56107a0fde79d4b7efaf3e8e4df0fd4e4e7

ABI method classification commit: 7e79d9697a58ae2c9baaf4b5eba48eea96af4698

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Address checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

ABI checksum receipts commit: e800078973ba5f378fe794b2acad14032bd65c45

Config package gate checklist commit: e800078973ba5f378fe794b2acad14032bd65c45

Protocol client package gate checklist commit: e800078973ba5f378fe794b2acad14032bd65c45

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Review result: PASS

Config status reviewed: CANDIDATE_ONLY_PENDING_CONFIG_REVIEW

Read contract groups reviewed: 8

Read methods reviewed: 213

Read selectors reviewed: 158

Write selectors blocklisted: 84

Address evidence pool entries reviewed: 43

Read/write selector overlap: NONE

Approval selector in read methods: NO

Approval selector in write blocklist: YES

No-signing boundary: PASS

No-write boundary: PASS

No-mainnet boundary: PASS

No-production boundary: PASS

No-public-demo-approval boundary: PASS

No-protocol-client-approval boundary: PASS

No-private-key boundary: PASS

No-seed-phrase boundary: PASS

No-wallet-secret boundary: PASS

No-private-RPC-credential boundary: PASS

Raw ABI JSON copied into config: NO

Secret-assignment-shaped values detected: NO

## Review decision

The Base Sepolia read-only config candidate passes structural review.

The candidate may proceed to config package gate review.

This review does not approve protocol client implementation.

This review does not approve public demo launch.

This review does not approve mainnet deployment.

This review does not authorize deployment.

This review does not authorize transactions.

This review does not authorize write method execution.

This review does not authorize governance writes.

This review does not authorize treasury routes.

## Candidate constraints confirmed

The reviewed candidate:

- is candidate-only;
- is Base Sepolia only;
- uses chain ID 84532;
- is read-only;
- contains no signing authority;
- contains no transaction authority;
- contains no private key material;
- contains no seed phrase material;
- contains no wallet-secret material;
- contains no private RPC credential;
- contains no raw ABI JSON;
- includes read allowlisted selectors only;
- excludes write blocklisted selectors;
- excludes the approval selector from read methods;
- includes the approval selector in the write blocklist;
- preserves no-mainnet boundary;
- preserves no-production boundary;
- preserves no-public-demo-approval boundary;
- preserves no-protocol-client-approval boundary.

## Remaining blockers

Config package gate review remains required.

Protocol client package gate review remains required.

Protocol client implementation remains blocked.

Public Base Sepolia demo remains blocked.

Mainnet remains blocked.

No-secret scan remains required before public demo.

Package tests remain required before public demo.

UI review remains required before public demo.

Demo approval receipt remains required before public demo.

## Next allowed artifact

The next allowed artifact is:

- Base Sepolia read-only config package gate receipt.

The next allowed artifact is not:

- protocol client implementation;
- app source;
- package source;
- infra source;
- public demo launch;
- mainnet deployment.

## No-go conditions

Do not use this review receipt as deployment authorization.

Do not use this review receipt as public demo approval.

Do not use this review receipt as protocol client approval.

Do not use this review receipt as mainnet approval.

Do not execute write methods.

Do not allow write methods in public demo.

Do not allow write methods in transaction rail.

Do not allow write methods in governance routes.

Do not allow write methods in treasury routes.

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

## Acceptance criteria

This review receipt is acceptable only if:

- it is docs-only;
- it changes no app source code;
- it changes no package source code;
- it changes no infra source code;
- it changes no contract source code;
- it records the reviewed config candidate commit;
- it records the reviewed config candidate SHA-256;
- it confirms Base Sepolia;
- it confirms chain ID 84532;
- it confirms read/write selector overlap is absent;
- it confirms approval selector is absent from read methods;
- it confirms approval selector is present in write blocklist;
- it confirms no signing authority;
- it confirms no write authority;
- it confirms no mainnet authority;
- it states config package gate remains required;
- it states protocol client implementation remains blocked;
- it states public demo remains blocked;
- it states mainnet remains blocked;
- it includes no usable private keys;
- it includes no usable seed phrases;
- it includes no usable wallet secrets;
- it includes no usable recovery phrases;
- it is committed and pushed to the v0.5.2 phase branch.
