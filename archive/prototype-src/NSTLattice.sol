// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./CFT.sol";
import "./InvoiceEscrow.sol";
import "./LendingPool.sol";
import "./VettingContract.sol";

contract NSTLattice {
    address public owner;

    CFT public cft;
    InvoiceEscrow public escrow;
    LendingPool public lending;
    VettingContract public vetting;

    address public vault;

    uint256 public constant FOUNDER_FEE_BPS = 100; // 1%

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    event Minted(
        address indexed user,
        uint256 grossAmount,
        uint256 feeAmount,
        uint256 netAmount
    );

    event VaultUpdated(address indexed vault);
    event EscrowOwnershipTransferStarted(address indexed newOwner);
    event EscrowOwnershipAccepted(address indexed escrow, address indexed owner);

    constructor(
        address _cft,
        address _escrow,
        address _lending,
        address _vetting,
        address _vault
    ) {
        require(_cft != address(0), "Zero cft");
        require(_escrow != address(0), "Zero escrow");
        require(_lending != address(0), "Zero lending");
        require(_vetting != address(0), "Zero vetting");

        owner = msg.sender;
        cft = CFT(_cft);
        escrow = InvoiceEscrow(_escrow);
        lending = LendingPool(_lending);
        vetting = VettingContract(_vetting);
        vault = _vault;
    }

    function mint(uint256 amount) external {
        require(vetting.isApproved(msg.sender), "Not vetted");
        require(amount > 0, "Zero amount");
        require(vault != address(0), "Vault not set");

        uint256 fee = (amount * FOUNDER_FEE_BPS) / 10_000;
        uint256 net = amount - fee;

        cft.mint(msg.sender, net);
        cft.mint(vault, fee);

        emit Minted(msg.sender, amount, fee, net);
    }

    function acceptCFTTokenOwnership() external onlyOwner {
        cft.acceptOwnership();
    }

    function transferEscrowOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "Zero address");
        escrow.transferOwnership(newOwner);
        emit EscrowOwnershipTransferStarted(newOwner);
    }

    function acceptInvoiceEscrowOwnership() external onlyOwner {
        escrow.acceptOwnership();
        emit EscrowOwnershipAccepted(address(escrow), address(this));
    }

    function setCFTYieldPool(address newYieldPool) external onlyOwner {
        cft.setYieldPool(newYieldPool);
    }

    function updateVault(address _vault) external onlyOwner {
        require(_vault != address(0), "Zero address");
        vault = _vault;
        emit VaultUpdated(_vault);
    }
}
