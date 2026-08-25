// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";
import { TreasuryRouter } from "../../src/TreasuryRouter.sol";

contract MockTreasuryERC20 {
    string public name;
    string public symbol;
    uint8 public constant decimals = 18;

    uint256 public totalSupply;

    mapping(address account => uint256 balance) public balanceOf;
    mapping(address owner => mapping(address spender => uint256 amount)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed owner, address indexed spender, uint256 amount);

    constructor(
        string memory name_,
        string memory symbol_
    ) {
        name = name_;
        symbol = symbol_;
    }

    function mint(
        address to,
        uint256 amount
    ) external {
        require(to != address(0), "ZERO_TO");

        totalSupply += amount;
        balanceOf[to] += amount;

        emit Transfer(address(0), to, amount);
    }

    function approve(
        address spender,
        uint256 amount
    ) external returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(
        address to,
        uint256 amount
    ) external returns (bool) {
        _transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool) {
        uint256 currentAllowance = allowance[from][msg.sender];

        require(currentAllowance >= amount, "ALLOWANCE");

        if (currentAllowance != type(uint256).max) {
            allowance[from][msg.sender] = currentAllowance - amount;
        }

        _transfer(from, to, amount);

        return true;
    }

    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal {
        require(to != address(0), "ZERO_TO");
        require(balanceOf[from] >= amount, "BALANCE");

        balanceOf[from] -= amount;
        balanceOf[to] += amount;

        emit Transfer(from, to, amount);
    }
}

contract TreasuryRouterTest is Test {
    TreasuryRouter internal router;
    MockTreasuryERC20 internal token;

    address internal admin;
    address internal pauser;
    address internal routeManager;
    address internal treasuryOperator;
    address internal assetManager;
    address internal emergencyManager;

    address internal ethRecipient;
    address internal erc20Recipient;
    address internal rescueRecipient;

    bytes32 internal constant ETH_ROUTE = keccak256("ETH_ROUTE");
    bytes32 internal constant ERC20_ROUTE = keccak256("ERC20_ROUTE");
    bytes32 internal constant SPLIT_ROUTE_A = keccak256("SPLIT_ROUTE_A");
    bytes32 internal constant SPLIT_ROUTE_B = keccak256("SPLIT_ROUTE_B");
    bytes32 internal constant SPLIT_ROUTE_C = keccak256("SPLIT_ROUTE_C");
    bytes32 internal constant DEFAULT_METADATA = keccak256("DEFAULT_METADATA");

    function setUp() public {
        admin = makeAddr("admin");
        pauser = makeAddr("pauser");
        routeManager = makeAddr("routeManager");
        treasuryOperator = makeAddr("treasuryOperator");
        assetManager = makeAddr("assetManager");
        emergencyManager = makeAddr("emergencyManager");

        ethRecipient = makeAddr("ethRecipient");
        erc20Recipient = makeAddr("erc20Recipient");
        rescueRecipient = makeAddr("rescueRecipient");

        router = new TreasuryRouter(
            admin, pauser, routeManager, treasuryOperator, assetManager, emergencyManager
        );

        token = new MockTreasuryERC20("Mock Treasury Token", "MTT");

        vm.deal(treasuryOperator, 100 ether);
        vm.deal(address(this), 100 ether);
    }

    function test_constructor_sets_roles_and_constants() public view {
        assertTrue(router.hasRole(router.DEFAULT_ADMIN_ROLE(), admin));
        assertTrue(router.hasRole(router.PAUSER_ROLE(), pauser));
        assertTrue(router.hasRole(router.ROUTE_MANAGER_ROLE(), routeManager));
        assertTrue(router.hasRole(router.TREASURY_OPERATOR_ROLE(), treasuryOperator));
        assertTrue(router.hasRole(router.ASSET_MANAGER_ROLE(), assetManager));
        assertTrue(router.hasRole(router.EMERGENCY_MANAGER_ROLE(), emergencyManager));

        assertEq(router.NATIVE_ETH(), address(0));
        assertEq(router.BPS_DENOMINATOR(), 10_000);
        assertEq(router.MAX_SPLIT_ROUTES(), 50);
        assertEq(router.routeCount(), 0);
    }

    function test_constructor_reverts_on_zero_required_address() public {
        vm.expectRevert(TreasuryRouter.ZeroAddress.selector);

        new TreasuryRouter(
            address(0), pauser, routeManager, treasuryOperator, assetManager, emergencyManager
        );
    }

    function test_create_eth_route_success() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        TreasuryRouter.Route memory route = router.getRoute(ETH_ROUTE);

        assertTrue(router.routeExists(ETH_ROUTE));
        assertEq(router.routeCount(), 1);
        assertEq(router.routeIdAt(0), ETH_ROUTE);
        assertEq(route.routeId, ETH_ROUTE);
        assertEq(route.destination, ethRecipient);
        assertEq(route.asset, address(0));
        assertEq(route.bps, 10_000);
        assertTrue(route.enabled);
        assertFalse(route.locked);
        assertEq(uint256(route.routeType), uint256(TreasuryRouter.RouteType.EthRoute));
        assertEq(route.metadataHash, DEFAULT_METADATA);
    }

    function test_create_route_reverts_for_non_manager() public {
        vm.expectRevert();

        router.createRoute(
            ETH_ROUTE,
            ethRecipient,
            address(0),
            10_000,
            true,
            TreasuryRouter.RouteType.EthRoute,
            DEFAULT_METADATA
        );
    }

    function test_create_route_reverts_for_duplicate_route_id() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        vm.prank(routeManager);
        vm.expectRevert(
            abi.encodeWithSelector(TreasuryRouter.RouteAlreadyExists.selector, ETH_ROUTE)
        );

        router.createRoute(
            ETH_ROUTE,
            ethRecipient,
            address(0),
            10_000,
            true,
            TreasuryRouter.RouteType.EthRoute,
            DEFAULT_METADATA
        );
    }

    function test_create_route_reverts_for_zero_route_id() public {
        vm.prank(routeManager);
        vm.expectRevert(TreasuryRouter.ZeroRouteId.selector);

        router.createRoute(
            bytes32(0),
            ethRecipient,
            address(0),
            10_000,
            true,
            TreasuryRouter.RouteType.EthRoute,
            DEFAULT_METADATA
        );
    }

    function test_create_route_reverts_for_zero_destination() public {
        vm.prank(routeManager);
        vm.expectRevert(TreasuryRouter.ZeroAddress.selector);

        router.createRoute(
            ETH_ROUTE,
            address(0),
            address(0),
            10_000,
            true,
            TreasuryRouter.RouteType.EthRoute,
            DEFAULT_METADATA
        );
    }

    function test_create_route_reverts_for_non_contract_erc20_asset() public {
        address fakeAsset = makeAddr("fakeAsset");

        vm.prank(routeManager);
        vm.expectRevert(abi.encodeWithSelector(TreasuryRouter.InvalidAsset.selector, fakeAsset));

        router.createRoute(
            ERC20_ROUTE,
            erc20Recipient,
            fakeAsset,
            10_000,
            true,
            TreasuryRouter.RouteType.Erc20Route,
            DEFAULT_METADATA
        );
    }

    function test_update_route_destination_success() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        address newRecipient = makeAddr("newRecipient");

        vm.prank(routeManager);
        router.updateRouteDestination(ETH_ROUTE, newRecipient);

        TreasuryRouter.Route memory route = router.getRoute(ETH_ROUTE);

        assertEq(route.destination, newRecipient);
    }

    function test_lock_route_blocks_mutation() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        vm.prank(routeManager);
        router.lockRoute(ETH_ROUTE);

        vm.prank(routeManager);
        vm.expectRevert(abi.encodeWithSelector(TreasuryRouter.RouteLockedError.selector, ETH_ROUTE));

        router.updateRouteDestination(ETH_ROUTE, makeAddr("blockedRecipient"));
    }

    function test_set_route_enabled_false_blocks_routing() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        vm.prank(routeManager);
        router.setRouteEnabled(ETH_ROUTE, false);

        vm.prank(treasuryOperator);
        vm.expectRevert(abi.encodeWithSelector(TreasuryRouter.RouteDisabled.selector, ETH_ROUTE));

        router.routeETH{ value: 1 ether }(ETH_ROUTE);
    }

    function test_route_eth_success() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        uint256 beforeBalance = ethRecipient.balance;

        vm.prank(treasuryOperator);
        router.routeETH{ value: 1 ether }(ETH_ROUTE);

        assertEq(ethRecipient.balance, beforeBalance + 1 ether);
    }

    function test_route_eth_reverts_for_zero_amount() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        vm.prank(treasuryOperator);
        vm.expectRevert(TreasuryRouter.ZeroAmount.selector);

        router.routeETH{ value: 0 }(ETH_ROUTE);
    }

    function test_route_eth_reverts_for_erc20_route() public {
        _createErc20Route(ERC20_ROUTE, erc20Recipient, 10_000, true);

        vm.prank(treasuryOperator);
        vm.expectRevert(
            abi.encodeWithSelector(TreasuryRouter.ETHRouteRequired.selector, ERC20_ROUTE)
        );

        router.routeETH{ value: 1 ether }(ERC20_ROUTE);
    }

    function test_route_erc20_success() public {
        _createErc20Route(ERC20_ROUTE, erc20Recipient, 10_000, true);

        token.mint(treasuryOperator, 500 ether);

        vm.startPrank(treasuryOperator);
        token.approve(address(router), 500 ether);
        router.routeERC20(ERC20_ROUTE, 200 ether);
        vm.stopPrank();

        assertEq(token.balanceOf(erc20Recipient), 200 ether);
        assertEq(token.balanceOf(treasuryOperator), 300 ether);
    }

    function test_route_erc20_reverts_for_eth_route() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        token.mint(treasuryOperator, 100 ether);

        vm.startPrank(treasuryOperator);
        token.approve(address(router), 100 ether);
        vm.expectRevert(
            abi.encodeWithSelector(TreasuryRouter.ERC20RouteRequired.selector, ETH_ROUTE)
        );
        router.routeERC20(ETH_ROUTE, 10 ether);
        vm.stopPrank();
    }

    function test_route_eth_by_split_success_with_remainder() public {
        address routeARecipient = makeAddr("routeARecipient");
        address routeBRecipient = makeAddr("routeBRecipient");
        address routeCRecipient = makeAddr("routeCRecipient");

        _createEthRoute(SPLIT_ROUTE_A, routeARecipient, 3333, true);
        _createEthRoute(SPLIT_ROUTE_B, routeBRecipient, 3333, true);
        _createEthRoute(SPLIT_ROUTE_C, routeCRecipient, 3334, true);

        bytes32[] memory ids = _routeIds(SPLIT_ROUTE_A, SPLIT_ROUTE_B, SPLIT_ROUTE_C);

        uint256 amount = 1 ether;
        uint256 expectedA = (amount * 3333) / 10_000;
        uint256 expectedB = (amount * 3333) / 10_000;
        uint256 expectedC = amount - expectedA - expectedB;

        vm.prank(treasuryOperator);
        uint256[] memory routedAmounts = router.routeETHBySplit{ value: amount }(ids);

        assertEq(routedAmounts[0], expectedA);
        assertEq(routedAmounts[1], expectedB);
        assertEq(routedAmounts[2], expectedC);
        assertEq(routeARecipient.balance, expectedA);
        assertEq(routeBRecipient.balance, expectedB);
        assertEq(routeCRecipient.balance, expectedC);
    }

    function test_route_eth_by_split_reverts_when_total_bps_is_not_full() public {
        _createEthRoute(SPLIT_ROUTE_A, ethRecipient, 5000, true);

        bytes32[] memory ids = _routeIds(SPLIT_ROUTE_A);

        vm.prank(treasuryOperator);
        vm.expectRevert(
            abi.encodeWithSelector(TreasuryRouter.InvalidSplitTotal.selector, uint256(5000))
        );

        router.routeETHBySplit{ value: 1 ether }(ids);
    }

    function test_route_erc20_by_split_success() public {
        address routeARecipient = makeAddr("ercRouteARecipient");
        address routeBRecipient = makeAddr("ercRouteBRecipient");

        _createErc20Route(SPLIT_ROUTE_A, routeARecipient, 6000, true);
        _createErc20Route(SPLIT_ROUTE_B, routeBRecipient, 4000, true);

        bytes32[] memory ids = _routeIds(SPLIT_ROUTE_A, SPLIT_ROUTE_B);

        token.mint(treasuryOperator, 1000 ether);

        vm.startPrank(treasuryOperator);
        token.approve(address(router), 1000 ether);
        uint256[] memory routedAmounts = router.routeERC20BySplit(address(token), 1000 ether, ids);
        vm.stopPrank();

        assertEq(routedAmounts[0], 600 ether);
        assertEq(routedAmounts[1], 400 ether);
        assertEq(token.balanceOf(routeARecipient), 600 ether);
        assertEq(token.balanceOf(routeBRecipient), 400 ether);
        assertEq(token.balanceOf(address(router)), 0);
    }

    function test_pause_blocks_routing_and_unpause_restores() public {
        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);

        vm.prank(pauser);
        router.pause();

        assertTrue(router.paused());

        vm.prank(treasuryOperator);
        vm.expectRevert();

        router.routeETH{ value: 1 ether }(ETH_ROUTE);

        vm.prank(pauser);
        router.unpause();

        assertFalse(router.paused());

        vm.prank(treasuryOperator);
        router.routeETH{ value: 1 ether }(ETH_ROUTE);

        assertEq(ethRecipient.balance, 1 ether);
    }

    function test_rescue_eth_requires_pause_and_succeeds_when_paused() public {
        (bool received,) = address(router).call{ value: 2 ether }("");
        assertTrue(received);

        vm.prank(emergencyManager);
        vm.expectRevert();

        router.rescueETH(rescueRecipient, 1 ether);

        uint256 beforeBalance = rescueRecipient.balance;

        vm.prank(pauser);
        router.pause();

        vm.prank(emergencyManager);
        router.rescueETH(rescueRecipient, 1 ether);

        assertEq(rescueRecipient.balance, beforeBalance + 1 ether);
        assertEq(address(router).balance, 1 ether);
    }

    function test_rescue_erc20_requires_pause_and_succeeds_when_paused() public {
        token.mint(address(router), 10 ether);

        vm.prank(emergencyManager);
        vm.expectRevert();

        router.rescueERC20(address(token), rescueRecipient, 1 ether);

        vm.prank(pauser);
        router.pause();

        vm.prank(emergencyManager);
        router.rescueERC20(address(token), rescueRecipient, 3 ether);

        assertEq(token.balanceOf(rescueRecipient), 3 ether);
        assertEq(token.balanceOf(address(router)), 7 ether);
    }

    function _createEthRoute(
        bytes32 routeId,
        address destination,
        uint16 bps,
        bool enabled
    ) internal {
        vm.prank(routeManager);

        router.createRoute(
            routeId,
            destination,
            address(0),
            bps,
            enabled,
            TreasuryRouter.RouteType.EthRoute,
            DEFAULT_METADATA
        );
    }

    function _createErc20Route(
        bytes32 routeId,
        address destination,
        uint16 bps,
        bool enabled
    ) internal {
        vm.prank(routeManager);

        router.createRoute(
            routeId,
            destination,
            address(token),
            bps,
            enabled,
            TreasuryRouter.RouteType.Erc20Route,
            DEFAULT_METADATA
        );
    }

    function _routeIds(
        bytes32 routeA
    ) internal pure returns (bytes32[] memory ids) {
        ids = new bytes32[](1);
        ids[0] = routeA;
    }

    function _routeIds(
        bytes32 routeA,
        bytes32 routeB
    ) internal pure returns (bytes32[] memory ids) {
        ids = new bytes32[](2);
        ids[0] = routeA;
        ids[1] = routeB;
    }

    function _routeIds(
        bytes32 routeA,
        bytes32 routeB,
        bytes32 routeC
    ) internal pure returns (bytes32[] memory ids) {
        ids = new bytes32[](3);
        ids[0] = routeA;
        ids[1] = routeB;
        ids[2] = routeC;
    }
}
