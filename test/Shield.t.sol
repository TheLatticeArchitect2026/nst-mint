// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {Shield} from "../src/Shield.sol";

contract ShieldTest is Test {
 Shield shield;

 address owner = address(1);
 address user = address(2);

 function setUp() public {
 shield = new Shield(owner);
 }

 function testOwnerSetCorrectly() public {
 assertEq(shield.owner(), owner);
 }

 function testBanUser() public {
 vm.prank(owner);
 shield.ban(user);
 assertTrue(shield.isBanned(user));
 }

 function testCannotBanZeroAddress() public {
 vm.prank(owner);
 vm.expectRevert();
 shield.ban(address(0));
 }

 function testOnlyOwnerCanBan() public {
 vm.prank(user);
 vm.expectRevert();
 shield.ban(user);
 }
}
