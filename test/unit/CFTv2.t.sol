// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";

import { CFTv2 } from "../../src/CFTv2.sol";

contract MockShieldRegistryCFT {
    mapping(address => bool) public activeMembers;
    mapping(address => bool) public banned;
    mapping(address => bool) public systemExempt;

    function setActiveMember(
        address account,
        bool value
    ) external {
        activeMembers[account] = value;
    }

    function setBanned(
        address account,
        bool value
    ) external {
        banned[account] = value;
    }

    function setSystemExempt(
        address account,
        bool value
    ) external {
        systemExempt[account] = value;
    }

    function activeMember(
        address account
    ) external view returns (bool) {
        return activeMembers[account];
    }

    function isBanned(
        address account
    ) external view returns (bool) {
        return banned[account];
    }

    function isSystemExempt(
        address account
    ) external view returns (bool) {
        return systemExempt[account];
    }
}

contract CFTv2Test is Test {
    uint256 internal constant FOUNDER_GENESIS = 20_000_000_000 ether;
    uint256 internal constant FIRST_NATIONS_GENESIS = 20_000_000_000 ether;
    uint256 internal constant VIRILITY_GENESIS = 5_000_000_000 ether;
    uint256 internal constant YIELD_POOL_GENESIS = 5_000_000_000 ether;
    uint256 internal constant BUILDING_TREASURY_GENESIS = 50_000_000_000 ether;

    CFTv2 internal cft;
    MockShieldRegistryCFT internal shield;

    address internal admin;
    address internal pauser;
    address internal configManager;

    address internal founderTreasury;
    address internal firstNationsTreasury;
    address internal virilityTreasury;
    address internal yieldPool;
    address internal buildingTreasury;

    address internal directMinter;
    address internal treasuryMinter;
    address internal burner;

    address internal alice;
    address internal bob;
    address internal outsider;

    function setUp() public {
        admin = makeAddr("admin");
        pauser = makeAddr("pauser");
        configManager = makeAddr("configManager");

        founderTreasury = makeAddr("founderTreasury");
        firstNationsTreasury = makeAddr("firstNationsTreasury");
        virilityTreasury = makeAddr("virilityTreasury");
        yieldPool = makeAddr("yieldPool");
        buildingTreasury = makeAddr("buildingTreasury");

        directMinter = makeAddr("directMinter");
        treasuryMinter = makeAddr("treasuryMinter");
        burner = makeAddr("burner");

        alice = makeAddr("alice");
        bob = makeAddr("bob");
        outsider = makeAddr("outsider");

        shield = new MockShieldRegistryCFT();

        shield.setSystemExempt(founderTreasury, true);
        shield.setSystemExempt(firstNationsTreasury, true);
        shield.setSystemExempt(virilityTreasury, true);
        shield.setSystemExempt(yieldPool, true);
        shield.setSystemExempt(buildingTreasury, true);

        shield.setActiveMember(alice, true);
        shield.setActiveMember(bob, true);

        cft = _deployToken(address(shield));
    }

    function _deployToken(
        address shieldRegistry
    ) internal returns (CFTv2 deployed) {
        deployed = new CFTv2(
            admin,
            pauser,
            configManager,
            shieldRegistry,
            founderTreasury,
            firstNationsTreasury,
            virilityTreasury,
            yieldPool,
            buildingTreasury,
            "Canada Forever Token",
            "CFT"
        );
    }

    function _setDirectMinter(
        address account,
        bool allowed
    ) internal {
        vm.prank(configManager);
        cft.setDirectMinter(account, allowed);
    }

    function _setTreasuryMinter(
        address account,
        bool allowed
    ) internal {
        vm.prank(configManager);
        cft.setTreasuryMinter(account, allowed);
    }

    function _setBurner(
        address account,
        bool allowed
    ) internal {
        vm.prank(configManager);
        cft.setBurner(account, allowed);
    }

    function _directMintToAlice(
        uint256 amount
    ) internal {
        _setDirectMinter(directMinter, true);
        vm.prank(directMinter);
        cft.mint(alice, amount);
    }

    function test_constructor_sets_roles_admins_and_genesis_allocation() public view {
        assertTrue(cft.hasRole(cft.DEFAULT_ADMIN_ROLE(), admin));
        assertTrue(cft.hasRole(cft.PAUSER_ROLE(), pauser));
        assertTrue(cft.hasRole(cft.CONFIG_MANAGER_ROLE(), configManager));

        assertEq(cft.getRoleAdmin(cft.DIRECT_MINTER_ROLE()), cft.CONFIG_MANAGER_ROLE());
        assertEq(cft.getRoleAdmin(cft.TREASURY_MINT_ROLE()), cft.CONFIG_MANAGER_ROLE());
        assertEq(cft.getRoleAdmin(cft.BURNER_ROLE()), cft.CONFIG_MANAGER_ROLE());

        assertEq(address(cft.SHIELD_REGISTRY()), address(shield));

        assertEq(cft.FOUNDER_TREASURY(), founderTreasury);
        assertEq(cft.FIRST_NATIONS_TREASURY(), firstNationsTreasury);
        assertEq(cft.VIRILITY_TREASURY(), virilityTreasury);
        assertEq(cft.YIELD_POOL(), yieldPool);
        assertEq(cft.BUILDING_TREASURY(), buildingTreasury);

        assertEq(cft.totalSupply(), cft.GENESIS_SUPPLY());
        assertEq(cft.balanceOf(founderTreasury), FOUNDER_GENESIS);
        assertEq(cft.balanceOf(firstNationsTreasury), FIRST_NATIONS_GENESIS);
        assertEq(cft.balanceOf(virilityTreasury), VIRILITY_GENESIS);
        assertEq(cft.balanceOf(yieldPool), YIELD_POOL_GENESIS);
        assertEq(cft.balanceOf(buildingTreasury), BUILDING_TREASURY_GENESIS);
    }

    function test_constructor_bootstraps_genesis_even_if_treasuries_are_not_permitted() public {
        MockShieldRegistryCFT freshShield = new MockShieldRegistryCFT();

        CFTv2 fresh = _deployToken(address(freshShield));

        assertEq(fresh.totalSupply(), fresh.GENESIS_SUPPLY());
        assertEq(fresh.balanceOf(founderTreasury), FOUNDER_GENESIS);
        assertEq(fresh.balanceOf(firstNationsTreasury), FIRST_NATIONS_GENESIS);
        assertEq(fresh.balanceOf(virilityTreasury), VIRILITY_GENESIS);
        assertEq(fresh.balanceOf(yieldPool), YIELD_POOL_GENESIS);
        assertEq(fresh.balanceOf(buildingTreasury), BUILDING_TREASURY_GENESIS);
    }

    function test_constructor_reverts_on_zero_required_addresses() public {
        vm.expectRevert(CFTv2.ZeroAddress.selector);
        new CFTv2(
            address(0),
            pauser,
            configManager,
            address(shield),
            founderTreasury,
            firstNationsTreasury,
            virilityTreasury,
            yieldPool,
            buildingTreasury,
            "Canada Forever Token",
            "CFT"
        );

        vm.expectRevert(CFTv2.ZeroAddress.selector);
        new CFTv2(
            admin,
            pauser,
            configManager,
            address(0),
            founderTreasury,
            firstNationsTreasury,
            virilityTreasury,
            yieldPool,
            buildingTreasury,
            "Canada Forever Token",
            "CFT"
        );
    }

    function test_constructor_reverts_on_invalid_role_holder() public {
        vm.expectRevert(CFTv2.InvalidRoleHolder.selector);
        new CFTv2(
            admin,
            address(0),
            configManager,
            address(shield),
            founderTreasury,
            firstNationsTreasury,
            virilityTreasury,
            yieldPool,
            buildingTreasury,
            "Canada Forever Token",
            "CFT"
        );
    }

    function test_constructor_reverts_on_invalid_dependency() public {
        address fake = makeAddr("fake");

        vm.expectRevert(abi.encodeWithSelector(CFTv2.InvalidDependency.selector, fake));
        new CFTv2(
            admin,
            pauser,
            configManager,
            fake,
            founderTreasury,
            firstNationsTreasury,
            virilityTreasury,
            yieldPool,
            buildingTreasury,
            "Canada Forever Token",
            "CFT"
        );
    }

    function test_is_transfer_participant_allowed_view() public {
        assertTrue(cft.isTransferParticipantAllowed(alice));
        assertTrue(cft.isTransferParticipantAllowed(founderTreasury));
        assertFalse(cft.isTransferParticipantAllowed(outsider));
        assertFalse(cft.isTransferParticipantAllowed(address(0)));

        shield.setBanned(alice, true);
        assertFalse(cft.isTransferParticipantAllowed(alice));
    }

    function test_config_manager_can_set_roles_and_non_role_cannot() public {
        vm.prank(configManager);
        cft.setDirectMinter(directMinter, true);
        assertTrue(cft.hasRole(cft.DIRECT_MINTER_ROLE(), directMinter));

        vm.prank(configManager);
        cft.setTreasuryMinter(treasuryMinter, true);
        assertTrue(cft.hasRole(cft.TREASURY_MINT_ROLE(), treasuryMinter));

        vm.prank(configManager);
        cft.setBurner(burner, true);
        assertTrue(cft.hasRole(cft.BURNER_ROLE(), burner));

        vm.prank(outsider);
        vm.expectRevert();
        cft.setDirectMinter(outsider, true);

        vm.prank(outsider);
        vm.expectRevert();
        cft.setTreasuryMinter(outsider, true);

        vm.prank(outsider);
        vm.expectRevert();
        cft.setBurner(outsider, true);
    }

    function test_set_role_functions_revert_on_zero_address() public {
        vm.prank(configManager);
        vm.expectRevert(CFTv2.ZeroAddress.selector);
        cft.setDirectMinter(address(0), true);

        vm.prank(configManager);
        vm.expectRevert(CFTv2.ZeroAddress.selector);
        cft.setTreasuryMinter(address(0), true);

        vm.prank(configManager);
        vm.expectRevert(CFTv2.ZeroAddress.selector);
        cft.setBurner(address(0), true);
    }

    function test_preview_treasury_split() public view {
        (
            uint256 founderAmount,
            uint256 firstNationsAmount,
            uint256 virilityAmount,
            uint256 yieldPoolAmount,
            uint256 buildingTreasuryAmount
        ) = cft.previewTreasurySplit(1000 ether);

        assertEq(founderAmount, 200 ether);
        assertEq(firstNationsAmount, 200 ether);
        assertEq(virilityAmount, 50 ether);
        assertEq(yieldPoolAmount, 50 ether);
        assertEq(buildingTreasuryAmount, 500 ether);
    }

    function test_preview_treasury_split_reverts_on_zero_amount() public {
        vm.expectRevert(CFTv2.InvalidAmount.selector);
        cft.previewTreasurySplit(0);
    }

    function test_direct_mint_success() public {
        _setDirectMinter(directMinter, true);

        vm.prank(directMinter);
        cft.mint(alice, 100 ether);

        assertEq(cft.balanceOf(alice), 100 ether);
        assertEq(cft.totalSupply(), cft.GENESIS_SUPPLY() + 100 ether);
    }

    function test_direct_mint_reverts_for_non_permitted_recipient() public {
        _setDirectMinter(directMinter, true);

        vm.prank(directMinter);
        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
        cft.mint(outsider, 100 ether);
    }

    function test_direct_mint_reverts_for_zero_amount() public {
        _setDirectMinter(directMinter, true);

        vm.prank(directMinter);
        vm.expectRevert(CFTv2.InvalidAmount.selector);
        cft.mint(alice, 0);
    }

    function test_treasury_split_mint_success() public {
        _setTreasuryMinter(treasuryMinter, true);

        uint256 founderBefore = cft.balanceOf(founderTreasury);
        uint256 firstNationsBefore = cft.balanceOf(firstNationsTreasury);
        uint256 virilityBefore = cft.balanceOf(virilityTreasury);
        uint256 yieldBefore = cft.balanceOf(yieldPool);
        uint256 buildingBefore = cft.balanceOf(buildingTreasury);

        vm.prank(treasuryMinter);
        (
            uint256 founderAmount,
            uint256 firstNationsAmount,
            uint256 virilityAmount,
            uint256 yieldPoolAmount,
            uint256 buildingTreasuryAmount
        ) = cft.mintTreasurySplit(1000 ether);

        assertEq(founderAmount, 200 ether);
        assertEq(firstNationsAmount, 200 ether);
        assertEq(virilityAmount, 50 ether);
        assertEq(yieldPoolAmount, 50 ether);
        assertEq(buildingTreasuryAmount, 500 ether);

        assertEq(cft.balanceOf(founderTreasury), founderBefore + founderAmount);
        assertEq(cft.balanceOf(firstNationsTreasury), firstNationsBefore + firstNationsAmount);
        assertEq(cft.balanceOf(virilityTreasury), virilityBefore + virilityAmount);
        assertEq(cft.balanceOf(yieldPool), yieldBefore + yieldPoolAmount);
        assertEq(cft.balanceOf(buildingTreasury), buildingBefore + buildingTreasuryAmount);
    }

    function test_treasury_split_mint_reverts_on_zero_amount() public {
        _setTreasuryMinter(treasuryMinter, true);

        vm.prank(treasuryMinter);
        vm.expectRevert(CFTv2.InvalidAmount.selector);
        cft.mintTreasurySplit(0);
    }

    function test_burn_success_for_active_member() public {
        _directMintToAlice(100 ether);

        vm.prank(alice);
        cft.burn(40 ether);

        assertEq(cft.balanceOf(alice), 60 ether);
        assertEq(cft.totalSupply(), cft.GENESIS_SUPPLY() + 60 ether);
    }

    function test_burn_reverts_on_zero_amount() public {
        _directMintToAlice(1 ether);

        vm.prank(alice);
        vm.expectRevert(CFTv2.InvalidAmount.selector);
        cft.burn(0);
    }

    function test_burn_from_account_success() public {
        _directMintToAlice(100 ether);
        _setBurner(burner, true);

        vm.prank(burner);
        cft.burnFromAccount(alice, 100 ether);

        assertEq(cft.balanceOf(alice), 0);
        assertEq(cft.totalSupply(), cft.GENESIS_SUPPLY());
    }

    function test_burn_from_account_reverts_on_zero_address() public {
        _setBurner(burner, true);

        vm.prank(burner);
        vm.expectRevert(CFTv2.ZeroAddress.selector);
        cft.burnFromAccount(address(0), 1 ether);
    }

    function test_transfer_between_active_members_success() public {
        _directMintToAlice(100 ether);

        vm.prank(alice);
        bool ok = cft.transfer(bob, 25 ether);

        assertTrue(ok);
        assertEq(cft.balanceOf(alice), 75 ether);
        assertEq(cft.balanceOf(bob), 25 ether);
    }

    function test_transfer_reverts_to_non_permitted_account() public {
        _directMintToAlice(100 ether);

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
        cft.transfer(outsider, 1 ether);
    }

    function test_transfer_reverts_when_sender_becomes_banned() public {
        _directMintToAlice(100 ether);
        shield.setBanned(alice, true);

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, alice));
        cft.transfer(bob, 1 ether);
    }

    function test_approve_and_transfer_from_success() public {
        _directMintToAlice(100 ether);

        vm.prank(alice);
        bool approved = cft.approve(bob, 40 ether);
        assertTrue(approved);
        assertEq(cft.allowance(alice, bob), 40 ether);

        vm.prank(bob);
        bool ok = cft.transferFrom(alice, bob, 40 ether);
        assertTrue(ok);

        assertEq(cft.balanceOf(alice), 60 ether);
        assertEq(cft.balanceOf(bob), 40 ether);
        assertEq(cft.allowance(alice, bob), 0);
    }

    function test_approve_reverts_for_non_permitted_spender() public {
        _directMintToAlice(100 ether);

        vm.prank(alice);
        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
        cft.approve(outsider, 1 ether);
    }

    function test_transfer_from_reverts_when_caller_not_permitted() public {
        _directMintToAlice(100 ether);

        vm.prank(alice);
        cft.approve(bob, 40 ether);

        vm.prank(outsider);
        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
        cft.transferFrom(alice, bob, 1 ether);
    }

    function test_pause_blocks_mutations_and_unpause_restores() public {
        _setDirectMinter(directMinter, true);

        vm.prank(directMinter);
        cft.mint(alice, 10 ether);

        vm.prank(pauser);
        cft.pause();

        vm.prank(directMinter);
        vm.expectRevert();
        cft.mint(alice, 1 ether);

        vm.prank(alice);
        vm.expectRevert();
        cft.transfer(bob, 1 ether);

        vm.prank(alice);
        vm.expectRevert();
        cft.burn(1 ether);

        vm.prank(pauser);
        cft.unpause();

        vm.prank(alice);
        bool ok = cft.transfer(bob, 1 ether);
        assertTrue(ok);
    }
}
