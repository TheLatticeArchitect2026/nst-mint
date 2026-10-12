# Static Boundary Expectations

Status: CONTROLLED_SOURCE_PENDING_STATIC_TEST_RECEIPT

Expected network: Base Sepolia

Expected chain ID: 84532

Reviewed config candidate commit: 79e5126f6752c9178980d07f4bd8bd511fdb47f5

Reviewed config candidate SHA-256: `deae06b5dc18077c7c3dcb442869c463e86c68fd4e21366356cf7482f32e39b5`

Static tests must confirm:

- no signing path;
- no transaction execution path;
- no write selector exposed as a read method;
- approval selector blocked from read methods;
- Base Sepolia chain ID enforced;
- mainnet blocked;
- public demo blocked;
- no private credentials.
