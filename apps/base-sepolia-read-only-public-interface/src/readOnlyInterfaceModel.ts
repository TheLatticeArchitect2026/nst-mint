import {
  BASE_SEPOLIA_CHAIN_ID,
  BASE_SEPOLIA_NETWORK_NAME,
  BLOCKED_APPROVAL_SELECTOR,
  MAINNET_APPROVED,
  PRODUCTION_VALUE_APPROVED,
  PUBLIC_DEMO_APPROVED,
  PUBLIC_INTERFACE_STATUS,
  READ_METHOD_COUNT,
  TRANSACTION_EXECUTION_APPROVED,
  WALLET_WRITE_APPROVED,
  WRITE_METHOD_BLOCKLIST_COUNT
} from "./constants.js";
import { PUBLIC_INTERFACE_WARNINGS } from "./publicInterfaceWarnings.js";
import { assertNoWalletWriteBoundary } from "./noWalletWriteBoundary.js";
import type { PublicInterfaceBoundaries, PublicInterfaceModel, ReadOnlyQueryIntent } from "./types.js";

const SELECTOR_PATTERN = /^0x[0-9a-fA-F]{8}$/;

export const PUBLIC_INTERFACE_BOUNDARIES: PublicInterfaceBoundaries = {
  baseSepoliaOnly: true,
  chainId: BASE_SEPOLIA_CHAIN_ID,
  readOnly: true,
  ethCallOnly: true,
  noSigning: true,
  noWalletWrites: true,
  noTransactions: true,
  noPrivateKeys: true,
  noSeedPhrases: true,
  noWalletSecrets: true,
  noPrivateRpcCredentials: true,
  noMainnet: true,
  noProductionValue: true,
  noPublicDemoApproval: true
};

export function assertPublicInterfaceChainId(chainId: number): void {
  if (chainId !== BASE_SEPOLIA_CHAIN_ID) {
    throw new Error(`Unsupported chain ID. Expected ${BASE_SEPOLIA_CHAIN_ID}.`);
  }
}

export function createPublicInterfaceModel(observedChainId: number = BASE_SEPOLIA_CHAIN_ID): PublicInterfaceModel {
  assertNoWalletWriteBoundary();
  assertPublicInterfaceChainId(observedChainId);

  return {
    status: PUBLIC_INTERFACE_STATUS,
    title: "NST Base Sepolia Read-Only Interface",
    networkName: BASE_SEPOLIA_NETWORK_NAME,
    chainId: BASE_SEPOLIA_CHAIN_ID,
    warnings: PUBLIC_INTERFACE_WARNINGS,
    boundaries: PUBLIC_INTERFACE_BOUNDARIES,
    readMethodCount: READ_METHOD_COUNT,
    writeMethodBlocklistCount: WRITE_METHOD_BLOCKLIST_COUNT,
    canConnectWalletForWrites: WALLET_WRITE_APPROVED,
    canBroadcastTransactions: TRANSACTION_EXECUTION_APPROVED,
    canUseMainnet: MAINNET_APPROVED,
    publicDemoApproved: PUBLIC_DEMO_APPROVED
  };
}

export function createReadOnlyQueryIntent(selector: `0x${string}`, observedChainId: number = BASE_SEPOLIA_CHAIN_ID): ReadOnlyQueryIntent {
  assertNoWalletWriteBoundary();
  assertPublicInterfaceChainId(observedChainId);

  const normalizedSelector = selector.toLowerCase() as `0x${string}`;

  if (!SELECTOR_PATTERN.test(normalizedSelector)) {
    throw new Error("Invalid method selector.");
  }

  if (normalizedSelector === BLOCKED_APPROVAL_SELECTOR) {
    throw new Error("Approval selector is blocked from the public read-only interface.");
  }

  if (PUBLIC_DEMO_APPROVED !== false || MAINNET_APPROVED !== false || PRODUCTION_VALUE_APPROVED !== false) {
    throw new Error("Public interface approval boundaries are not satisfied.");
  }

  return {
    kind: "read-only-query-intent",
    networkName: BASE_SEPOLIA_NETWORK_NAME,
    chainId: BASE_SEPOLIA_CHAIN_ID,
    selector: normalizedSelector,
    status: "READY_FOR_INTERNAL_READ_ONLY_PLANNING",
    publicDemoApproved: PUBLIC_DEMO_APPROVED
  };
}
