export type PublicInterfaceStatus = "CONTROLLED_SOURCE_NO_PUBLIC_DEMO_APPROVAL";
export type PublicInterfaceWarningSeverity = "critical" | "notice";

export interface PublicInterfaceWarning {
  readonly id: string;
  readonly severity: PublicInterfaceWarningSeverity;
  readonly message: string;
}

export interface PublicInterfaceBoundaries {
  readonly baseSepoliaOnly: true;
  readonly chainId: 84532;
  readonly readOnly: true;
  readonly ethCallOnly: true;
  readonly noSigning: true;
  readonly noWalletWrites: true;
  readonly noTransactions: true;
  readonly noPrivateKeys: true;
  readonly noSeedPhrases: true;
  readonly noWalletSecrets: true;
  readonly noPrivateRpcCredentials: true;
  readonly noMainnet: true;
  readonly noProductionValue: true;
  readonly noPublicDemoApproval: true;
}

export interface PublicInterfaceModel {
  readonly status: PublicInterfaceStatus;
  readonly title: string;
  readonly networkName: "Base Sepolia";
  readonly chainId: 84532;
  readonly warnings: readonly PublicInterfaceWarning[];
  readonly boundaries: PublicInterfaceBoundaries;
  readonly readMethodCount: number;
  readonly writeMethodBlocklistCount: number;
  readonly canConnectWalletForWrites: false;
  readonly canBroadcastTransactions: false;
  readonly canUseMainnet: false;
  readonly publicDemoApproved: false;
}

export interface ReadOnlyQueryIntent {
  readonly kind: "read-only-query-intent";
  readonly networkName: "Base Sepolia";
  readonly chainId: 84532;
  readonly selector: `0x${string}`;
  readonly status: "READY_FOR_INTERNAL_READ_ONLY_PLANNING";
  readonly publicDemoApproved: false;
}
