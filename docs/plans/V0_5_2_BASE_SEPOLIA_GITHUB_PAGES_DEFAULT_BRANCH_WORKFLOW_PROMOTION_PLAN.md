# NST Core v0.5.2 Base Sepolia GitHub Pages Default-Branch Workflow Promotion Plan

Status: DEFAULT_BRANCH_WORKFLOW_PROMOTED_PENDING_PAGES_SOURCE_SWITCH_AND_MANUAL_RUN
Phase: v0.5.2 mainnet readiness
Phase branch: phase/v0.5.2-mainnet-readiness
Default branch: main
Created UTC: 2026-10-14T11:43:00Z
Phase commit at promotion receipt creation: baf199e8e35207133c7d6c2199ff899f29010970

## Decision

The GitHub Pages deployment workflow launcher has been promoted to the repository default branch.

The default-branch workflow checks out the v0.5.2 phase branch as its source content.

## Promotion details

Repository: TheLatticeArchitect2026/nst-mint

Workflow file: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Main promotion commit: c20fb411136e319663483950e9575cfc9085b41b

Workflow source branch used by launcher: phase/v0.5.2-mainnet-readiness

Automatic run on push: NO

Manual workflow dispatch required: YES

## Remaining required steps

GitHub Pages source must still be switched to GitHub Actions.

The workflow must still be manually run.

The real public HTTPS URL must still be captured after the controlled workflow deploys.

## Not approved

This promotion does not approve:

- recording the legacy Pages URL as the pilot URL;
- mainnet deployment;
- transaction execution;
- write method execution.

## Boundaries

Mainnet approved: NO

Write method execution approved: NO

Transaction execution approved: NO

Public URL recorded by this plan: NO

External launch executed by this plan: NO
