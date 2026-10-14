# NST Core v0.5.2 Base Sepolia GitHub Pages Workflow Dispatch Indexing Blocker Receipt

Status: GITHUB_PAGES_WORKFLOW_DISPATCH_BLOCKED_BY_ACTIONS_METADATA_INDEXING_PENDING_TRIGGER_NORMALIZATION
Phase: v0.5.2 mainnet readiness
Phase branch: phase/v0.5.2-mainnet-readiness
Default branch: main
Created UTC: 2026-10-14T12:49:54Z
Phase commit at blocker receipt creation: d8c08fe3706b1f5ff8fd97cf5cb05b6e7acb471c

Repository: TheLatticeArchitect2026/nst-mint

Workflow file: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Workflow exists on default branch: YES

workflow_dispatch present in default branch workflow: YES

Workflow API ID: 384195455

Workflow API name: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Workflow API path: .github/workflows/v0_5_2_base_sepolia_read_only_pages.yml

Workflow API state: active

Workflow API created at: 2026-10-14T07:19:14.000-03:00

Workflow API updated at: 2026-10-14T08:42:56.000-03:00

Direct dispatch attempted by workflow ID: YES

Direct dispatch result: REJECTED

Direct dispatch error: gh: Workflow does not have 'workflow_dispatch' trigger (HTTP 422)

GitHub Pages build type: workflow

GitHub Pages status: built

GitHub Pages HTTPS enforced: true

GitHub Pages URL at blocker time: https://thelatticearchitect2026.github.io/nst-mint/

Source switch receipt commit: d8c08fe3706b1f5ff8fd97cf5cb05b6e7acb471c

Manual workflow run plan commit: d8c08fe3706b1f5ff8fd97cf5cb05b6e7acb471c

Default branch workflow promotion receipt commit: a31e39232adc90614e4f9561f2ee364797fd2d1a

Workflow preparation receipt commit: aeb875ccdaaca782dcef3ffee05aac293162a83f

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config SHA-256: deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5

Readiness result: BLOCKED

Trigger normalization required: YES

Manual workflow run completed: NO

Controlled deployment verified: NO

Public URL ready for formal record: NO

Public URL recorded by this receipt: NO

External launch executed by this receipt: NO

Mainnet approved: NO

Transaction execution approved: NO

Write method execution approved: NO

Governance writes approved: NO

Treasury routes approved: NO

Approval selector in read methods: NO

Approval selector in write blocklist: YES

No private keys approved: YES

No seed phrases approved: YES

No wallet secrets approved: YES

No private RPC credentials approved: YES

Base Sepolia chain ID confirmed: YES

## Decision

GitHub Pages workflow dispatch is blocked by GitHub Actions metadata/indexing behavior.

The default-branch workflow file contains workflow_dispatch, but GitHub rejects the dispatch endpoint as if the trigger is not present.

The next step is to normalize or refresh the default-branch workflow trigger metadata and then retry the manual deployment.

This receipt does not deploy the site.

This receipt does not record a public URL.

This receipt does not approve mainnet.

This receipt does not authorize writes or transactions.

## Required next actions

1. Normalize or refresh the default-branch workflow trigger metadata.
2. Confirm GitHub Actions recognizes the workflow_dispatch trigger.
3. Manually run the workflow.
4. Verify the controlled public URL.
5. Record the public URL only after controlled deployment verification.

## Remaining blockers

Workflow dispatch recognition remains blocked.

Manual workflow run remains required.

Controlled public URL verification remains required.

Formal public URL record remains required.

Mainnet remains blocked.

Transaction rail execution remains blocked.

Governance writes remain blocked.

Treasury routes remain blocked.
