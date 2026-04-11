// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "forge-std/Test.sol";
import "../src/InvoiceEscrow.sol";

contract MockVetting {
mapping(address => bool) public approved;

function setApproved(address user, bool value) external {
approved[user] = value;
}

function isApproved(address user) external view returns (bool) {
return approved[user];
}
}

contract MockCFT {
string public constant name = "Mock CFT";
string public constant symbol = "MCFT";
uint8 public constant decimals = 18;

mapping(address => uint256) public balanceOf;
mapping(address => mapping(address => uint256)) public allowance;

function mint(address to, uint256 amount) external {
balanceOf[to] += amount;
}

function approve(address spender, uint256 amount) external returns (bool) {
allowance[msg.sender][spender] = amount;
return true;
}

function transfer(address to, uint256 amount) external returns (bool) {
require(balanceOf[msg.sender] >= amount, "Insufficient");
balanceOf[msg.sender] -= amount;
balanceOf[to] += amount;
return true;
}

function transferFrom(address from, address to, uint256 amount) external returns (bool) {
require(balanceOf[from] >= amount, "Insufficient");
require(allowance[from][msg.sender] >= amount, "Not allowed");
allowance[from][msg.sender] -= amount;
balanceOf[from] -= amount;
balanceOf[to] += amount;
return true;
}
}

contract InvoiceEscrowTest is Test {
InvoiceEscrow escrow;
MockCFT cft;
MockVetting vetting;

address owner = address(this);
address sender = address(0xA11CE);
address receiver = address(0xB0B);
address stranger = address(0xC0DE);

uint256 constant START_BAL = 1_000 ether;
uint256 constant AMOUNT = 100 ether;
uint256 constant DUE = 30 days;

function setUp() public {
cft = new MockCFT();
vetting = new MockVetting();
escrow = new InvoiceEscrow(address(cft), address(vetting));

vetting.setApproved(sender, true);
vetting.setApproved(receiver, true);

cft.mint(sender, START_BAL);

vm.prank(sender);
cft.approve(address(escrow), type(uint256).max);
}

function testCreateInvoiceLocksFunds() public {
uint256 dueDate = block.timestamp + DUE;

vm.prank(sender);
escrow.createInvoice(receiver, AMOUNT, dueDate);

assertEq(escrow.invoiceCount(), 1);

(
address storedSender,
address storedReceiver,
uint256 amount,
uint256 storedDueDate,
InvoiceEscrow.InvoiceStatus status,
string memory reason,
uint256 paidAt
) = escrow.invoices(1);

assertEq(storedSender, sender);
assertEq(storedReceiver, receiver);
assertEq(amount, AMOUNT);
assertEq(storedDueDate, dueDate);
assertEq(uint8(status), 0); // CREATED
assertEq(reason, "");
assertEq(paidAt, 0);

assertEq(cft.balanceOf(sender), START_BAL - AMOUNT);
assertEq(cft.balanceOf(address(escrow)), AMOUNT);
}

function testPayInvoiceMarksPaid() public {
vm.prank(sender);
escrow.createInvoice(receiver, AMOUNT, block.timestamp + DUE);

vm.prank(sender);
escrow.payInvoice(1);

(
,
,
,
,
InvoiceEscrow.InvoiceStatus status,
,
uint256 paidAt
) = escrow.invoices(1);

assertEq(uint8(status), 1); // PAID
assertGt(paidAt, 0);
}

function testReceiverCanClaimPaidEscrow() public {
vm.prank(sender);
escrow.createInvoice(receiver, AMOUNT, block.timestamp + DUE);

vm.prank(sender);
escrow.payInvoice(1);

vm.prank(receiver);
escrow.claimEscrow(1);

(
,
,
,
,
InvoiceEscrow.InvoiceStatus status,
,

) = escrow.invoices(1);

assertEq(uint8(status), 4); // CLAIMED
assertEq(cft.balanceOf(receiver), AMOUNT);
assertEq(cft.balanceOf(address(escrow)), 0);
}

function testClaimEscrowRevertsIfNotPaid() public {
vm.prank(sender);
escrow.createInvoice(receiver, AMOUNT, block.timestamp + DUE);

vm.prank(receiver);
vm.expectRevert(InvoiceEscrow.NotClaimable.selector);
escrow.claimEscrow(1);
}

function testEitherPartyCanDispute() public {
vm.prank(sender);
escrow.createInvoice(receiver, AMOUNT, block.timestamp + DUE);

vm.prank(receiver);
escrow.disputeInvoice(1, "Receiver disputes");

(
,
,
,
,
InvoiceEscrow.InvoiceStatus status,
string memory reason,

) = escrow.invoices(1);

assertEq(uint8(status), 2); // DISPUTED
assertEq(reason, "Receiver disputes");
}

function testOwnerCanResolveDisputeForReceiver() public {
vm.prank(sender);
escrow.createInvoice(receiver, AMOUNT, block.timestamp + DUE);

vm.prank(receiver);
escrow.disputeInvoice(1, "Receiver disputes");

escrow.resolveDispute(1, true);

(
,
,
,
,
InvoiceEscrow.InvoiceStatus status,
,

) = escrow.invoices(1);

assertEq(uint8(status), 3); // RESOLVED
assertEq(cft.balanceOf(receiver), AMOUNT);
assertEq(cft.balanceOf(address(escrow)), 0);
}

function testOwnerCanResolveDisputeForSender() public {
vm.prank(sender);
escrow.createInvoice(receiver, AMOUNT, block.timestamp + DUE);

vm.prank(sender);
escrow.disputeInvoice(1, "Sender disputes");

escrow.resolveDispute(1, false);

(
,
,
,
,
InvoiceEscrow.InvoiceStatus status,
,

) = escrow.invoices(1);

assertEq(uint8(status), 3); // RESOLVED
assertEq(cft.balanceOf(sender), START_BAL);
assertEq(cft.balanceOf(address(escrow)), 0);
}

function testNonOwnerCannotResolveDispute() public {
vm.prank(sender);
escrow.createInvoice(receiver, AMOUNT, block.timestamp + DUE);

vm.prank(receiver);
escrow.disputeInvoice(1, "Receiver disputes");

vm.prank(stranger);
vm.expectRevert(InvoiceEscrow.NotOwner.selector);
escrow.resolveDispute(1, true);
}
}
