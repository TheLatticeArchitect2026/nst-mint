// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Test } from "forge-std/Test.sol";
import { ERC721 } from "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

import { ShieldRegistry } from "../../src/ShieldRegistry.sol";

contract MockMembershipToken is ERC721 {
    uint256 private _nextTokenId = 1;

    constructor() ERC721("NST Membership", "NSTM") { }

    function mint(
        address to
    ) external returns (uint256 tokenId) {
        tokenId = _nextTokenId;
        _nextTokenId = tokenId + 1;
        _mint(to, tokenId);
    }
}

contract ShieldRegistryTest is Test {
    ShieldRegistry internal shield;
    MockMembershipToken internal membership;

    address internal admin;
    address internal pauser;
    address internal vettingManager;
    address internal banManager;
    address internal exemptionManager;
    address internal profileManager;

    address internal alice;
    address internal bob;
    address internal corp;
    address internal operator;

    function setUp() public {
        admin = makeAddr("admin");
        pauser = makeAddr("pauser");
        vettingManager = makeAddr("vettingManager");
        banManager = makeAddr("banManager");
        exemptionManager = makeAddr("exemptionManager");
        profileManager = makeAddr("profileManager");

        alice = makeAddr("alice");
        bob = makeAddr("bob");
        corp = makeAddr("corp");
        operator = makeAddr("operator");

        membership = new MockMembershipToken();

        shield = new ShieldRegistry(
            admin,
            pauser,
            vettingManager,
            banManager,
            exemptionManager,
            profileManager,
            address(membership)
        );
    }

    function test_constructor_sets_roles_and_membership_token() public view {
        assertTrue(shield.hasRole(shield.DEFAULT_ADMIN_ROLE(), admin));
        assertTrue(shield.hasRole(shield.PAUSER_ROLE(), pauser));
        assertTrue(shield.hasRole(shield.VETTING_MANAGER_ROLE(), vettingManager));
        assertTrue(shield.hasRole(shield.BAN_MANAGER_ROLE(), banManager));
        assertTrue(shield.hasRole(shield.EXEMPTION_MANAGER_ROLE(), exemptionManager));
        assertTrue(shield.hasRole(shield.PROFILE_MANAGER_ROLE(), profileManager));

        assertEq(address(shield.membershipToken()), address(membership));
    }

    function test_constructor_reverts_when_default_admin_is_zero() public {
        vm.expectRevert(ShieldRegistry.ZeroAddress.selector);
        new ShieldRegistry(
            address(0),
            pauser,
            vettingManager,
            banManager,
            exemptionManager,
            profileManager,
            address(membership)
        );
    }

    function test_constructor_reverts_when_role_holder_is_zero() public {
        vm.expectRevert(ShieldRegistry.InvalidRoleHolder.selector);
        new ShieldRegistry(
            admin,
            address(0),
            vettingManager,
            banManager,
            exemptionManager,
            profileManager,
            address(membership)
        );
    }

    function test_constructor_reverts_when_membership_token_is_eoa() public {
        address fakeToken = makeAddr("fakeToken");

        vm.expectRevert(
            abi.encodeWithSelector(ShieldRegistry.InvalidMembershipToken.selector, fakeToken)
        );
        new ShieldRegistry(
            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, fakeToken
        );
    }

    function test_pause_and_unpause() public {
        vm.prank(pauser);
        shield.pause();
        assertTrue(shield.paused());

        vm.prank(pauser);
        shield.unpause();
        assertFalse(shield.paused());
    }

    function test_set_vetted_updates_isVetted_and_isMintEligible() public {
        vm.prank(vettingManager);
        shield.setVetted(alice, true);

        assertTrue(shield.isVetted(alice));
        assertTrue(shield.isMintEligible(alice));

        vm.prank(vettingManager);
        shield.setVetted(alice, false);

        assertFalse(shield.isVetted(alice));
        assertFalse(shield.isMintEligible(alice));
    }

    function test_batch_set_vetted_updates_multiple_accounts() public {
        address[] memory accounts = new address[](2);
        accounts[0] = alice;
        accounts[1] = bob;

        vm.prank(vettingManager);
        shield.batchSetVetted(accounts, true);

        assertTrue(shield.isVetted(alice));
        assertTrue(shield.isVetted(bob));
    }

    function test_batch_set_vetted_reverts_on_empty_array() public {
        address[] memory accounts = new address[](0);

        vm.prank(vettingManager);
        vm.expectRevert(ShieldRegistry.EmptyArray.selector);
        shield.batchSetVetted(accounts, true);
    }

    function test_ban_account_is_irreversible_in_v1_and_blocks_vetting() public {
        bytes32 reasonHash = keccak256("fraud");

        vm.prank(banManager);
        shield.banAccount(alice, reasonHash);

        assertTrue(shield.isBanned(alice));
        assertFalse(shield.isMintEligible(alice));
        assertFalse(shield.canTouchSystem(alice));

        vm.prank(vettingManager);
        vm.expectRevert(abi.encodeWithSelector(ShieldRegistry.BannedAccount.selector, alice));
        shield.setVetted(alice, true);

        vm.prank(banManager);
        vm.expectRevert(abi.encodeWithSelector(ShieldRegistry.AlreadyBanned.selector, alice));
        shield.banAccount(alice, reasonHash);
    }

    function test_batch_ban_accounts_reverts_on_empty_array() public {
        address[] memory accounts = new address[](0);

        vm.prank(banManager);
        vm.expectRevert(ShieldRegistry.EmptyArray.selector);
        shield.batchBanAccounts(accounts, keccak256("reason"));
    }

    function test_system_exempt_can_touch_system_without_vetting() public {
        vm.prank(exemptionManager);
        shield.setSystemExempt(operator, true);

        assertTrue(shield.isSystemExempt(operator));
        assertTrue(shield.canTouchSystem(operator));
        assertFalse(shield.activeMember(operator));
        assertFalse(shield.isMintEligible(operator));
    }

    function test_batch_set_system_exempt_reverts_on_empty_array() public {
        address[] memory accounts = new address[](0);

        vm.prank(exemptionManager);
        vm.expectRevert(ShieldRegistry.EmptyArray.selector);
        shield.batchSetSystemExempt(accounts, true);
    }

    function test_cannot_set_system_exempt_true_for_banned_account() public {
        vm.prank(banManager);
        shield.banAccount(alice, keccak256("ban"));

        vm.prank(exemptionManager);
        vm.expectRevert(abi.encodeWithSelector(ShieldRegistry.BannedAccount.selector, alice));
        shield.setSystemExempt(alice, true);
    }

    function test_set_entity_profile_updates_registry_fields() public {
        bytes32 boHash = keccak256("corp-bo");

        vm.prank(profileManager);
        shield.setEntityProfile(corp, ShieldRegistry.EntityType.Corporation, 7, boHash);

        assertEq(shield.entityType(corp), uint8(ShieldRegistry.EntityType.Corporation));
        assertEq(shield.jurisdictionTier(corp), 7);
        assertEq(shield.beneficialOwnerHash(corp), boHash);
    }

    function test_set_operational_permissions_exposes_views_for_vetted_account() public {
        vm.prank(vettingManager);
        shield.setVetted(corp, true);

        vm.prank(profileManager);
        shield.setOperationalPermissions(corp, true, true, true);

        assertTrue(shield.canInviteMembers(corp));
        assertTrue(shield.canOriginateInvoices(corp));
        assertTrue(shield.canResolveDisputes(corp));
    }

    function test_set_operational_permissions_reverts_for_banned_account() public {
        vm.prank(banManager);
        shield.banAccount(corp, keccak256("banned-corp"));

        vm.prank(profileManager);
        vm.expectRevert(abi.encodeWithSelector(ShieldRegistry.BannedAccount.selector, corp));
        shield.setOperationalPermissions(corp, true, true, true);
    }

    function test_system_exempt_can_resolve_disputes_without_vetting_permission() public {
        vm.prank(exemptionManager);
        shield.setSystemExempt(operator, true);

        assertTrue(shield.canResolveDisputes(operator));
    }

    function test_active_member_requires_vetting_not_banned_and_nst() public {
        membership.mint(alice);

        assertFalse(shield.activeMember(alice));

        vm.prank(vettingManager);
        shield.setVetted(alice, true);

        assertTrue(shield.activeMember(alice));

        vm.prank(banManager);
        shield.banAccount(alice, keccak256("ban-active-member"));

        assertFalse(shield.activeMember(alice));
    }

    function test_set_membership_token_after_deployment_enables_ownsNST_and_activeMember() public {
        ShieldRegistry noTokenShield = new ShieldRegistry(
            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, address(0)
        );

        vm.prank(vettingManager);
        noTokenShield.setVetted(alice, true);

        assertFalse(noTokenShield.ownsNST(alice));
        assertFalse(noTokenShield.activeMember(alice));

        MockMembershipToken newMembership = new MockMembershipToken();
        newMembership.mint(alice);

        vm.prank(admin);
        noTokenShield.setMembershipToken(address(newMembership));

        assertTrue(noTokenShield.ownsNST(alice));
        assertTrue(noTokenShield.activeMember(alice));
    }

    function test_set_membership_token_reverts_for_invalid_token() public {
        address fakeToken = makeAddr("fakeToken");

        vm.prank(admin);
        vm.expectRevert(
            abi.encodeWithSelector(ShieldRegistry.InvalidMembershipToken.selector, fakeToken)
        );
        shield.setMembershipToken(fakeToken);
    }

    function test_get_account_state_returns_expected_snapshot() public {
        bytes32 boHash = keccak256("owner-hash");
        membership.mint(corp);

        vm.prank(vettingManager);
        shield.setVetted(corp, true);

        vm.prank(profileManager);
        shield.setEntityProfile(corp, ShieldRegistry.EntityType.Supplier, 3, boHash);

        vm.prank(profileManager);
        shield.setOperationalPermissions(corp, true, true, false);

        (
            bool vetted,
            bool banned,
            bool systemExempt,
            uint8 entityType_,
            uint8 jurisdictionTier_,
            bytes32 beneficialOwnerHash_,
            bool canInviteMembers_,
            bool canOriginateInvoices_,
            bool canResolveDisputes_,
            bool canTouchSystem_,
            bool activeMember_
        ) = shield.getAccountState(corp);

        assertTrue(vetted);
        assertFalse(banned);
        assertFalse(systemExempt);
        assertEq(entityType_, uint8(ShieldRegistry.EntityType.Supplier));
        assertEq(jurisdictionTier_, 3);
        assertEq(beneficialOwnerHash_, boHash);
        assertTrue(canInviteMembers_);
        assertTrue(canOriginateInvoices_);
        assertFalse(canResolveDisputes_);
        assertTrue(canTouchSystem_);
        assertTrue(activeMember_);
    }
}
