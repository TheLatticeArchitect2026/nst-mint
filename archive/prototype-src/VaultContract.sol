// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./CFT.sol";

contract VaultContract {
    address public owner;
    address public nst;
    CFT public cft;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    event Deposited(address indexed from, uint256 amount);
    event Withdrawn(address indexed to, uint256 amount);

    constructor(address _nst, address _cft) {
        owner = msg.sender;
        nst = _nst;
        cft = CFT(_cft);
    }

    function deposit(uint256 amount) external {
        require(cft.transferFrom(msg.sender, address(this), amount), "Deposit failed");
        emit Deposited(msg.sender, amount);
    }

    function withdraw(address to, uint256 amount) external onlyOwner {
        require(cft.transfer(to, amount), "Withdraw failed");
        emit Withdrawn(to, amount);
    }
}
