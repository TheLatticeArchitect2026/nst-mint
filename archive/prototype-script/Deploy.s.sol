// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";

import "../src/Verifier.sol";
import "../src/VettingContract.sol";
import "../src/CFT.sol";
import "../src/InvoiceEscrow.sol";
import "../src/LendingPool.sol";
import "../src/NSTLattice.sol";
import "../src/VaultContract.sol";

contract DeployNSTLattice is Script {
    function run() external {
        uint256 deployerKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerKey);

        Verifier verifier = new Verifier();
        VettingContract vetting = new VettingContract(address(verifier));

        VaultContract vaultPlaceholder = new VaultContract(address(0), address(0));

        CFT cft = new CFT(address(vaultPlaceholder), address(vetting));
        InvoiceEscrow escrow = new InvoiceEscrow(address(cft), address(vetting));
        LendingPool lending = new LendingPool(address(cft), address(vetting));

        NSTLattice nst = new NSTLattice(
            address(cft),
            address(escrow),
            address(lending),
            address(vetting),
            address(vaultPlaceholder)
        );

        VaultContract vault = new VaultContract(address(nst), address(cft));

        nst.updateVault(address(vault));

        cft.transferOwnership(address(nst));
        nst.acceptCFTTokenOwnership();
        nst.setCFTYieldPool(address(vault));

        escrow.transferOwnership(address(nst));
        nst.acceptInvoiceEscrowOwnership();

        vm.stopBroadcast();
    }
}
