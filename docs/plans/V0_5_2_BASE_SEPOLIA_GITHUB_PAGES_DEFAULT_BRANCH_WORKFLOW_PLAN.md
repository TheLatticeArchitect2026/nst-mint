# NST Core v0.5.2 Base Sepolia GitHub Pages Default-Branch Workflow Plan

Status: GITHUB_PAGES_BLOCKED_PENDING_DEFAULT_BRANCH_WORKFLOW_AND_PAGES_SOURCE_SWITCH
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-14T11:26:46Z
Current commit at readiness check: aeb875ccdaaca782dcef3ffee05aac293162a83f

## Finding

The GitHub Pages deployment workflow exists on the v0.5.2 phase branch.

The workflow does not yet exist on the repository default branch.

The repository default branch is: main

The current branch is: phase/v0.5.2-mainnet-readiness

GitHub Pages is currently configured as build type: legacy

GitHub Pages current source branch: main

GitHub Pages current source path: /

Existing GitHub Pages URL: https://thelatticearchitect2026.github.io/nst-mint/

## Decision

The existing GitHub Pages URL must not be recorded as the Base Sepolia read-only pilot URL yet.

The GitHub Pages workflow must be exposed on the default branch before manual workflow dispatch can be treated as ready.

The repository Pages source must be switched to GitHub Actions before the workflow can be used as the controlled Pages publisher.

## Required next artifact

The next allowed artifact is one of:

- default-branch workflow promotion receipt; or
- controlled merge / promotion receipt that places the workflow on main; and
- GitHub Pages source switch receipt.

## Not approved

This plan does not approve:

- recording the legacy Pages URL as the pilot URL;
- running a placeholder URL record;
- mainnet deployment;
- transaction execution;
- write method execution.

## Boundaries

Mainnet approved: NO

Write method execution approved: NO

Transaction execution approved: NO

Public URL recorded by this plan: NO

External launch executed by this plan: NO
