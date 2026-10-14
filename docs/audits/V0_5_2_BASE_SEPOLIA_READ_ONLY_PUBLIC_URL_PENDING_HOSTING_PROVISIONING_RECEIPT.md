# NST Core v0.5.2 Base Sepolia Read-Only Public URL Pending Hosting Provisioning Receipt

Status: PUBLIC_URL_RECORD_BLOCKED_PENDING_REAL_PUBLIC_HTTPS_HOSTING_PROVISIONING
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-14T09:38:47Z
Current commit at pending-hosting receipt creation: 919cb81e875de96eeefe2974b773284603b6d375

Reviewed config candidate file: docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

External-publication receipt commit: 919cb81e875de96eeefe2974b773284603b6d375

External-publication gate receipt commit: 8f9e07078a86fa31cb4d08f9e5b5f69359398b0f

Public launch package receipt commit: 9a8402b464d58e8d84495784e97bce1c598e38af

README pilot package receipt commit: 0e09bcd8a3c227c95921c985c7dd95186603f097

Public demo approval receipt commit: 6b111eebbb48d73d48afde2f7a614369cb85d484

Read method allowlist commit: 5e13ab4cba6f5d5631da03fff1704e890e960a2a

Write method blocklist commit: 733ce302ec9823d00fcf9c84447b77289174efa8

Mainnet readiness blocker register commit: e800078973ba5f378fe794b2acad14032bd65c45

Mainnet readiness runbook commit: e800078973ba5f378fe794b2acad14032bd65c45

Network: Base Sepolia
Chain ID: 84532
Environment: testnet only
Production value: none
Mainnet value: none

Public URL record attempted: YES

Public URL available: NO

Public URL placeholder entered: NO

Public URL record command aborted intentionally: YES

Public URL record result: BLOCKED_PENDING_REAL_PUBLIC_HTTPS_URL

Hosting provisioning required: YES

Hosting provider decision required: YES

Public URL record may resume after real HTTPS URL exists: YES

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

Read methods reviewed: 213

Write methods blocked: 135

Read selectors reviewed: 158

Write selectors reviewed: 84

Read/write selector overlap: NONE

Approval selector in read methods: NO

Approval selector in write blocklist: YES

No secret-assignment-shaped values detected: PASS

No private keys detected: PASS

No seed phrases detected: PASS

No wallet secrets detected: PASS

No private RPC credentials detected: PASS

No forbidden send/sign path detected: PASS

Base Sepolia chain ID confirmed: PASS

## Decision

The public URL record is blocked because no real public HTTPS URL exists yet.

This is the correct result.

A placeholder URL must not be recorded.

The next task is to provision public HTTPS hosting for the Base Sepolia read-only pilot.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only hosting provider decision receipt.

Alternative next artifact:

- Base Sepolia read-only hosting provisioning receipt, if the provider and deployment path are already chosen.

The next artifact is not:

- placeholder public URL record;
- fake public URL record;
- mainnet deployment;
- transaction execution;
- write method execution.

## Remaining blockers

Real public HTTPS URL remains required.

Public URL record remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.
