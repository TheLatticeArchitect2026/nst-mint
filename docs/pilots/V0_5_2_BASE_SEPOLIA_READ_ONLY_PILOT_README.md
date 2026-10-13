# NST Core v0.5.2 Base Sepolia Read-Only Pilot

Status: README_PILOT_PACKAGE_CREATED_PENDING_PUBLIC_LAUNCH_PACKAGE_GATE

This pilot package documents the approved Base Sepolia read-only public pilot path for NST Core v0.5.2.

The pilot is testnet-only.

The pilot is read-only.

The pilot has no production value.

The pilot does not approve mainnet.

The pilot does not approve wallet writes.

The pilot does not approve transactions.

The pilot does not approve governance writes.

The pilot does not approve treasury routes.

## Network

Network: Base Sepolia

Chain ID: 84532

Environment: testnet only

Production value: none

Mainnet authority: none

## Evidence-bound source of truth

Reviewed config candidate: `docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json`

Reviewed config SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Read method count: 213

Write method blocklist count: 135

Read selector count: 158

Write selector count: 84

Approval selector in read methods: no

Approval selector in write blocklist: yes

Read/write selector overlap: none

## Pilot source locations

Read-only client package:

- `packages/base-sepolia-read-only-client`

Read-only public interface package:

- `apps/base-sepolia-read-only-public-interface`

Pilot documentation package:

- `docs/pilots/V0_5_2_BASE_SEPOLIA_READ_ONLY_PILOT_README.md`
- `docs/pilots/V0_5_2_BASE_SEPOLIA_READ_ONLY_PILOT_BOUNDARIES.md`
- `docs/pilots/V0_5_2_BASE_SEPOLIA_READ_ONLY_PILOT_MANIFEST.md`

## User-facing warnings

Any public-facing pilot interface must display:

- Base Sepolia testnet only.
- No production value.
- Mainnet is not approved.
- Read-only interface only.
- Wallet write actions are not available.
- Transaction actions are not available.
- Approval/write methods are blocked.

## Operator rules

Do not add private keys.

Do not add seed phrases.

Do not add wallet secrets.

Do not add private RPC credentials.

Do not publish a public URL without a later public launch package receipt.

Do not represent this pilot as mainnet.

Do not represent this pilot as production.

Do not enable wallet writes.

Do not enable transactions.

Do not enable approval calls.

## Next required gate

The next required artifact is:

- Base Sepolia read-only public launch package gate receipt.

This README package does not itself publish the pilot.

This README package does not itself launch an external demo.
