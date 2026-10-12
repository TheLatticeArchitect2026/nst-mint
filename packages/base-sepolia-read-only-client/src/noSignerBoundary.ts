export function assertNoSigningBoundary(): true {
  return true;
}

export function rejectSigningRequest(): never {
  throw new Error("Signing is outside the NST Base Sepolia read-only client boundary.");
}

export function rejectTransactionRequest(): never {
  throw new Error("Transaction execution is outside the NST Base Sepolia read-only client boundary.");
}
