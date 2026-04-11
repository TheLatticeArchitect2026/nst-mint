// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./interfaces/IShield.sol";

contract Shield is IShield {
 address public owner;
 address public pendingOwner;

mapping(address => bool) private _isBanned;
    mapping(address => bool) private _isVetted;
    mapping(address => bool) private _isCanadian;
    mapping(address => bool) private _hasAppliedInternational;
    mapping(address => bool) private _hasAuditPassedInternational;

    error NotOwner();
    error NotPendingOwner();
    error ZeroAddress();
    error AlreadyBanned();
    error AlreadyVetted();
    error InternationalStepMissing();

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event UserBanned(address indexed user);
    event CanadianVetted(address indexed user);
    event InternationalApplied(address indexed user);
    event InternationalAuditPassed(address indexed user);
    event InternationalVetted(address indexed user);

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    constructor(address initialOwner) {
        if (initialOwner == address(0)) revert ZeroAddress();
        owner = initialOwner;
        emit OwnershipTransferred(address(0), initialOwner);
    }

    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner == address(0)) revert ZeroAddress();
        pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner, newOwner);
    }

    function acceptOwnership() external {
        if (msg.sender != pendingOwner) revert NotPendingOwner();
        address oldOwner = owner;
        owner = pendingOwner;
        pendingOwner = address(0);
        emit OwnershipTransferred(oldOwner, owner);
    }

    function ban(address user) external onlyOwner {
        if (user == address(0)) revert ZeroAddress();
        if (_isBanned[user]) revert AlreadyBanned();
        _isBanned[user] = true;
        _isVetted[user] = false;
        emit UserBanned(user);
    }

    function vetCanadian(address user) external onlyOwner {
        if (user == address(0)) revert ZeroAddress();
        if (_isBanned[user]) revert AlreadyBanned();
        if (_isVetted[user]) revert AlreadyVetted();
        _isCanadian[user] = true;
        _isVetted[user] = true;
        emit CanadianVetted(user);
    }

    function applyInternational(address user) external onlyOwner {
        if (user == address(0)) revert ZeroAddress();
        if (_isBanned[user]) revert AlreadyBanned();
        _hasAppliedInternational[user] = true;
        emit InternationalApplied(user);
    }

    function passInternationalAudit(address user) external onlyOwner {
        if (user == address(0)) revert ZeroAddress();
        if (_isBanned[user]) revert AlreadyBanned();
        if (!_hasAppliedInternational[user]) revert InternationalStepMissing();
        _hasAuditPassedInternational[user] = true;
        emit InternationalAuditPassed(user);
    }

    function vetInternational(address user) external onlyOwner {
        if (user == address(0)) revert ZeroAddress();
        if (_isBanned[user]) revert AlreadyBanned();
        if (_isVetted[user]) revert AlreadyVetted();
        if (!_hasAppliedInternational[user]) revert InternationalStepMissing();
        if (!_hasAuditPassedInternational[user]) revert InternationalStepMissing();
        _isVetted[user] = true;
        emit InternationalVetted(user);
    }

    function isBanned(address user) external view returns (bool) {
        return _isBanned[user];
    }

    function isVetted(address user) external view returns (bool) {
        return _isVetted[user];
    }

    function isCanadian(address user) external view returns (bool) {
        return _isCanadian[user];
    }
}
