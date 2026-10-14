# NST Core v0.5.2 Base Sepolia Read-Only GitHub Pages Hosting Plan

Status: HOSTING_PROVIDER_SELECTED_GITHUB_PAGES_PENDING_DEPLOYMENT_WORKFLOW_AND_PAGES_SETTINGS
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-14T10:11:12Z
Current commit at hosting provider decision: cc6a1b6bb936020523ac577b0b547e0b4b1f8023

## Decision

Selected hosting provider: GitHub Pages

Selected deployment path: GitHub Pages through GitHub Actions

Selected site type: static public HTTPS site

Selected scope: Base Sepolia read-only pilot only

## Reason

The repository is already hosted on GitHub.

The public pilot surface is intended to be static and read-only.

GitHub Pages through GitHub Actions is the selected provider path for controlled static hosting.

## Required next steps

The next allowed implementation artifact is:

- GitHub Pages deployment workflow receipt.

The deployment workflow must:

- publish only a static site artifact;
- preserve Base Sepolia only;
- preserve chain ID 84532 only;
- preserve read-only behavior;
- preserve the no wallet write boundary;
- preserve the no transaction boundary;
- preserve the no mainnet boundary;
- avoid private keys;
- avoid wallet secrets;
- avoid seed phrases;
- avoid private RPC credentials.

## Not approved by this plan

This plan does not approve:

- mainnet;
- production value;
- wallet writes;
- transactions;
- governance writes;
- treasury routes;
- public URL record before a real URL exists.

## Evidence

Pending hosting receipt commit: cc6a1b6bb936020523ac577b0b547e0b4b1f8023

External-publication receipt commit: 919cb81e875de96eeefe2974b773284603b6d375

Public launch package receipt commit: 9a8402b464d58e8d84495784e97bce1c598e38af

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config SHA-256: deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5

Approval selector in read methods: no

Approval selector in write blocklist: yes

Read/write selector overlap: none
