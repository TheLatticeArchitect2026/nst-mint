# NST Core v0.5.2 Base Sepolia Read-Only Public Hosting Provisioning Plan

Status: PUBLIC_URL_REQUIRED_BUT_NOT_YET_AVAILABLE_HOSTING_PROVISIONING_REQUIRED
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-14T09:38:47Z
Current commit at plan creation: 919cb81e875de96eeefe2974b773284603b6d375

## Purpose

The Base Sepolia read-only pilot has reached the external-publication approval stage, but no actual public HTTPS URL exists yet.

The prior public URL record command was correctly stopped before entering a placeholder URL.

The next engineering task is to provision a real public HTTPS endpoint for the Base Sepolia read-only pilot.

## Required public URL properties

The public URL must:

- use `https://`;
- be reachable from the public internet;
- return an acceptable HTTP status;
- contain no query string;
- contain no fragment;
- contain no embedded credentials;
- contain no token, secret, key, auth value, signature, or password material;
- not be localhost;
- not be an internal `.local`, `.lan`, or `.internal` address;
- serve only the Base Sepolia read-only pilot surface;
- preserve all no-wallet-write boundaries;
- preserve all no-transaction boundaries;
- preserve all no-mainnet boundaries.

## Approved scope

Approved scope:

- Base Sepolia only;
- chain ID 84532 only;
- read-only pilot only;
- evidence-bound config candidate only;
- public static/read-only hosting only.

## Not approved

Not approved:

- mainnet;
- production value;
- wallet writes;
- transactions;
- approval execution;
- governance writes;
- treasury routes;
- private keys;
- seed phrases;
- wallet secrets;
- private RPC credentials.

## Hosting provisioning options

Acceptable hosting path must satisfy the above rules.

Candidate paths may include:

- static hosting for the public interface package;
- a deployment preview promoted to a stable HTTPS URL;
- a static site host connected to the repository;
- a custom domain later, if controlled and HTTPS.

No provider is approved by this plan alone.

A selected provider must be recorded before a public URL record is created.

## Required next artifact

The next allowed artifact is:

- Base Sepolia read-only hosting provider decision receipt.

Alternative next artifact:

- Base Sepolia read-only hosting provisioning receipt, if provider and deployment path are already chosen.

The next artifact is not:

- fake URL record;
- placeholder URL record;
- mainnet deployment;
- transaction execution;
- write method execution.

## Evidence

Reviewed config candidate: `docs/generated/V0_5_2_BASE_SEPOLIA_READ_ONLY_CONFIG_CANDIDATE.json`

Reviewed config SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

External-publication receipt commit: 919cb81e875de96eeefe2974b773284603b6d375

Public launch package receipt commit: 9a8402b464d58e8d84495784e97bce1c598e38af

README pilot package receipt commit: 0e09bcd8a3c227c95921c985c7dd95186603f097

Public demo approval receipt commit: 6b111eebbb48d73d48afde2f7a614369cb85d484

Read selector count: 158

Write selector blocklist count: 84

Approval selector in read methods: no

Approval selector in write blocklist: yes

Read/write selector overlap: none
