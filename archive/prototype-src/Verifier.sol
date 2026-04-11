// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title LocalVerifier
/// @notice ANVIL / LOCAL DEVELOPMENT ONLY.
/// @dev Deterministic verifier harness for integration testing.
/// This is NOT a real cryptographic verifier and must never be used in production.
contract Verifier {
    error InvalidPublicInput();

    event LocalProofValidated(address indexed caller, uint256 indexed publicSignal);

    function verifyProof(
        uint[2] calldata,
        uint[2][2] calldata,
        uint[2] calldata,
        uint[1] calldata input
    ) external returns (bool) {
        uint256 publicSignal = input[0];
        if (publicSignal == 0) revert InvalidPublicInput();

        emit LocalProofValidated(msg.sender, publicSignal);
        return true;
    }
}
