// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { ERC721 } from "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import { ReentrancyGuard } from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import { Pausable } from "openzeppelin-contracts/contracts/utils/Pausable.sol";
import { IERC20 } from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import { Strings } from "openzeppelin-contracts/contracts/utils/Strings.sol";

interface IUniswapV2RouterLike {
    function WETH() external view returns (address);

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable;
}

interface IERC5192 {
    event Locked(uint256 tokenId);
    event Unlocked(uint256 tokenId);

    function locked(
        uint256 tokenId
    ) external view returns (bool);
}

interface IBanRegistry {
    function isBanned(
        address account
    ) external view returns (bool);
}

interface IVettingRegistry {
    function isMintEligible(
        address account
    ) external view returns (bool);
}

/// @title NSTSBT
/// @notice Vetted-only, soulbound NST membership credential for NST Lattice.
/// @dev
/// - Token ID 0 is the canonical Genesis token
/// - Genesis consumes the recipient's one-and-only membership slot
/// - Founder payout wallet may differ from Genesis custody
/// - Every minter must pass ShieldRegistry vetting before mint
/// - Mint fee split is 90% founder payout / 10% yield route support
/// - Live ETH->CFT yield swaps defer safely when disabled or when router calls fail
contract NSTSBT is ERC721, AccessControl, ReentrancyGuard, Pausable, IERC5192 {
    using SafeERC20 for IERC20;
    using Strings for uint256;

    // =============================================================
    // ROLES
    // =============================================================

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant MINT_MANAGER_ROLE = keccak256("MINT_MANAGER_ROLE");
    bytes32 public constant METADATA_MANAGER_ROLE = keccak256("METADATA_MANAGER_ROLE");
    bytes32 public constant TREASURY_MANAGER_ROLE = keccak256("TREASURY_MANAGER_ROLE");
    bytes32 public constant SWAP_OPERATOR_ROLE = keccak256("SWAP_OPERATOR_ROLE");

    // =============================================================
    // ERRORS
    // =============================================================

    error ZeroAddress();
    error InvalidRoleHolder();
    error InvalidBpsConfig();
    error InvalidRouter();
    error InvalidRouterPath();
    error InvalidDependency(address target);
    error MintClosed();
    error MintPermanentlyClosed();
    error InvalidPayment(uint256 expected, uint256 received);
    error DirectETHNotAccepted();
    error UnsupportedCall();
    error AlreadyMinted(address account);
    error Soulbound();
    error FounderTokenProtected();
    error ETHTransferFailed();
    error SwapAmountZero();
    error SwapRetryFailed();
    error YieldSwapDisabled();
    error TokenDoesNotExist(uint256 tokenId);
    error BaseURIEmpty();
    error ContractURIEmpty();
    error BaseURIFrozen();
    error ContractURIFrozen();
    error PendingConfigNotSet();
    error DelayNotElapsed(uint256 executeAfter, uint256 currentTimestamp);
    error InvalidRecipient();
    error InvalidSweepAmount(uint256 available, uint256 requested);
    error NotMintEligible(address account);
    error BannedAccount(address account);
    error InvalidDeadlineWindow();
    error AmountExceedsPending(uint256 pending, uint256 requested);

    // =============================================================
    // EVENTS
    // =============================================================

    event GenesisMinted(address indexed genesisRecipient, uint256 indexed tokenId);

    event Minted(
        address indexed minter,
        uint256 indexed tokenId,
        uint256 paid,
        uint256 founderShareWei,
        uint256 yieldShareWei
    );

    event MintFeeSplit(
        uint256 founderShareWei,
        uint256 yieldShareWei,
        address indexed founderPayoutWallet,
        address indexed yieldPool
    );

    event FounderPaid(address indexed founderPayoutWallet, uint256 amount);

    event MintOpenSet(bool open);
    event MintPermanentlyClosedSet();

    event BaseURISet(string newBaseURI);
    event BaseURIFrozenSet();

    event ContractURISet(string newContractURI);
    event ContractURIFrozenSet();

    event YieldSwapMinOutChangeProposed(
        uint256 indexed proposedValue, uint256 indexed executeAfter
    );
    event YieldSwapMinOutChangeCanceled();
    event YieldSwapMinOutSet(uint256 oldValue, uint256 newValue);

    event YieldSwapSucceeded(
        uint256 indexed amountInWei, uint256 indexed minOut, address indexed yieldPool
    );

    event YieldSwapDeferred(uint256 indexed amountInWei, uint256 indexed totalPendingWei);

    event PendingYieldProcessed(
        uint256 indexed amountProcessedWei, uint256 indexed remainingPendingWei
    );

    event SweepETH(address indexed to, uint256 amount);
    event ERC20Rescued(address indexed token, address indexed to, uint256 amount);

    // =============================================================
    // CONSTANTS
    // =============================================================

    uint256 public constant MINT_PRICE = 0.02 ether;

    /// @notice Canonical NST Genesis token id.
    uint256 public constant GENESIS_TOKEN_ID = 0;

    /// @notice Backward-compatible alias for legacy references.
    uint256 public constant FOUNDER_TOKEN_ID = GENESIS_TOKEN_ID;

    uint16 public constant FOUNDER_BPS = 9000;
    uint16 public constant YIELD_POOL_BPS = 1000;
    uint16 public constant BPS_DENOMINATOR = 10_000;

    uint256 public constant CONFIG_DELAY = 1 hours;
    uint256 public constant SWAP_DEADLINE_BUFFER = 15 minutes;

    bytes4 internal constant _INTERFACE_ID_ERC5192 = 0xb45a3c0e;

    // =============================================================
    // IMMUTABLES
    // =============================================================

    /// @notice Permanent Genesis recipient configured at deployment.
    address public immutable GENESIS_RECIPIENT;

    /// @notice Founder payout wallet / treasury receiving the founder share.
    address public immutable FOUNDER_WALLET;

    /// @notice Canonical ShieldRegistry address implementing ban + vetting hooks.
    address public immutable SHIELD_REGISTRY;

    address public immutable CFT;
    address public immutable YIELD_POOL;
    IUniswapV2RouterLike public immutable ROUTER;
    address public immutable WETH;

    IBanRegistry public immutable BAN_REGISTRY;
    IVettingRegistry public immutable VETTING_REGISTRY;

    // =============================================================
    // STORAGE
    // =============================================================

    uint256 private _nextTokenId = 1;

    bool public mintOpen = true;
    bool public mintPermanentlyClosed;

    bool public baseURIFrozen;
    bool public contractURIFrozen;

    string private _baseTokenURI;
    string private _contractMetadataURI;

    /// @notice minOut for ETH->CFT swap; value 0 disables live swaps and causes deferral.
    uint256 public yieldSwapMinOut;
    uint256 public pendingYieldSwapMinOut;
    uint256 public pendingYieldSwapMinOutExecuteAfter;

    /// @notice Reserved ETH representing unswapped yield-share amounts.
    uint256 public pendingYieldETH;

    mapping(address => bool) public hasMinted;

    // =============================================================
    // CONSTRUCTOR
    // =============================================================

    /// @param defaultAdmin Main admin, ideally a multisig.
    /// @param genesisRecipient Permanent holder of NST Genesis (#0).
    /// @param founderPayoutWallet Founder payout wallet / treasury.
    /// @param shieldRegistry Canonical ShieldRegistry implementing ban + vetting hooks.
    /// @param router Uniswap-compatible router.
    /// @param cft CFT token address.
    /// @param yieldPool Wallet receiving swapped CFT.
    /// @param pauser Role holder for pause authority.
    /// @param mintManager Role holder for mint controls.
    /// @param metadataManager Role holder for metadata controls.
    /// @param treasuryManager Role holder for treasury controls.
    /// @param swapOperator Role holder for pending swap processing.
    /// @param name_ ERC721 name.
    /// @param symbol_ ERC721 symbol.
    constructor(
        address defaultAdmin,
        address genesisRecipient,
        address founderPayoutWallet,
        address shieldRegistry,
        address router,
        address cft,
        address yieldPool,
        address pauser,
        address mintManager,
        address metadataManager,
        address treasuryManager,
        address swapOperator,
        string memory name_,
        string memory symbol_
    ) ERC721(name_, symbol_) {
        if (
            defaultAdmin == address(0) || genesisRecipient == address(0)
                || founderPayoutWallet == address(0) || shieldRegistry == address(0)
                || router == address(0) || cft == address(0) || yieldPool == address(0)
        ) {
            revert ZeroAddress();
        }

        if (
            pauser == address(0) || mintManager == address(0) || metadataManager == address(0)
                || treasuryManager == address(0) || swapOperator == address(0)
        ) {
            revert InvalidRoleHolder();
        }

        if (FOUNDER_BPS + YIELD_POOL_BPS != BPS_DENOMINATOR) {
            revert InvalidBpsConfig();
        }

        if (shieldRegistry.code.length == 0) revert InvalidDependency(shieldRegistry);
        if (router.code.length == 0) revert InvalidRouter();
        if (cft.code.length == 0) revert InvalidDependency(cft);

        GENESIS_RECIPIENT = genesisRecipient;
        FOUNDER_WALLET = founderPayoutWallet;
        SHIELD_REGISTRY = shieldRegistry;

        CFT = cft;
        YIELD_POOL = yieldPool;
        ROUTER = IUniswapV2RouterLike(router);

        BAN_REGISTRY = IBanRegistry(shieldRegistry);
        VETTING_REGISTRY = IVettingRegistry(shieldRegistry);

        address weth = ROUTER.WETH();
        if (weth == address(0)) revert InvalidRouter();
        if (weth == cft) revert InvalidRouterPath();
        if (weth.code.length == 0) revert InvalidDependency(weth);
        WETH = weth;

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(MINT_MANAGER_ROLE, mintManager);
        _grantRole(METADATA_MANAGER_ROLE, metadataManager);
        _grantRole(TREASURY_MANAGER_ROLE, treasuryManager);
        _grantRole(SWAP_OPERATOR_ROLE, swapOperator);

        _enforceMintEligibility(genesisRecipient);

        _mint(genesisRecipient, GENESIS_TOKEN_ID);
        hasMinted[genesisRecipient] = true;

        emit GenesisMinted(genesisRecipient, GENESIS_TOKEN_ID);
        emit Locked(GENESIS_TOKEN_ID);
    }

    // =============================================================
    // EXTERNAL WRITE
    // =============================================================

    /// @notice Mint exactly one vetted, soulbound NST for exactly 0.02 ETH.
    function mint() external payable nonReentrant whenNotPaused returns (uint256 tokenId) {
        if (mintPermanentlyClosed) revert MintPermanentlyClosed();
        if (!mintOpen) revert MintClosed();
        if (msg.value != MINT_PRICE) revert InvalidPayment(MINT_PRICE, msg.value);
        if (hasMinted[msg.sender]) revert AlreadyMinted(msg.sender);

        _enforceMintEligibility(msg.sender);

        tokenId = _nextTokenId;
        unchecked {
            _nextTokenId = tokenId + 1;
        }

        hasMinted[msg.sender] = true;
        _mint(msg.sender, tokenId);

        emit Locked(tokenId);

        (uint256 founderShare, uint256 yieldShare) = _splitMintFee(msg.value);

        _payoutFounder(founderShare);
        _routeOrEscrowYield(yieldShare);

        emit MintFeeSplit(founderShare, yieldShare, FOUNDER_WALLET, YIELD_POOL);
        emit Minted(msg.sender, tokenId, msg.value, founderShare, yieldShare);
    }

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function setMintOpen(
        bool open
    ) external onlyRole(MINT_MANAGER_ROLE) {
        if (mintPermanentlyClosed && open) revert MintPermanentlyClosed();
        mintOpen = open;
        emit MintOpenSet(open);
    }

    /// @notice Permanently closes mint forever.
    function closeMintPermanently() external onlyRole(MINT_MANAGER_ROLE) {
        mintOpen = false;
        mintPermanentlyClosed = true;
        emit MintOpenSet(false);
        emit MintPermanentlyClosedSet();
    }

    function setBaseURI(
        string calldata newBaseURI
    ) external onlyRole(METADATA_MANAGER_ROLE) {
        if (baseURIFrozen) revert BaseURIFrozen();
        if (bytes(newBaseURI).length == 0) revert BaseURIEmpty();

        _baseTokenURI = newBaseURI;
        emit BaseURISet(newBaseURI);
    }

    function freezeBaseURI() external onlyRole(METADATA_MANAGER_ROLE) {
        if (baseURIFrozen) revert BaseURIFrozen();
        baseURIFrozen = true;
        emit BaseURIFrozenSet();
    }

    function setContractURI(
        string calldata newContractURI
    ) external onlyRole(METADATA_MANAGER_ROLE) {
        if (contractURIFrozen) revert ContractURIFrozen();
        if (bytes(newContractURI).length == 0) revert ContractURIEmpty();

        _contractMetadataURI = newContractURI;
        emit ContractURISet(newContractURI);
    }

    function freezeContractURI() external onlyRole(METADATA_MANAGER_ROLE) {
        if (contractURIFrozen) revert ContractURIFrozen();
        contractURIFrozen = true;
        emit ContractURIFrozenSet();
    }

    /// @notice Proposes a new minOut for ETH->CFT swaps.
    /// @dev Setting the eventual value to 0 intentionally disables live swaps and causes future yield to escrow.
    function proposeYieldSwapMinOut(
        uint256 newMinOut
    ) external onlyRole(TREASURY_MANAGER_ROLE) {
        pendingYieldSwapMinOut = newMinOut;
        pendingYieldSwapMinOutExecuteAfter = block.timestamp + CONFIG_DELAY;

        emit YieldSwapMinOutChangeProposed(newMinOut, pendingYieldSwapMinOutExecuteAfter);
    }

    function cancelYieldSwapMinOutProposal() external onlyRole(TREASURY_MANAGER_ROLE) {
        pendingYieldSwapMinOut = 0;
        pendingYieldSwapMinOutExecuteAfter = 0;

        emit YieldSwapMinOutChangeCanceled();
    }

    function applyYieldSwapMinOut() external onlyRole(TREASURY_MANAGER_ROLE) {
        uint256 executeAfter = pendingYieldSwapMinOutExecuteAfter;
        uint256 newValue = pendingYieldSwapMinOut;

        if (executeAfter == 0) revert PendingConfigNotSet();
        if (block.timestamp < executeAfter) {
            revert DelayNotElapsed(executeAfter, block.timestamp);
        }

        uint256 oldValue = yieldSwapMinOut;

        yieldSwapMinOut = newValue;
        pendingYieldSwapMinOut = 0;
        pendingYieldSwapMinOutExecuteAfter = 0;

        emit YieldSwapMinOutSet(oldValue, newValue);
    }

    /// @notice Retry a portion or all of pending yield ETH.
    /// @dev Requires a non-zero yieldSwapMinOut; when minOut is zero, live swaps are intentionally disabled.
    function processPendingYieldETH(
        uint256 amount
    ) external nonReentrant whenNotPaused onlyRole(SWAP_OPERATOR_ROLE) {
        if (yieldSwapMinOut == 0) revert YieldSwapDisabled();

        uint256 pending = pendingYieldETH;
        if (amount == 0) revert SwapAmountZero();
        if (amount > pending) revert AmountExceedsPending(pending, amount);

        bool success = _attemptYieldSwap(amount);
        if (!success) revert SwapRetryFailed();

        unchecked {
            pendingYieldETH = pending - amount;
        }

        emit PendingYieldProcessed(amount, pendingYieldETH);
        emit YieldSwapSucceeded(amount, yieldSwapMinOut, YIELD_POOL);
    }

    /// @notice Sweep only unreserved ETH. Pending yield ETH cannot be swept.
    function sweepETH(
        address payable to,
        uint256 amount
    ) external nonReentrant onlyRole(TREASURY_MANAGER_ROLE) {
        if (to == address(0)) revert InvalidRecipient();

        uint256 available = sweepableETH();
        if (amount == 0 || amount > available) {
            revert InvalidSweepAmount(available, amount);
        }

        (bool ok,) = to.call{ value: amount }("");
        if (!ok) revert ETHTransferFailed();

        emit SweepETH(to, amount);
    }

    /// @notice Rescue accidental ERC20 transfers sent to this contract.
    /// @dev Does not affect reserved ETH accounting.
    function rescueERC20(
        address token,
        address to,
        uint256 amount
    ) external nonReentrant onlyRole(TREASURY_MANAGER_ROLE) {
        if (token == address(0) || to == address(0)) revert InvalidRecipient();
        if (amount == 0) revert InvalidSweepAmount(0, amount);

        IERC20(token).safeTransfer(to, amount);
        emit ERC20Rescued(token, to, amount);
    }

    // =============================================================
    // EXTERNAL VIEW
    // =============================================================

    function locked(
        uint256 tokenId
    ) external view override returns (bool) {
        if (!_exists(tokenId)) revert TokenDoesNotExist(tokenId);
        return true;
    }

    /// @notice Total minted token count including Genesis token ID 0.
    function totalMinted() external view returns (uint256) {
        return _nextTokenId;
    }

    /// @notice Count of public mints excluding Genesis token ID 0.
    function publicMintCount() external view returns (uint256) {
        return _nextTokenId - 1;
    }

    function nextTokenId() external view returns (uint256) {
        return _nextTokenId;
    }

    function founderSharePerMint() external pure returns (uint256) {
        return (MINT_PRICE * FOUNDER_BPS) / BPS_DENOMINATOR;
    }

    function yieldSharePerMint() external pure returns (uint256) {
        return MINT_PRICE - ((MINT_PRICE * FOUNDER_BPS) / BPS_DENOMINATOR);
    }

    function previewSplit(
        uint256 amount
    ) external pure returns (uint256 founderShare, uint256 yieldShare) {
        founderShare = (amount * FOUNDER_BPS) / BPS_DENOMINATOR;
        yieldShare = amount - founderShare;
    }

    function exists(
        uint256 tokenId
    ) external view returns (bool) {
        return _exists(tokenId);
    }

    function genesisHolder() external view returns (address) {
        return ownerOf(GENESIS_TOKEN_ID);
    }

    function contractURI() external view returns (string memory) {
        return _contractMetadataURI;
    }

    function pendingYieldSwapMinOutState()
        external
        view
        returns (uint256 value, uint256 executeAfter)
    {
        return (pendingYieldSwapMinOut, pendingYieldSwapMinOutExecuteAfter);
    }

    function sweepableETH() public view returns (uint256) {
        uint256 bal = address(this).balance;
        if (bal <= pendingYieldETH) {
            return 0;
        }

        return bal - pendingYieldETH;
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        if (!_exists(tokenId)) revert TokenDoesNotExist(tokenId);

        string memory base = _baseURI();
        if (bytes(base).length == 0) {
            return "";
        }

        return string.concat(base, tokenId.toString());
    }

    // =============================================================
    // SOULBOUND / APPROVAL BLOCKS
    // =============================================================

    function approve(
        address,
        uint256
    ) public pure override {
        revert Soulbound();
    }

    function setApprovalForAll(
        address,
        bool
    ) public pure override {
        revert Soulbound();
    }

    function getApproved(
        uint256 tokenId
    ) public view override returns (address) {
        if (!_exists(tokenId)) revert TokenDoesNotExist(tokenId);
        return address(0);
    }

    function isApprovedForAll(
        address,
        address
    ) public pure override returns (bool) {
        return false;
    }

    function transferFrom(
        address,
        address,
        uint256
    ) public pure override {
        revert Soulbound();
    }

    /// @dev In OZ 5, the 3-arg safeTransferFrom delegates into this 4-arg overload.
    function safeTransferFrom(
        address,
        address,
        uint256,
        bytes memory
    ) public pure override {
        revert Soulbound();
    }

    function burn(
        uint256 tokenId
    ) external pure {
        if (tokenId == GENESIS_TOKEN_ID) revert FounderTokenProtected();
        revert Soulbound();
    }

    // =============================================================
    // INTERNAL ERC721 OVERRIDES
    // =============================================================

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal override returns (address from) {
        from = _ownerOf(tokenId);

        // Allow mint path only.
        if (from == address(0) && to != address(0)) {
            return super._update(to, tokenId, auth);
        }

        // Explicitly reject burn/transfer paths.
        if (to == address(0)) {
            if (tokenId == GENESIS_TOKEN_ID) revert FounderTokenProtected();
            revert Soulbound();
        }

        revert Soulbound();
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721, AccessControl) returns (bool) {
        return interfaceId == _INTERFACE_ID_ERC5192 || super.supportsInterface(interfaceId);
    }

    // =============================================================
    // INTERNAL LOGIC
    // =============================================================

    function _enforceMintEligibility(
        address account
    ) internal view {
        if (BAN_REGISTRY.isBanned(account)) {
            revert BannedAccount(account);
        }

        if (!VETTING_REGISTRY.isMintEligible(account)) {
            revert NotMintEligible(account);
        }
    }

    function _splitMintFee(
        uint256 amount
    ) internal pure returns (uint256 founderShare, uint256 yieldShare) {
        founderShare = (amount * FOUNDER_BPS) / BPS_DENOMINATOR;
        yieldShare = amount - founderShare;
    }

    function _payoutFounder(
        uint256 founderShare
    ) internal {
        (bool ok,) = payable(FOUNDER_WALLET).call{ value: founderShare }("");
        if (!ok) revert ETHTransferFailed();

        emit FounderPaid(FOUNDER_WALLET, founderShare);
    }

    function _routeOrEscrowYield(
        uint256 yieldShare
    ) internal {
        if (yieldShare == 0) revert SwapAmountZero();

        // Institutional policy:
        // yieldSwapMinOut == 0 means live swap is disabled, so yield is deferred.
        if (yieldSwapMinOut == 0) {
            _deferYield(yieldShare);
            return;
        }

        bool success = _attemptYieldSwap(yieldShare);
        if (success) {
            emit YieldSwapSucceeded(yieldShare, yieldSwapMinOut, YIELD_POOL);
            return;
        }

        _deferYield(yieldShare);
    }

    function _deferYield(
        uint256 amount
    ) internal {
        pendingYieldETH += amount;
        emit YieldSwapDeferred(amount, pendingYieldETH);
    }

    function _buildSwapPath() internal view returns (address[] memory path) {
        path = new address[](2);
        path[0] = WETH;
        path[1] = CFT;
    }

    function _attemptYieldSwap(
        uint256 amountIn
    ) internal returns (bool success) {
        if (amountIn == 0) revert SwapAmountZero();
        if (yieldSwapMinOut == 0) revert YieldSwapDisabled();

        uint256 deadline = block.timestamp + SWAP_DEADLINE_BUFFER;
        if (deadline <= block.timestamp) revert InvalidDeadlineWindow();

        address[] memory path = _buildSwapPath();

        try ROUTER.swapExactETHForTokensSupportingFeeOnTransferTokens{ value: amountIn }(
            yieldSwapMinOut, path, YIELD_POOL, deadline
        ) {
            return true;
        } catch {
            return false;
        }
    }

    function _exists(
        uint256 tokenId
    ) internal view returns (bool) {
        return _ownerOf(tokenId) != address(0);
    }

    // =============================================================
    // REJECT STRAY VALUE / CALLS
    // =============================================================

    receive() external payable {
        revert DirectETHNotAccepted();
    }

    fallback() external payable {
        revert UnsupportedCall();
    }
}
