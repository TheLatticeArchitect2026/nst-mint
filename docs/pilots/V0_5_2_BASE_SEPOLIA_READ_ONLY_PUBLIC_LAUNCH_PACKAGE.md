# NST Core v0.5.2 Base Sepolia Read-Only Public Launch Package

Status: READ_ONLY_PUBLIC_LAUNCH_PACKAGE_CREATED_PENDING_EXTERNAL_PUBLICATION_GATE

This package is the controlled public launch package for the Base Sepolia read-only pilot path.

It does not publish an external URL.

It does not execute a launch.

It does not approve mainnet.

It does not approve production value.

It does not approve wallet writes.

It does not approve transactions.

It does not approve governance writes.

It does not approve treasury routes.

## Approved scope

Approved scope:

- Base Sepolia only.
- Chain ID 84532 only.
- Read-only interface path only.
- Evidence-bound config candidate only.
- No private keys.
- No seed phrases.
- No wallet secrets.
- No private RPC credentials.
- No write methods.
- No transactions.
- No mainnet.

## Source of truth

Reviewed config candidate: `docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json`

Reviewed config SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Read method count: 213

Write method blocklist count: 135

Read selector count: 158

Write selector count: 84

Read/write selector overlap: none

Approval selector in read methods: no

Approval selector in write blocklist: yes

## Required user-facing warnings

Any public launch surface must show:

- Base Sepolia testnet only.
- No production value.
- Mainnet is not approved.
- Read-only interface only.
- Wallet write actions are not available.
- Transaction actions are not available.
- Approval and write methods are blocked.

## Required publication rule

External publication requires a later external-publication gate or publication receipt.

This package alone does not authorize publishing a URL.
