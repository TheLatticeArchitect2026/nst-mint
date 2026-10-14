# NST Core v0.5.2 Base Sepolia GitHub Pages Readiness Blocker Receipt

Status: GITHUB_PAGES_READINESS_BLOCKED_PENDING_DEFAULT_BRANCH_WORKFLOW_AND_PAGES_SOURCE_SWITCH
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Created UTC: 2026-10-14T11:26:46Z
Current commit at readiness blocker receipt creation: aeb875ccdaaca782dcef3ffee05aac293162a83f

Repository: TheLatticeArchitect2026/nst-mint

Default branch: main

Current branch: phase/v0.5.2-mainnet-readiness

Workflow file: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Workflow exists on current branch: YES

Workflow exists on default branch: NO

GitHub Pages status: built

GitHub Pages build type: legacy

GitHub Pages source branch: main

GitHub Pages source path: /

GitHub Pages HTTPS enforced: true

Existing GitHub Pages URL: https://thelatticearchitect2026.github.io/nst-mint/

Existing GitHub Pages URL recorded as pilot URL: NO

GitHub Pages source is GitHub Actions workflow: NO

Reviewed workflow commit: aeb875ccdaaca782dcef3ffee05aac293162a83f

Reviewed workflow receipt commit: aeb875ccdaaca782dcef3ffee05aac293162a83f

Hosting provider decision receipt commit: 88620fde224d0c7b4104ccf1650753f4b1a7b4a3

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config SHA-256: deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5

Readiness check result: BLOCKED

Default-branch workflow required: YES

GitHub Pages source switch required: YES

Manual workflow run allowed now: NO

Public URL record may resume now: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

Approval selector in read methods: NO

Approval selector in write blocklist: YES

No secret-assignment-shaped values detected: PASS

No private keys detected: PASS

No seed phrases detected: PASS

No wallet secrets detected: PASS

No private RPC credentials detected: PASS

No forbidden send/sign path detected in interface source: PASS

Base Sepolia chain ID confirmed: PASS

## Decision

GitHub Pages readiness is blocked.

The Pages deployment workflow is prepared on the phase branch, but it is not yet present on the default branch.

GitHub Pages is still configured as legacy branch publishing.

The existing GitHub Pages URL must not be treated as the controlled Base Sepolia read-only pilot URL yet.

## Required next actions

1. Place the controlled Pages workflow on the default branch through a recorded promotion path.
2. Switch GitHub Pages source to GitHub Actions through a recorded settings-change receipt.
3. Manually run the Pages workflow.
4. Capture the real public HTTPS URL after the workflow deploys.
5. Resume public URL record only after the controlled deployment URL exists.

## Remaining blockers

Default-branch workflow exposure remains required.

GitHub Pages source switch remains required.

Manual workflow run remains required.

Real public HTTPS URL remains required.

Public URL record remains blocked.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.
