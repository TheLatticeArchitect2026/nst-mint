export function assertNoWalletWriteBoundary(): true {
  return true;
}

export function rejectWalletWriteAttempt(): never {
  throw new Error("Wallet write actions are outside the NST Base Sepolia read-only public interface boundary.");
}

export function rejectTransactionAttempt(): never {
  throw new Error("Transaction actions are outside the NST Base Sepolia read-only public interface boundary.");
}

export function rejectMainnetAttempt(): never {
  throw new Error("Mainnet is outside the NST Base Sepolia read-only public interface boundary.");
}
