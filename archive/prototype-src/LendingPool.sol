// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./CFT.sol";
import "./VettingContract.sol";

contract LendingPool {
    address public owner;
    CFT public cft;
    VettingContract public vetting;

    uint256 public constant INTEREST_BPS = 500;

    struct Loan {
        address borrower;
        uint256 amount;
        uint256 startTime;
        uint256 duration;
        bool repaid;
    }

    uint256 public loanCount;
    mapping(uint256 => Loan) public loans;
    mapping(address => uint256) public supplied;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    event Supplied(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event Borrowed(uint256 indexed id, address borrower, uint256 amount);
    event Repaid(uint256 indexed id, uint256 total);

    constructor(address _cft, address _vetting) {
        owner = msg.sender;
        cft = CFT(_cft);
        vetting = VettingContract(_vetting);
    }

    function supply(uint256 amount) external {
        require(vetting.isApproved(msg.sender), "Not vetted");
        require(amount > 0, "Zero amount");

        require(cft.transferFrom(msg.sender, address(this), amount), "Transfer failed");

        supplied[msg.sender] += amount;
        emit Supplied(msg.sender, amount);
    }

    function withdraw(uint256 amount) external {
        require(supplied[msg.sender] >= amount, "Insufficient balance");

        supplied[msg.sender] -= amount;
        require(cft.transfer(msg.sender, amount), "Withdraw failed");

        emit Withdrawn(msg.sender, amount);
    }

    function borrow(uint256 amount, uint256 duration) external {
        require(vetting.isApproved(msg.sender), "Not vetted");
        require(amount > 0, "Zero amount");

        loanCount += 1;

        loans[loanCount] = Loan({
            borrower: msg.sender,
            amount: amount,
            startTime: block.timestamp,
            duration: duration,
            repaid: false
        });

        require(cft.transfer(msg.sender, amount), "Transfer failed");

        emit Borrowed(loanCount, msg.sender, amount);
    }

    function repay(uint256 id) external {
        Loan storage loan = loans[id];

        require(msg.sender == loan.borrower, "Not borrower");
        require(!loan.repaid, "Already repaid");

        uint256 interest = (loan.amount * INTEREST_BPS) / 10_000;
        uint256 total = loan.amount + interest;

        loan.repaid = true;

        require(cft.transferFrom(msg.sender, address(this), total), "Repay failed");

        emit Repaid(id, total);
    }
}
