// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";
import {ICFT} from "./interfaces/ICFT.sol";

contract CFTv2 is ERC20, Ownable, ICFT {
 error ZeroAddress();

 constructor(address initialOwner) ERC20("CFT Token", "CFT") Ownable(initialOwner) {}

 function mint(address to, uint256 amount) external override onlyOwner {
 if (to == address(0)) revert ZeroAddress();
 _mint(to, amount);
 }

 function burn(uint256 amount) external override {
 _burn(msg.sender, amount);
 }
}
