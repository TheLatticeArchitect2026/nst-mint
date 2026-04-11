// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ICFT {
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

interface IVettingContract {
    function isApproved(address user) external view returns (bool);
}

contract InvoiceEscrow {
    error NotOwner();
    error NotPendingOwner();
    error ZeroAddress();
    error SenderNotVetted();
    error ReceiverNotVetted();
    error ZeroAmount();
    error BadDueDate();
    error TransferFailed();
    error NoTokensReceived();
    error NotPayable();
    error PastDue();
    error Unauthorized();
    error NotDisputable();
    error NotDisputed();
    error ReceiverTransferFailed();
    error SenderRefundFailed();
    error NotReceiver();
    error NotClaimable();
    error ClaimTransferFailed();
    error InvoiceDoesNotExist();

    address public owner;
    address public pendingOwner;

    ICFT public immutable cft;
    IVettingContract public immutable vetting;

    enum InvoiceStatus {
        CREATED,
        PAID,
        DISPUTED,
        RESOLVED,
        CLAIMED
    }

    struct Invoice {
        address sender;
        address receiver;
        uint256 amount;
        uint256 dueDate;
        InvoiceStatus status;
        string disputeReason;
        uint256 paidAt;
    }

    uint256 public invoiceCount;
    mapping(uint256 => Invoice) public invoices;

    event InvoiceCreated(
        uint256 indexed id,
        address indexed sender,
        address indexed receiver,
        uint256 amount,
        uint256 dueDate
    );
    event InvoicePaid(uint256 indexed id, address indexed payer);
    event InvoiceDisputed(uint256 indexed id, string reason);
    event DisputeResolved(uint256 indexed id, bool receiverWins);
    event InvoiceClaimed(uint256 indexed id, address indexed receiver);

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    constructor(address _cft, address _vetting) {
        if (_cft == address(0) || _vetting == address(0)) revert ZeroAddress();

        owner = msg.sender;
        cft = ICFT(_cft);
        vetting = IVettingContract(_vetting);

        emit OwnershipTransferred(address(0), msg.sender);
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

    function createInvoice(address receiver, uint256 amount, uint256 dueDate) external {
        if (!vetting.isApproved(msg.sender)) revert SenderNotVetted();
        if (!vetting.isApproved(receiver)) revert ReceiverNotVetted();
        if (amount == 0) revert ZeroAmount();
        if (dueDate <= block.timestamp) revert BadDueDate();

        uint256 balanceBefore = cft.balanceOf(address(this));
        if (!cft.transferFrom(msg.sender, address(this), amount)) revert TransferFailed();
        uint256 balanceAfter = cft.balanceOf(address(this));

        uint256 receivedAmount = balanceAfter - balanceBefore;
        if (receivedAmount == 0) revert NoTokensReceived();

        unchecked {
            invoiceCount += 1;
        }

        invoices[invoiceCount] = Invoice({
            sender: msg.sender,
            receiver: receiver,
            amount: receivedAmount,
            dueDate: dueDate,
            status: InvoiceStatus.CREATED,
            disputeReason: "",
            paidAt: 0
        });

        emit InvoiceCreated(invoiceCount, msg.sender, receiver, receivedAmount, dueDate);
    }

    function payInvoice(uint256 id) external {
        Invoice storage inv = invoices[id];
        if (inv.sender == address(0)) revert InvoiceDoesNotExist();
        if (inv.status != InvoiceStatus.CREATED) revert NotPayable();
        if (block.timestamp > inv.dueDate) revert PastDue();

        inv.status = InvoiceStatus.PAID;
        inv.paidAt = block.timestamp;

        emit InvoicePaid(id, msg.sender);
    }

    function disputeInvoice(uint256 id, string calldata reason) external {
        Invoice storage inv = invoices[id];
        if (inv.sender == address(0)) revert InvoiceDoesNotExist();
        if (msg.sender != inv.sender && msg.sender != inv.receiver) revert Unauthorized();
        if (
            inv.status != InvoiceStatus.CREATED &&
            inv.status != InvoiceStatus.PAID
        ) revert NotDisputable();

        inv.status = InvoiceStatus.DISPUTED;
        inv.disputeReason = reason;

        emit InvoiceDisputed(id, reason);
    }

    function resolveDispute(uint256 id, bool receiverWins) external onlyOwner {
        Invoice storage inv = invoices[id];
        if (inv.sender == address(0)) revert InvoiceDoesNotExist();
        if (inv.status != InvoiceStatus.DISPUTED) revert NotDisputed();

        inv.status = InvoiceStatus.RESOLVED;

        if (receiverWins) {
            if (!cft.transfer(inv.receiver, inv.amount)) revert ReceiverTransferFailed();
        } else {
            if (!cft.transfer(inv.sender, inv.amount)) revert SenderRefundFailed();
        }

        emit DisputeResolved(id, receiverWins);
    }

    function claimEscrow(uint256 id) external {
        Invoice storage inv = invoices[id];
        if (inv.sender == address(0)) revert InvoiceDoesNotExist();
        if (msg.sender != inv.receiver) revert NotReceiver();
        if (inv.status != InvoiceStatus.PAID) revert NotClaimable();

        inv.status = InvoiceStatus.CLAIMED;

        if (!cft.transfer(inv.receiver, inv.amount)) revert ClaimTransferFailed();

        emit InvoiceClaimed(id, inv.receiver);
    }
}
