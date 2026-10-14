# NST Core v0.5.2 Base Sepolia Read-Only GitHub Pages Deployment Workflow Plan

Status: GITHUB_PAGES_DEPLOYMENT_WORKFLOW_PREPARED_PENDING_REPOSITORY_PAGES_SETTINGS_AND_MANUAL_RUN
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-14T10:19:02Z
Current commit at workflow plan creation: 88620fde224d0c7b4104ccf1650753f4b1a7b4a3

## Purpose

Prepare a GitHub Pages deployment workflow for the Base Sepolia read-only pilot.

## Deployment behavior

The workflow is manual only.

The workflow uses workflow_dispatch only.

The workflow does not run automatically on push.

The workflow builds a static artifact only.

The workflow publishes no wallet-write code.

The workflow publishes no transaction execution path.

The workflow publishes no mainnet approval path.

## Required repository setting

GitHub Pages must be configured in the repository settings with source set to GitHub Actions before the workflow can publish a site.

## Selected workflow actions

- actions/checkout@v6
- actions/configure-pages@v5
- actions/upload-pages-artifact@v4
- actions/deploy-pages@v4

## Evidence

Hosting provider decision receipt commit: 88620fde224d0c7b4104ccf1650753f4b1a7b4a3

Hosting plan commit: 88620fde224d0c7b4104ccf1650753f4b1a7b4a3

Pending hosting receipt commit: cc6a1b6bb936020523ac577b0b547e0b4b1f8023

External-publication receipt commit: 919cb81e875de96eeefe2974b773284603b6d375

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config SHA-256: deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5

## Boundaries

Mainnet approved: NO

Write method execution approved: NO

Transaction execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

Public URL recorded by this plan: NO

External launch executed by this plan: NO
