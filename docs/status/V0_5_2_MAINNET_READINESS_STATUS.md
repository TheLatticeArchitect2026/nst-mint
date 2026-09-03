# NST Core v0.5.2 Mainnet Readiness Phase

Status: OPEN
Base release: v0.5.1-base-sepolia-live
Base commit: f8b054e66b7afc78caa0163c2619c56f6952e0d3
Branch: phase/v0.5.2-mainnet-readiness
Opened UTC: 2026-09-03T09:09:49Z

## Objective
Prepare NST Core for mainnet-grade operation after the successful Base Sepolia v0.5.1 live release.

## Completed foundation
- Base Sepolia live deployment completed.
- BaseScan source verification completed.
- GitHub release published with evidence assets.
- Remote tag audit completed.
- Project ledger and master status committed to main.

## v0.5.2 workstream
- Reconcile stale master-spec next-task language against the completed v0.5.1 deployment.
- Review role ownership, treasury ownership, operator permissions, and deployment handoff assumptions.
- Harden release scripts and receipt checks so no manual repair is required.
- Clean Foundry lint warnings where safe without changing protocol behavior.
- Build mainnet-readiness runbook, deployment checklist, rollback checklist, and acceptance gates.
- Prepare a mainnet candidate plan without deploying mainnet contracts yet.

## Phase gate
No mainnet deployment until tests, scripts, role review, release documentation, and operator checklist are all green.
