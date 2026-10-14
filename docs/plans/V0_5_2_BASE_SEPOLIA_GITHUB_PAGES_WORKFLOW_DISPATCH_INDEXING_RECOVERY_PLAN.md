# NST Core v0.5.2 Base Sepolia GitHub Pages Workflow Dispatch Indexing Recovery Plan

Status: GITHUB_PAGES_WORKFLOW_DISPATCH_BLOCKED_BY_ACTIONS_METADATA_INDEXING_PENDING_TRIGGER_NORMALIZATION
Phase: v0.5.2 mainnet readiness
Phase branch: phase/v0.5.2-mainnet-readiness
Default branch: main
Created UTC: 2026-10-14T12:49:54Z
Phase commit at blocker creation: d8c08fe3706b1f5ff8fd97cf5cb05b6e7acb471c

## Finding

The workflow file exists on the default branch.

The workflow file contains an explicit workflow_dispatch trigger.

GitHub Actions API metadata lists the workflow as active.

Direct dispatch by workflow ID is still rejected by GitHub with a workflow_dispatch trigger error.

## Evidence

Repository: TheLatticeArchitect2026/nst-mint

Workflow file: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Workflow ID: 384195455

Workflow API name: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Workflow API path: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Workflow API state: active

Workflow API created at: 2026-10-14T07:19:14.000-03:00

Workflow API updated at: 2026-10-14T08:42:56.000-03:00

GitHub Pages build type: workflow

GitHub Pages URL: https://thelatticearchitect2026.github.io/nst-mint/

Dispatch error: gh: Workflow does not have 'workflow_dispatch' trigger (HTTP 422)

## Decision

Do not record the public URL yet.

Do not treat the existing Pages URL as the formal Base Sepolia read-only pilot URL yet.

Normalize or refresh the default-branch workflow trigger metadata before attempting the manual deployment again.

## Required next artifact

The next allowed artifact is:

- GitHub Pages workflow dispatch trigger normalization receipt.

## Not approved

This plan does not approve:

- public URL record;
- mainnet deployment;
- transaction execution;
- write method execution.

## Boundaries

Mainnet approved: NO

Write method execution approved: NO

Transaction execution approved: NO

Public URL recorded by this plan: NO

External launch executed by this plan: NO
