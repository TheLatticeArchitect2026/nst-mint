export type HexSelector = `0x${string}`;
export type HexCalldata = `0x${string}`;

export interface ReadOnlyMethodEntry {
  readonly methodName: string;
  readonly signature: string;
  readonly selector: HexSelector;
  readonly stateMutability: "view" | "pure";
  readonly inputCount: number;
  readonly outputCount: number;
  readonly allowlistId: string;
}

export interface ReadOnlyContractEntry {
  readonly abiRecordId: string;
  readonly supplementalAbiId: string;
  readonly contractName: string;
  readonly sourceFile: string;
  readonly abiSha256: string;
  readonly addressBindingStatus: string;
  readonly addressBindingNote: string;
  readonly readMethods: readonly ReadOnlyMethodEntry[];
}

export interface WriteSelectorBlocklistEntry {
  readonly selector: HexSelector;
  readonly signature: string;
  readonly methodName: string;
  readonly contractName: string;
  readonly abiRecordId: string;
  readonly exclusionClass: string;
  readonly status: "BLOCKED_FROM_READ_ONLY_CONFIG";
}

export interface ReadOnlyConfigCandidate {
  readonly schema: "nst.v0.5.2.base-sepolia.read-only-config-candidate";
  readonly status: "CANDIDATE_ONLY_PENDING_CONFIG_REVIEW";
  readonly phase: "v0.5.2-mainnet-readiness";
  readonly branch: string;
  readonly network: {
    readonly name: "Base Sepolia";
    readonly chainId: 84532;
    readonly environment: "testnet";
    readonly productionValue: false;
    readonly mainnetAuthority: false;
  };
  readonly boundaries: {
    readonly candidateOnly: true;
    readonly readOnly: true;
    readonly noSigning: true;
    readonly noWrites: true;
    readonly noTransactions: true;
    readonly noPrivateKeys: true;
    readonly noSeedPhrases: true;
    readonly noWalletSecrets: true;
    readonly noPrivateRpcCredentials: true;
    readonly notPublicDemoApproved: true;
    readonly notProtocolClientApproved: true;
    readonly notMainnet: true;
    readonly notProduction: true;
  };
  readonly contracts: readonly ReadOnlyContractEntry[];
  readonly writeSelectorBlocklist: readonly WriteSelectorBlocklistEntry[];
}

export interface ReadOnlyCallRequest {
  readonly method: "eth_call";
  readonly params: readonly [
    {
      readonly to: `0x${string}`;
      readonly data: HexCalldata;
    },
    "latest" | `0x${string}`
  ];
}
