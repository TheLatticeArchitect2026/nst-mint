// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./VettingContract.sol";

contract CFT {
  string public constant name = "Canadian Forever Token";
  string public constant symbol = "CFT";
  uint8 public constant decimals = 18;
  uint256 public constant FEE_BPS = 200;
  uint256 public constant BPS_DENOMINATOR = 10_000;

  uint256 public totalSupply;

  address public owner;
  address public pendingOwner;
  address public yieldPool;

  VettingContract public vetting;

  bool public paused;

  mapping(address => uint256) public balanceOf;
  mapping(address => mapping(address => uint256)) public allowance;

  error NotOwner();
  error NotPendingOwner();
  error ZeroAddress();
  error ZeroAmount();
  error PausedState();
  error InsufficientBalance();
  error InsufficientAllowance();
  error RecipientNotVetted();

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);
  event Mint(address indexed to, uint256 amount);
  event Burn(address indexed from, uint256 amount);

  event OwnershipTransferStarted(address indexed previousOwner, address indexed pendingOwner);
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  event YieldPoolUpdated(address indexed previousYieldPool, address indexed newYieldPool);
  event VettingUpdated(address indexed previousVetting, address indexed newVetting);
  event PausedStateSet(bool isPaused);

  modifier onlyOwner() {
    if (msg.sender != owner) revert NotOwner();
    _;
  }

  modifier whenNotPaused() {
    if (paused) revert PausedState();
    _;
  }

  constructor(address _yieldPool, address _vetting) {
    if (_yieldPool == address(0) || _vetting == address(0)) revert ZeroAddress();

    owner = msg.sender;
    yieldPool = _yieldPool;
    vetting = VettingContract(_vetting);

    emit OwnershipTransferred(address(0), msg.sender);
    emit YieldPoolUpdated(address(0), _yieldPool);
    emit VettingUpdated(address(0), _vetting);
  }

  function approve(address spender, uint256 amount) external whenNotPaused returns (bool) {
    if (spender == address(0)) revert ZeroAddress();

    allowance[msg.sender][spender] = amount;
    emit Approval(msg.sender, spender, amount);
    return true;
  }

  function transfer(address to, uint256 amount) external whenNotPaused returns (bool) {
    _transfer(msg.sender, to, amount);
    return true;
  }

  function transferFrom(address from, address to, uint256 amount) external whenNotPaused returns (bool) {
    uint256 allowed = allowance[from][msg.sender];
    if (allowed < amount) revert InsufficientAllowance();

    allowance[from][msg.sender] = allowed - amount;
    emit Approval(from, msg.sender, allowance[from][msg.sender]);

    _transfer(from, to, amount);
    return true;
  }

  function mint(address to, uint256 amount) external onlyOwner whenNotPaused {
    if (to == address(0)) revert ZeroAddress();
    if (amount == 0) revert ZeroAmount();
    if (!vetting.isApproved(to)) revert RecipientNotVetted();

    balanceOf[to] += amount;
    totalSupply += amount;

    emit Mint(to, amount);
    emit Transfer(address(0), to, amount);
  }

  function burn(uint256 amount) external whenNotPaused {
    if (amount == 0) revert ZeroAmount();
    if (balanceOf[msg.sender] < amount) revert InsufficientBalance();

    balanceOf[msg.sender] -= amount;
    totalSupply -= amount;

    emit Burn(msg.sender, amount);
    emit Transfer(msg.sender, address(0), amount);
  }

  function setYieldPool(address newYieldPool) external onlyOwner {
    if (newYieldPool == address(0)) revert ZeroAddress();

    address oldYieldPool = yieldPool;
    yieldPool = newYieldPool;

    emit YieldPoolUpdated(oldYieldPool, newYieldPool);
  }

  function setVetting(address newVetting) external onlyOwner {
    if (newVetting == address(0)) revert ZeroAddress();

    address oldVetting = address(vetting);
    vetting = VettingContract(newVetting);

    emit VettingUpdated(oldVetting, newVetting);
  }

  function pause() external onlyOwner {
    paused = true;
    emit PausedStateSet(true);
  }

  function unpause() external onlyOwner {
    paused = false;
    emit PausedStateSet(false);
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

  function _transfer(address from, address to, uint256 amount) internal {
    if (to == address(0)) revert ZeroAddress();
    if (amount == 0) revert ZeroAmount();
    if (balanceOf[from] < amount) revert InsufficientBalance();
    if (!vetting.isApproved(to)) revert RecipientNotVetted();

    uint256 fee = (amount * FEE_BPS) / BPS_DENOMINATOR;
    uint256 net = amount - fee;

    balanceOf[from] -= amount;
    balanceOf[to] += net;
    balanceOf[yieldPool] += fee;

    emit Transfer(from, to, net);
    emit Transfer(from, yieldPool, fee);
  }
}
