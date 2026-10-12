import type { HexCalldata, HexSelector, ReadOnlyConfigCandidate } from "./types.js";

export const BASE_SEPOLIA_CHAIN_ID = 84532 as const;
export const BASE_SEPOLIA_CHAIN_ID_HEX = "0x14a34" as const;
export const BLOCKED_APPROVAL_SELECTOR = "0x095ea7b3" as const;

const SELECTOR_PATTERN = /^0x[0-9a-fA-F]{8}$/;
const CALLDATA_PATTERN = /^0x[0-9a-fA-F]*$/;

export interface SelectorControls {
  readonly readSelectors: ReadonlySet<string>;
  readonly writeSelectors: ReadonlySet<string>;
}

export function normalizeSelector(selector: string): HexSelector {
  const normalized = selector.toLowerCase();
  if (!SELECTOR_PATTERN.test(normalized)) {
    throw new Error(`Invalid selector: ${selector}`);
  }
  return normalized as HexSelector;
}

export function calldataSelector(calldata: HexCalldata): HexSelector {
  if (!CALLDATA_PATTERN.test(calldata)) {
    throw new Error("Invalid calldata hex");
  }
  if (calldata.length < 10) {
    throw new Error("Calldata is too short to contain a selector");
  }
  return calldata.slice(0, 10).toLowerCase() as HexSelector;
}

export function collectSelectorControls(config: ReadOnlyConfigCandidate): SelectorControls {
  const readSelectors = new Set<string>();
  const writeSelectors = new Set<string>();

  for (const contract of config.contracts) {
    for (const method of contract.readMethods) {
      const selector = normalizeSelector(method.selector);
      if (selector === BLOCKED_APPROVAL_SELECTOR) {
        throw new Error("Approval selector is not allowed in read methods");
      }
      if (method.signature === "approve(address,uint256)") {
        throw new Error("Approval signature is not allowed in read methods");
      }
      if (method.stateMutability !== "view" && method.stateMutability !== "pure") {
        throw new Error(`Non-read method found: ${method.signature}`);
      }
      readSelectors.add(selector);
    }
  }

  for (const item of config.writeSelectorBlocklist) {
    const selector = normalizeSelector(item.selector);
    writeSelectors.add(selector);
  }

  if (!writeSelectors.has(BLOCKED_APPROVAL_SELECTOR)) {
    throw new Error("Approval selector must be present in the write blocklist");
  }

  for (const selector of readSelectors) {
    if (writeSelectors.has(selector)) {
      throw new Error(`Read/write selector overlap: ${selector}`);
    }
  }

  return { readSelectors, writeSelectors };
}

export function assertBaseSepoliaChainId(chainId: string | number | bigint): void {
  const numeric =
    typeof chainId === "string"
      ? Number(chainId.startsWith("0x") ? BigInt(chainId) : chainId)
      : Number(chainId);

  if (numeric !== BASE_SEPOLIA_CHAIN_ID) {
    throw new Error(`Unsupported chain ID. Expected ${BASE_SEPOLIA_CHAIN_ID}.`);
  }
}

export function assertReadOnlyConfig(config: ReadOnlyConfigCandidate): SelectorControls {
  if (config.network.name !== "Base Sepolia") {
    throw new Error("Config network must be Base Sepolia");
  }
  if (config.network.chainId !== BASE_SEPOLIA_CHAIN_ID) {
    throw new Error("Config chain ID must be Base Sepolia chain ID 84532");
  }
  if (config.network.mainnetAuthority !== false) {
    throw new Error("Mainnet authority must be false");
  }
  if (config.boundaries.noSigning !== true || config.boundaries.noWrites !== true || config.boundaries.noTransactions !== true) {
    throw new Error("Read-only boundaries are not satisfied");
  }

  return collectSelectorControls(config);
}

export function assertAllowedReadCalldata(calldata: HexCalldata, controls: SelectorControls): HexSelector {
  const selector = calldataSelector(calldata);

  if (selector === BLOCKED_APPROVAL_SELECTOR) {
    throw new Error("Approval selector is blocked from read calls");
  }
  if (controls.writeSelectors.has(selector)) {
    throw new Error(`Write selector is blocked from read-only client: ${selector}`);
  }
  if (!controls.readSelectors.has(selector)) {
    throw new Error(`Selector is not read-allowlisted: ${selector}`);
  }

  return selector;
}
