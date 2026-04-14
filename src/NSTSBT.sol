// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC721} from "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";

interface IUniswapV2RouterLike {
  function WETH() external pure returns (address);

  function swapExactETHForTokensSupportingFeeOnTransferTokens(
    uint256 amountOutMin,
    address[] calldata path,
    address to,
    uint256 deadline
  ) external payable;
}

contract NSTSBT is ERC721, Ownable, ReentrancyGuard {
  error MintClosed();
  error InvalidPayment();
  error AlreadyMinted();
  error ZeroAddress();
  error Soulbound();
  error FounderTokenProtected();
  error EthTransferFailed();
  error InvalidRouterPath();

  event Minted(address indexed minter, uint256 indexed tokenId, uint256 paid);
  event MintFeeSplit(
    uint256 founderShareWei,
    uint256 yieldSwapWei,
    address indexed founderWallet,
    address indexed yieldPool
  );
  event MintOpenSet(bool open);
  event BaseURISet(string newBaseURI);
  event YieldSwapMinOutSet(uint256 minOut);

  uint256 public constant MINT_PRICE = 0.02 ether;
  uint256 public constant FOUNDER_TOKEN_ID = 0;

  uint16 public constant FOUNDER_BPS = 9000;
  uint16 public constant YIELD_POOL_BPS = 1000;
  uint16 public constant BPS_DENOMINATOR = 10_000;

  address public immutable FOUNDER_WALLET;
  address public immutable CFT;
  address public immutable YIELD_POOL;

  IUniswapV2RouterLike public immutable ROUTER;

  uint256 private _nextTokenId = 1;
  bool public mintOpen = true;
  uint256 public yieldSwapMinOut;
  string private _baseTokenURI;

  mapping(address => bool) public hasMinted;

  constructor(
    address initialOwner,
    address founderWallet,
    address router,
    address cft,
    address yieldPool,
    string memory name_,
    string memory symbol_
  ) ERC721(name_, symbol_) Ownable(initialOwner) {
    if (
      initialOwner == address(0) ||
      founderWallet == address(0) ||
      router == address(0) ||
      cft == address(0) ||
      yieldPool == address(0)
    ) revert ZeroAddress();

    FOUNDER_WALLET = founderWallet;
    ROUTER = IUniswapV2RouterLike(router);
    CFT = cft;
    YIELD_POOL = yieldPool;

    _safeMint(founderWallet, FOUNDER_TOKEN_ID);
  }

  function mint() external payable nonReentrant returns (uint256 tokenId) {
    if (!mintOpen) revert MintClosed();
    if (msg.value != MINT_PRICE) revert InvalidPayment();
    if (hasMinted[msg.sender]) revert AlreadyMinted();

    tokenId = _nextTokenId;
    unchecked {
      _nextTokenId = tokenId + 1;
    }

    hasMinted[msg.sender] = true;
    _safeMint(msg.sender, tokenId);

    _splitAndRouteMintFee(msg.value);

    emit Minted(msg.sender, tokenId, msg.value);
  }

  function totalMinted() external view returns (uint256) {
    return _nextTokenId;
  }

  function setMintOpen(bool open) external onlyOwner {
    mintOpen = open;
    emit MintOpenSet(open);
  }

  function setBaseURI(string calldata newBaseURI) external onlyOwner {
    _baseTokenURI = newBaseURI;
    emit BaseURISet(newBaseURI);
  }

  function setYieldSwapMinOut(uint256 minOut) external onlyOwner {
    yieldSwapMinOut = minOut;
    emit YieldSwapMinOutSet(minOut);
  }

  function approve(address, uint256) public pure override {
    revert Soulbound();
  }

  function setApprovalForAll(address, bool) public pure override {
    revert Soulbound();
  }

  function burn(uint256 tokenId) external {
    if (tokenId == FOUNDER_TOKEN_ID) revert FounderTokenProtected();
    if (ownerOf(tokenId) != msg.sender) revert Soulbound();
    revert Soulbound();
  }

  function _baseURI() internal view override returns (string memory) {
    return _baseTokenURI;
  }

  function _update(
    address to,
    uint256 tokenId,
    address auth
  ) internal override returns (address from) {
    from = _ownerOf(tokenId);

    if (from != address(0) && to != address(0)) {
      revert Soulbound();
    }

    if (to == address(0)) {
      if (tokenId == FOUNDER_TOKEN_ID) revert FounderTokenProtected();
      revert Soulbound();
    }

    return super._update(to, tokenId, auth);
  }

  function _splitAndRouteMintFee(uint256 amount) internal {
    uint256 founderShare = (amount * FOUNDER_BPS) / BPS_DENOMINATOR;
    uint256 yieldShare = amount - founderShare;

    (bool ok, ) = payable(FOUNDER_WALLET).call{value: founderShare}("");
    if (!ok) revert EthTransferFailed();

    _swapEthForCftToYieldPool(yieldShare);

    emit MintFeeSplit(founderShare, yieldShare, FOUNDER_WALLET, YIELD_POOL);
  }

  function _swapEthForCftToYieldPool(uint256 amountIn) internal {
    address weth = ROUTER.WETH();
    if (weth == address(0)) revert InvalidRouterPath();

 address;
    path[0] = weth;
    path[1] = CFT;

    ROUTER.swapExactETHForTokensSupportingFeeOnTransferTokens{value: amountIn}(
      yieldSwapMinOut,
      path,
      YIELD_POOL,
      block.timestamp
    );
  }

  receive() external payable {
    revert InvalidPayment();
  }
}
