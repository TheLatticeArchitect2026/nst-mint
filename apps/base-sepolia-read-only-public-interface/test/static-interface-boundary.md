# Static Public Interface Boundary Expectations

Status: CONTROLLED_SOURCE_PENDING_INTERFACE_STATIC_TEST_AND_NO_SECRET_SCAN

Expected network: Base Sepolia

Expected chain ID: 84532

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Static tests must confirm:

- visible Base Sepolia testnet-only warning;
- no mainnet approval;
- no production value approval;
- no public demo approval;
- no wallet-write path;
- no transaction action path;
- approval selector blocked;
- no private credentials.
