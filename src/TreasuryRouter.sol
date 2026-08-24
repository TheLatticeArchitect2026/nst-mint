// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
import { Pausable } from "openzeppelin-contracts/contracts/utils/Pausable.sol";
import { ReentrancyGuard } from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title TreasuryRouter
/// @notice Permissioned treasury routing layer for NST Lattice protocol value.
/// @dev Routes funded ETH/ERC20 value only. Does not create, promise, or calculate yield.
contract TreasuryRouter is AccessControl, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    address public constant NATIVE_ETH = address(0);

    uint16 public constant BPS_DENOMINATOR = 10_000;
    uint256 public constant MAX_SPLIT_ROUTES = 50;

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant ROUTE_MANAGER_ROLE = keccak256("ROUTE_MANAGER_ROLE");
    bytes32 public constant TREASURY_OPERATOR_ROLE = keccak256("TREASURY_OPERATOR_ROLE");
    bytes32 public constant ASSET_MANAGER_ROLE = keccak256("ASSET_MANAGER_ROLE");
    bytes32 public constant EMERGENCY_MANAGER_ROLE = keccak256("EMERGENCY_MANAGER_ROLE");

    bytes32 public constant FOUNDER_TREASURY_ROUTE = keccak256("FOUNDER_TREASURY");
    bytes32 public constant FIRST_NATIONS_TREASURY_ROUTE = keccak256("FIRST_NATIONS_TREASURY");
    bytes32 public constant VIRILITY_TREASURY_ROUTE = keccak256("VIRILITY_TREASURY");
    bytes32 public constant YIELD_POOL_ROUTE = keccak256("YIELD_POOL");
    bytes32 public constant BUILDING_TREASURY_ROUTE = keccak256("BUILDING_TREASURY");
    bytes32 public constant OPERATING_RESERVE_ROUTE = keccak256("OPERATING_RESERVE");
    bytes32 public constant PROTOCOL_LIQUIDITY_ROUTE = keccak256("PROTOCOL_LIQUIDITY");
    bytes32 public constant RWA_RESERVE_ROUTE = keccak256("RWA_RESERVE");
    bytes32 public constant INVOICE_SETTLEMENT_RESERVE_ROUTE =
        keccak256("INVOICE_SETTLEMENT_RESERVE");
    bytes32 public constant REDEMPTION_RESERVE_ROUTE = keccak256("REDEMPTION_RESERVE");
    bytes32 public constant DISPUTE_RESERVE_ROUTE = keccak256("DISPUTE_RESERVE");
    bytes32 public constant EMERGENCY_RESERVE_ROUTE = keccak256("EMERGENCY_RESERVE");

    enum RouteType {
        Unset,
        EthRoute,
        Erc20Route,
        ReserveRoute,
        YieldRoute,
        FirstNationsRoute,
        OperatingRoute,
        EmergencyRoute,
        ResourceBasketRoute,
        RedemptionRoute
    }

    struct Route {
        bytes32 routeId;
        address destination;
        address asset;
        uint16 bps;
        bool enabled;
        bool locked;
        uint64 createdAt;
        uint64 updatedAt;
        bytes32 metadataHash;
        RouteType routeType;
    }

    mapping(bytes32 routeId => Route route) private _routes;
    bytes32[] private _routeIds;

    event ETHReceived(address indexed from, uint256 amount);

    event RouteCreated(
        bytes32 indexed routeId,
        address indexed destination,
        address indexed asset,
        uint16 bps,
        RouteType routeType,
        bytes32 metadataHash,
        address actor
    );

    event RouteDestinationUpdated(
        bytes32 indexed routeId,
        address indexed oldDestination,
        address indexed newDestination,
        address actor
    );

    event RouteAssetUpdated(
        bytes32 indexed routeId, address indexed oldAsset, address indexed newAsset, address actor
    );

    event RouteBpsUpdated(
        bytes32 indexed routeId, uint16 oldBps, uint16 newBps, address indexed actor
    );

    event RouteMetadataUpdated(
        bytes32 indexed routeId, bytes32 oldMetadataHash, bytes32 newMetadataHash, address actor
    );

    event RouteTypeUpdated(
        bytes32 indexed routeId,
        RouteType oldRouteType,
        RouteType newRouteType,
        address indexed actor
    );

    event RouteEnabledSet(bytes32 indexed routeId, bool enabled, address indexed actor);

    event RouteLocked(bytes32 indexed routeId, address indexed actor);

    event ETHRouted(
        bytes32 indexed routeId, address indexed destination, uint256 amount, address indexed actor
    );

    event ERC20Routed(
        bytes32 indexed routeId,
        address indexed asset,
        address indexed destination,
        uint256 amount,
        address actor
    );

    event ETHSplitRouted(
        bytes32 indexed splitHash, uint256 totalAmount, uint256 routeCount, address indexed actor
    );

    event ERC20SplitRouted(
        bytes32 indexed splitHash,
        address indexed asset,
        uint256 totalAmount,
        uint256 routeCount,
        address actor
    );

    event AssetRescued(
        address indexed asset, address indexed to, uint256 amount, address indexed actor
    );

    error ZeroAddress();
    error ZeroAmount();
    error ZeroRouteId();
    error RouteAlreadyExists(bytes32 routeId);
    error RouteNotFound(bytes32 routeId);
    error RouteDisabled(bytes32 routeId);
    error RouteLockedError(bytes32 routeId);
    error InvalidAsset(address asset);
    error InvalidBps(uint256 bps);
    error InvalidRouteType();
    error InvalidSplitLength(uint256 length);
    error InvalidSplitTotal(uint256 totalBps);
    error InvalidRouteAsset(bytes32 routeId, address expectedAsset, address actualAsset);
    error ETHRouteRequired(bytes32 routeId);
    error ERC20RouteRequired(bytes32 routeId);
    error InsufficientBalance(address asset, uint256 available, uint256 requiredAmount);
    error ETHTransferFailed(address to, uint256 amount);

    constructor(
        address defaultAdmin,
        address pauser,
        address routeManager,
        address treasuryOperator,
        address assetManager,
        address emergencyManager
    ) {
        if (
            defaultAdmin == address(0) || pauser == address(0) || routeManager == address(0)
                || treasuryOperator == address(0) || assetManager == address(0)
                || emergencyManager == address(0)
        ) {
            revert ZeroAddress();
        }

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(ROUTE_MANAGER_ROLE, routeManager);
        _grantRole(TREASURY_OPERATOR_ROLE, treasuryOperator);
        _grantRole(ASSET_MANAGER_ROLE, assetManager);
        _grantRole(EMERGENCY_MANAGER_ROLE, emergencyManager);
    }

    receive() external payable {
        emit ETHReceived(msg.sender, msg.value);
    }

    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function createRoute(
        bytes32 routeId,
        address destination,
        address asset,
        uint16 bps,
        bool enabled,
        RouteType routeType,
        bytes32 metadataHash
    ) external onlyRole(ROUTE_MANAGER_ROLE) returns (bytes32) {
        _requireValidRouteId(routeId);

        if (_routeExists(routeId)) {
            revert RouteAlreadyExists(routeId);
        }

        _requireValidDestination(destination);
        _requireValidAsset(asset);
        _requireValidBps(bps);
        _requireValidRouteType(routeType);

        uint64 timestamp = uint64(block.timestamp);

        _routes[routeId] = Route({
            routeId: routeId,
            destination: destination,
            asset: asset,
            bps: bps,
            enabled: enabled,
            locked: false,
            createdAt: timestamp,
            updatedAt: timestamp,
            metadataHash: metadataHash,
            routeType: routeType
        });

        _routeIds.push(routeId);

        emit RouteCreated(routeId, destination, asset, bps, routeType, metadataHash, msg.sender);

        return routeId;
    }

    function updateRouteDestination(
        bytes32 routeId,
        address newDestination
    ) external onlyRole(ROUTE_MANAGER_ROLE) {
        Route storage route = _requireMutableRoute(routeId);

        _requireValidDestination(newDestination);

        address oldDestination = route.destination;
        route.destination = newDestination;
        route.updatedAt = uint64(block.timestamp);

        emit RouteDestinationUpdated(routeId, oldDestination, newDestination, msg.sender);
    }

    function updateRouteAsset(
        bytes32 routeId,
        address newAsset
    ) external onlyRole(ASSET_MANAGER_ROLE) {
        Route storage route = _requireMutableRoute(routeId);

        _requireValidAsset(newAsset);

        address oldAsset = route.asset;
        route.asset = newAsset;
        route.updatedAt = uint64(block.timestamp);

        emit RouteAssetUpdated(routeId, oldAsset, newAsset, msg.sender);
    }

    function updateRouteBps(
        bytes32 routeId,
        uint16 newBps
    ) external onlyRole(ROUTE_MANAGER_ROLE) {
        Route storage route = _requireMutableRoute(routeId);

        _requireValidBps(newBps);

        uint16 oldBps = route.bps;
        route.bps = newBps;
        route.updatedAt = uint64(block.timestamp);

        emit RouteBpsUpdated(routeId, oldBps, newBps, msg.sender);
    }

    function updateRouteMetadata(
        bytes32 routeId,
        bytes32 newMetadataHash
    ) external onlyRole(ROUTE_MANAGER_ROLE) {
        Route storage route = _requireMutableRoute(routeId);

        bytes32 oldMetadataHash = route.metadataHash;
        route.metadataHash = newMetadataHash;
        route.updatedAt = uint64(block.timestamp);

        emit RouteMetadataUpdated(routeId, oldMetadataHash, newMetadataHash, msg.sender);
    }

    function updateRouteType(
        bytes32 routeId,
        RouteType newRouteType
    ) external onlyRole(ROUTE_MANAGER_ROLE) {
        Route storage route = _requireMutableRoute(routeId);

        _requireValidRouteType(newRouteType);

        RouteType oldRouteType = route.routeType;
        route.routeType = newRouteType;
        route.updatedAt = uint64(block.timestamp);

        emit RouteTypeUpdated(routeId, oldRouteType, newRouteType, msg.sender);
    }

    function setRouteEnabled(
        bytes32 routeId,
        bool enabled
    ) external onlyRole(ROUTE_MANAGER_ROLE) {
        Route storage route = _requireMutableRoute(routeId);

        route.enabled = enabled;
        route.updatedAt = uint64(block.timestamp);

        emit RouteEnabledSet(routeId, enabled, msg.sender);
    }

    function lockRoute(
        bytes32 routeId
    ) external onlyRole(ROUTE_MANAGER_ROLE) {
        Route storage route = _requireMutableRoute(routeId);

        route.locked = true;
        route.updatedAt = uint64(block.timestamp);

        emit RouteLocked(routeId, msg.sender);
    }

    function routeETH(
        bytes32 routeId
    ) external payable whenNotPaused nonReentrant onlyRole(TREASURY_OPERATOR_ROLE) {
        if (msg.value == 0) revert ZeroAmount();

        Route storage route = _requireEnabledRoute(routeId);

        if (route.asset != NATIVE_ETH) {
            revert ETHRouteRequired(routeId);
        }

        _sendETH(route.destination, msg.value);

        emit ETHRouted(routeId, route.destination, msg.value, msg.sender);
    }

    function routeERC20(
        bytes32 routeId,
        uint256 amount
    ) external whenNotPaused nonReentrant onlyRole(TREASURY_OPERATOR_ROLE) {
        if (amount == 0) revert ZeroAmount();

        Route storage route = _requireEnabledRoute(routeId);

        if (route.asset == NATIVE_ETH) {
            revert ERC20RouteRequired(routeId);
        }

        IERC20(route.asset).safeTransferFrom(msg.sender, route.destination, amount);

        emit ERC20Routed(routeId, route.asset, route.destination, amount, msg.sender);
    }

    function routeETHBySplit(
        bytes32[] calldata routeIds
    )
        external
        payable
        whenNotPaused
        nonReentrant
        onlyRole(TREASURY_OPERATOR_ROLE)
        returns (uint256[] memory amounts)
    {
        if (msg.value == 0) revert ZeroAmount();

        (address[] memory destinations, uint256[] memory splitAmounts,) =
            _previewSplit(NATIVE_ETH, msg.value, routeIds);
        amounts = splitAmounts;

        for (uint256 i = 0; i < routeIds.length; ++i) {
            if (amounts[i] != 0) {
                _sendETH(destinations[i], amounts[i]);
                emit ETHRouted(routeIds[i], destinations[i], amounts[i], msg.sender);
            }
        }

        emit ETHSplitRouted(keccak256(abi.encode(routeIds)), msg.value, routeIds.length, msg.sender);
    }

    function routeERC20BySplit(
        address asset,
        uint256 amount,
        bytes32[] calldata routeIds
    )
        external
        whenNotPaused
        nonReentrant
        onlyRole(TREASURY_OPERATOR_ROLE)
        returns (uint256[] memory amounts)
    {
        if (amount == 0) revert ZeroAmount();
        if (asset == NATIVE_ETH) revert InvalidAsset(asset);

        _requireValidAsset(asset);

        (address[] memory destinations, uint256[] memory splitAmounts,) =
            _previewSplit(asset, amount, routeIds);
        amounts = splitAmounts;

        IERC20 token = IERC20(asset);
        token.safeTransferFrom(msg.sender, address(this), amount);

        for (uint256 i = 0; i < routeIds.length; ++i) {
            if (amounts[i] != 0) {
                token.safeTransfer(destinations[i], amounts[i]);
                emit ERC20Routed(routeIds[i], asset, destinations[i], amounts[i], msg.sender);
            }
        }

        emit ERC20SplitRouted(
            keccak256(abi.encode(routeIds)), asset, amount, routeIds.length, msg.sender
        );
    }

    function rescueETH(
        address to,
        uint256 amount
    ) external whenPaused nonReentrant onlyRole(EMERGENCY_MANAGER_ROLE) {
        _requireValidDestination(to);

        if (amount == 0) revert ZeroAmount();

        uint256 available = address(this).balance;
        if (available < amount) {
            revert InsufficientBalance(NATIVE_ETH, available, amount);
        }

        _sendETH(to, amount);

        emit AssetRescued(NATIVE_ETH, to, amount, msg.sender);
    }

    function rescueERC20(
        address asset,
        address to,
        uint256 amount
    ) external whenPaused nonReentrant onlyRole(EMERGENCY_MANAGER_ROLE) {
        if (asset == NATIVE_ETH) revert InvalidAsset(asset);

        _requireValidAsset(asset);
        _requireValidDestination(to);

        if (amount == 0) revert ZeroAmount();

        uint256 available = IERC20(asset).balanceOf(address(this));
        if (available < amount) {
            revert InsufficientBalance(asset, available, amount);
        }

        IERC20(asset).safeTransfer(to, amount);

        emit AssetRescued(asset, to, amount, msg.sender);
    }

    function routeExists(
        bytes32 routeId
    ) external view returns (bool) {
        return _routeExists(routeId);
    }

    function routeCount() external view returns (uint256) {
        return _routeIds.length;
    }

    function routeIdAt(
        uint256 index
    ) external view returns (bytes32) {
        return _routeIds[index];
    }

    function getRoute(
        bytes32 routeId
    ) external view returns (Route memory) {
        return _requireRouteView(routeId);
    }

    function previewSplit(
        address asset,
        uint256 totalAmount,
        bytes32[] calldata routeIds
    )
        external
        view
        returns (address[] memory destinations, uint256[] memory amounts, uint16 totalBps)
    {
        if (totalAmount == 0) revert ZeroAmount();

        return _previewSplit(asset, totalAmount, routeIds);
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _previewSplit(
        address asset,
        uint256 totalAmount,
        bytes32[] calldata routeIds
    )
        internal
        view
        returns (address[] memory destinations, uint256[] memory amounts, uint16 totalBps)
    {
        uint256 length = routeIds.length;

        if (length == 0 || length > MAX_SPLIT_ROUTES) {
            revert InvalidSplitLength(length);
        }

        _requireValidAsset(asset);

        destinations = new address[](length);
        amounts = new uint256[](length);

        uint256 totalBpsAccumulator;

        for (uint256 i = 0; i < length; ++i) {
            Route storage route = _requireEnabledRoute(routeIds[i]);

            if (route.asset != asset) {
                revert InvalidRouteAsset(routeIds[i], asset, route.asset);
            }

            if (route.bps == 0) {
                revert InvalidBps(route.bps);
            }

            destinations[i] = route.destination;
            totalBpsAccumulator += route.bps;
        }

        if (totalBpsAccumulator != BPS_DENOMINATOR) {
            revert InvalidSplitTotal(totalBpsAccumulator);
        }

        uint256 allocated;

        for (uint256 i = 0; i < length; ++i) {
            if (i == length - 1) {
                amounts[i] = totalAmount - allocated;
            } else {
                uint256 amount = (totalAmount * _routes[routeIds[i]].bps) / BPS_DENOMINATOR;
                amounts[i] = amount;
                allocated += amount;
            }
        }

        totalBps = BPS_DENOMINATOR;
    }

    function _requireEnabledRoute(
        bytes32 routeId
    ) internal view returns (Route storage route) {
        route = _requireRoute(routeId);

        if (!route.enabled) {
            revert RouteDisabled(routeId);
        }
    }

    function _requireMutableRoute(
        bytes32 routeId
    ) internal view returns (Route storage route) {
        route = _requireRoute(routeId);

        if (route.locked) {
            revert RouteLockedError(routeId);
        }
    }

    function _requireRoute(
        bytes32 routeId
    ) internal view returns (Route storage route) {
        if (!_routeExists(routeId)) {
            revert RouteNotFound(routeId);
        }

        route = _routes[routeId];
    }

    function _requireRouteView(
        bytes32 routeId
    ) internal view returns (Route memory route) {
        if (!_routeExists(routeId)) {
            revert RouteNotFound(routeId);
        }

        route = _routes[routeId];
    }

    function _routeExists(
        bytes32 routeId
    ) internal view returns (bool) {
        return routeId != bytes32(0) && _routes[routeId].routeId == routeId;
    }

    function _requireValidRouteId(
        bytes32 routeId
    ) internal pure {
        if (routeId == bytes32(0)) {
            revert ZeroRouteId();
        }
    }

    function _requireValidDestination(
        address destination
    ) internal pure {
        if (destination == address(0)) {
            revert ZeroAddress();
        }
    }

    function _requireValidAsset(
        address asset
    ) internal view {
        if (asset != NATIVE_ETH && asset.code.length == 0) {
            revert InvalidAsset(asset);
        }
    }

    function _requireValidBps(
        uint256 bps
    ) internal pure {
        if (bps > BPS_DENOMINATOR) {
            revert InvalidBps(bps);
        }
    }

    function _requireValidRouteType(
        RouteType routeType
    ) internal pure {
        if (routeType == RouteType.Unset) {
            revert InvalidRouteType();
        }
    }

    function _sendETH(
        address to,
        uint256 amount
    ) internal {
        (bool success,) = payable(to).call{ value: amount }("");

        if (!success) {
            revert ETHTransferFailed(to, amount);
        }
    }
}
