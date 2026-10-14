# NST Core v0.5.2 Base Sepolia GitHub Pages Manual Workflow Run Plan

Status: GITHUB_PAGES_SOURCE_SWITCHED_TO_WORKFLOW_PENDING_MANUAL_WORKFLOW_RUN
Phase: v0.5.2 mainnet readiness
Phase branch: phase/v0.5.2-mainnet-readiness
Default branch: main
Created UTC: 2026-10-14T12:16:09Z
Phase commit at source switch receipt creation: a31e39232adc90614e4f9561f2ee364797fd2d1a

## Decision

GitHub Pages source has been switched to GitHub Actions workflow publishing.

The workflow exists on the default branch.

The next required action is a manual workflow run.

## Required workflow

Workflow file: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Workflow trigger: workflow_dispatch only

Automatic run on push: NO

Manual workflow run required: YES

## GitHub Pages status after source switch

Repository: TheLatticeArchitect2026/nst-mint

Build type after switch: workflow

HTTPS enforced: true

Pages status after switch: built

Existing Pages URL: https://thelatticearchitect2026.github.io/nst-mint/

## Not approved

This plan does not approve:

- recording the URL before the controlled workflow has run;
- mainnet deployment;
- transaction execution;
- write method execution.

## Boundaries

Mainnet approved: NO

Write method execution approved: NO

Transaction execution approved: NO

Public URL recorded by this plan: NO

External launch executed by this plan: NO
