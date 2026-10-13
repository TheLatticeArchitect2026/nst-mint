import type { PublicInterfaceWarning } from "./types.js";

export const PUBLIC_INTERFACE_WARNINGS: readonly PublicInterfaceWarning[] = [
  {
    id: "base-sepolia-testnet-only",
    severity: "critical",
    message: "Base Sepolia testnet only."
  },
  {
    id: "no-mainnet-approval",
    severity: "critical",
    message: "Mainnet is not approved."
  },
  {
    id: "no-production-value",
    severity: "critical",
    message: "No production value is approved."
  },
  {
    id: "read-only-interface",
    severity: "critical",
    message: "Read-only interface only."
  },
  {
    id: "no-wallet-writes",
    severity: "critical",
    message: "Wallet write actions are not available."
  },
  {
    id: "no-transactions",
    severity: "critical",
    message: "Transaction actions are not available."
  },
  {
    id: "no-public-demo-approval",
    severity: "critical",
    message: "Public demo launch is not approved."
  }
];
