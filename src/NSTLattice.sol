// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";

import {CFTv2} from "./CFTv2.sol";
import {InvoiceEscrow} from "./InvoiceEscrow.sol";
import {Shield} from "./Shield.sol";

contract NSTLattice is Ownable, ReentrancyGuard {

  ////////////////////////////////////////////////////
  // ERRORS
  ////////////////////////////////////////////////////

  error NotApproved();
  error ZeroAddress();

  ////////////////////////////////////////////////////
  // STATE
  ////////////////////////////////////////////////////

  CFTv2 public immutable CFT;
  InvoiceEscrow public immutable ESCROW;
  Shield public immutable SHIELD;

  mapping(address => bool) public approved;

  ////////////////////////////////////////////////////
  // EVENTS
  ////////////////////////////////////////////////////

  event Approved(address indexed user, bool status);
  event InvoiceCreated(uint256 indexed invoiceId, address indexed creator);
  event InvoicePaid(uint256 indexed invoiceId, address indexed payer);
  event DisputeResolved(uint256 indexed invoiceId, address indexed resolver);

  ////////////////////////////////////////////////////
  // CONSTRUCTOR
  ////////////////////////////////////////////////////

  constructor(
    address initialOwner,
    address cft,
    address escrow,
    address shield
  ) Ownable(initialOwner) {
    if (cft == address(0) || escrow == address(0) || shield == address(0)) {
      revert ZeroAddress();
    }

    CFT = CFTv2(cft);
    ESCROW = InvoiceEscrow(escrow);
    SHIELD = Shield(shield);
  }

  ////////////////////////////////////////////////////
  // MODIFIERS
  ////////////////////////////////////////////////////

  modifier onlyApproved() {
    if (!approved[msg.sender]) revert NotApproved();
    _;
  }

  modifier notBanned(address user) {
    if (SHIELD.isBanned(user)) revert NotApproved();
    _;
  }

  ////////////////////////////////////////////////////
  // APPROVAL LOGIC
  ////////////////////////////////////////////////////

  function setApproved(address user, bool status) external onlyOwner {
    approved[user] = status;
    emit Approved(user, status);
  }

  ////////////////////////////////////////////////////
  // CORE ACTIONS
  ////////////////////////////////////////////////////

  function createInvoice(
    uint256 amount,
    address receiver
  )
    external
    onlyApproved
    notBanned(msg.sender)
    returns (uint256)
  {
    ESCROW.createInvoice(receiver, amount, block.timestamp + 30 days);
 uint256 invoiceId = ESCROW.invoiceCount();
    emit InvoiceCreated(invoiceId, msg.sender);
    return invoiceId;
  }

  function payInvoice(uint256 invoiceId)
    external
    nonReentrant
    notBanned(msg.sender)
  {
    ESCROW.payInvoice(invoiceId);
    emit InvoicePaid(invoiceId, msg.sender);
  }

  function resolveDispute(uint256 invoiceId)
    external
    onlyOwner
  {
    ESCROW.resolveDispute(invoiceId, true);
    emit DisputeResolved(invoiceId, msg.sender);
  }

  ////////////////////////////////////////////////////
  // TOKEN HELPERS
  ////////////////////////////////////////////////////

  function mint(address to, uint256 amount) external onlyOwner {
    CFT.mint(to, amount);
  }

  function burn(uint256 amount) external {
    CFT.burn(amount);
  }
}
