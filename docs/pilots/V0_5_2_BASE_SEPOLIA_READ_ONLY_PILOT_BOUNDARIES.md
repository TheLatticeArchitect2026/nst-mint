# NST Core v0.5.2 Base Sepolia Read-Only Pilot Boundaries

Status: README_PILOT_BOUNDARIES_DEFINED_PENDING_PUBLIC_LAUNCH_PACKAGE_GATE

## Hard boundaries

Base Sepolia only: yes

Chain ID 84532 only: yes

Read-only calls only: yes

Wallet writes: blocked

Transactions: blocked

Approval selector: blocked

Mainnet: blocked

Production value: blocked

Treasury routes: blocked

Governance writes: blocked

Private keys: prohibited

Seed phrases: prohibited

Wallet secrets: prohibited

Private RPC credentials: prohibited

## Approved pilot scope

The approved scope is limited to:

- reading already-approved Base Sepolia contract addresses from the evidence-bound config;
- displaying testnet-only warnings;
- displaying read-only method/query state;
- rejecting write selectors;
- rejecting approval selector `0x095ea7b3`;
- rejecting transaction and signing paths;
- showing that this is not mainnet and not production.

## Not approved

The following are not approved:

- mainnet deployment;
- public launch without launch package receipt;
- mint execution;
- approve execution;
- transfer execution;
- governance writes;
- treasury routes;
- private RPC credentials;
- wallet signing;
- transaction broadcasting.

## Required evidence

Public demo approval receipt commit:

`6b111eebbb48d73d48afde2f7a614369cb85d484`

Public interface runtime review receipt commit:

`45fb91e63c9d513ede2c503b3cf237c38770d4d3`

Public interface package test execution receipt commit:

`99ad509b7966c6be68842ae3845ad7d97a10a1a6`

Reviewed config SHA-256:

`deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`
