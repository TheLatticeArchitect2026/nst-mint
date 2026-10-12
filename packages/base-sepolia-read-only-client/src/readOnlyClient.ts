import type { HexCalldata, ReadOnlyCallRequest, ReadOnlyConfigCandidate } from "./types.js";
import {
  assertAllowedReadCalldata,
  assertBaseSepoliaChainId,
  assertReadOnlyConfig,
  type SelectorControls
} from "./selectorGuards.js";
import { assertNoSigningBoundary } from "./noSignerBoundary.js";

export interface ReadOnlyClientOptions {
  readonly config: ReadOnlyConfigCandidate;
  readonly observedChainId?: string | number | bigint;
}

export class BaseSepoliaReadOnlyClient {
  private readonly config: ReadOnlyConfigCandidate;
  private readonly selectorControls: SelectorControls;

  public constructor(options: ReadOnlyClientOptions) {
    assertNoSigningBoundary();

    if (options.observedChainId !== undefined) {
      assertBaseSepoliaChainId(options.observedChainId);
    }

    this.config = options.config;
    this.selectorControls = assertReadOnlyConfig(options.config);
  }

  public networkName(): "Base Sepolia" {
    return this.config.network.name;
  }

  public chainId(): 84532 {
    return this.config.network.chainId;
  }

  public isReadSelector(selector: string): boolean {
    const normalized = selector.toLowerCase();
    return this.selectorControls.readSelectors.has(normalized) && !this.selectorControls.writeSelectors.has(normalized);
  }

  public assertReadCalldata(calldata: HexCalldata): string {
    return assertAllowedReadCalldata(calldata, this.selectorControls);
  }

  public createEthCallRequest(to: `0x${string}`, data: HexCalldata, blockTag: "latest" | `0x${string}` = "latest"): ReadOnlyCallRequest {
    assertAllowedReadCalldata(data, this.selectorControls);

    return {
      method: "eth_call",
      params: [
        {
          to,
          data
        },
        blockTag
      ]
    };
  }
}
