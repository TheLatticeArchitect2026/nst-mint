// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IShield {
 function isBanned(address user) external view returns (bool);
 function isVetted(address user) external view returns (bool);
 function isCanadian(address user) external view returns (bool);
}
