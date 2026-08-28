// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { Script } from "forge-std/Script.sol";

import { ShieldRegistry } from "../src/ShieldRegistry.sol";
import { NSTSBT } from "../src/NSTSBT.sol";
import { CFTv2 } from "../src/CFTv2.sol";
import { RewardEscrow } from "../src/RewardEscrow.sol";
import { ReferralController } from "../src/ReferralController.sol";
import { VaultRegistry } from "../src/VaultRegistry.sol";
import { TreasuryRouter } from "../src/TreasuryRouter.sol";
import { YieldPool } from "../src/YieldPool.sol";

interface IAccessControlLike {
    function hasRole(
        bytes32 role,
        address account
    ) external view returns (bool);
    function grantRole(
        bytes32 role,
        address account
    ) external;
    function revokeRole(
        bytes32 role,
        address account
    ) external;
}

contract DeployNSTLattice is Script {
    error ZeroAddressConfig(string key);
    error InvalidRouter(address router);
    error GenesisRecipientBanned(address account);
    error GenesisRecipientNotActive(address account);

    string internal constant NST_NAME = "NST Lattice";
    string internal constant NST_SYMBOL = "NST";
    string internal constant CFT_NAME = "Canada Forever Token";
    string internal constant CFT_SYMBOL = "CFT";

    struct Config {
        address defaultAdmin;
        address pauser;
        address vettingManager;
        address banManager;
        address exemptionManager;
        address profileManager;
        address configManager;
        address mintManager;
        address metadataManager;
        address treasuryManager;
        address swapOperator;
        address initialGrantCreator;
        address credentialIssuer;
        address credentialRevoker;
        address uriManager;
        address proofManager;
        address routeManager;
        address treasuryOperator;
        address assetManager;
        address emergencyManager;
        address grantManager;
        address claimManager;
        address rescueManager;
        address genesisRecipient;
        address founderTreasury;
        address firstNationsTreasury;
        address virilityTreasury;
        address yieldPool;
        address buildingTreasury;
        address router;
    }

    struct Deployment {
        ShieldRegistry shield;
        VaultRegistry vaultRegistry;
        TreasuryRouter treasuryRouter;
        YieldPool yieldPool;
        CFTv2 cft;
        NSTSBT nst;
        RewardEscrow rewardEscrow;
        ReferralController referral;
    }

    function run() external returns (Deployment memory deployed) {
        (uint256 deployerKey, address operator, Config memory cfg) = _loadConfig();

        _preflight(cfg);

        vm.createDir("deployments", true);
        vm.createDir("frontend/contracts", true);

        vm.startBroadcast(deployerKey);

        deployed = _deployCore(operator, cfg);
        _wireCore(deployed, cfg);
        _handoffRoles(deployed, cfg, operator);

        vm.stopBroadcast();

        _writeArtifacts(deployed, cfg, operator);

        return deployed;
    }

    function _loadConfig()
        internal
        view
        returns (uint256 deployerKey, address operator, Config memory cfg)
    {
        deployerKey = vm.envUint("PRIVATE_KEY");
        operator = vm.addr(deployerKey);

        cfg.defaultAdmin = vm.envAddress("DEFAULT_ADMIN");
        cfg.pauser = vm.envAddress("PAUSER");
        cfg.vettingManager = vm.envAddress("VETTING_MANAGER");
        cfg.banManager = vm.envAddress("BAN_MANAGER");
        cfg.exemptionManager = vm.envAddress("EXEMPTION_MANAGER");
        cfg.profileManager = vm.envAddress("PROFILE_MANAGER");
        cfg.configManager = vm.envAddress("CONFIG_MANAGER");
        cfg.mintManager = vm.envAddress("MINT_MANAGER");
        cfg.metadataManager = vm.envAddress("METADATA_MANAGER");
        cfg.treasuryManager = vm.envAddress("TREASURY_MANAGER");
        cfg.swapOperator = vm.envAddress("SWAP_OPERATOR");
        cfg.initialGrantCreator = vm.envAddress("INITIAL_GRANT_CREATOR");

        cfg.credentialIssuer = vm.envAddress("CREDENTIAL_ISSUER");
        cfg.credentialRevoker = vm.envAddress("CREDENTIAL_REVOKER");
        cfg.uriManager = vm.envAddress("URI_MANAGER");
        cfg.proofManager = vm.envAddress("PROOF_MANAGER");
        cfg.routeManager = vm.envAddress("ROUTE_MANAGER");
        cfg.treasuryOperator = vm.envAddress("TREASURY_OPERATOR");
        cfg.assetManager = vm.envAddress("ASSET_MANAGER");
        cfg.emergencyManager = vm.envAddress("EMERGENCY_MANAGER");
        cfg.grantManager = vm.envAddress("GRANT_MANAGER");
        cfg.claimManager = vm.envAddress("CLAIM_MANAGER");
        cfg.rescueManager = vm.envAddress("RESCUE_MANAGER");

        cfg.genesisRecipient = vm.envAddress("GENESIS_RECIPIENT");
        cfg.founderTreasury = vm.envAddress("FOUNDER_TREASURY");
        cfg.firstNationsTreasury = vm.envAddress("FIRST_NATIONS_TREASURY");
        cfg.virilityTreasury = vm.envAddress("VIRILITY_TREASURY");
        cfg.yieldPool = vm.envOr("YIELD_POOL", address(0));
        cfg.buildingTreasury = vm.envAddress("BUILDING_TREASURY");

        cfg.router = vm.envAddress("ROUTER");
    }

    function _preflight(
        Config memory cfg
    ) internal view {
        _requireNonZero(cfg.defaultAdmin, "DEFAULT_ADMIN");
        _requireNonZero(cfg.pauser, "PAUSER");
        _requireNonZero(cfg.vettingManager, "VETTING_MANAGER");
        _requireNonZero(cfg.banManager, "BAN_MANAGER");
        _requireNonZero(cfg.exemptionManager, "EXEMPTION_MANAGER");
        _requireNonZero(cfg.profileManager, "PROFILE_MANAGER");
        _requireNonZero(cfg.configManager, "CONFIG_MANAGER");
        _requireNonZero(cfg.mintManager, "MINT_MANAGER");
        _requireNonZero(cfg.metadataManager, "METADATA_MANAGER");
        _requireNonZero(cfg.treasuryManager, "TREASURY_MANAGER");
        _requireNonZero(cfg.swapOperator, "SWAP_OPERATOR");
        _requireNonZero(cfg.initialGrantCreator, "INITIAL_GRANT_CREATOR");

        _requireNonZero(cfg.genesisRecipient, "GENESIS_RECIPIENT");
        _requireNonZero(cfg.founderTreasury, "FOUNDER_TREASURY");
        _requireNonZero(cfg.firstNationsTreasury, "FIRST_NATIONS_TREASURY");
        _requireNonZero(cfg.virilityTreasury, "VIRILITY_TREASURY");
        _requireNonZero(cfg.buildingTreasury, "BUILDING_TREASURY");
        _requireNonZero(cfg.router, "ROUTER");

        _requireNonZero(cfg.credentialIssuer, "CREDENTIAL_ISSUER");
        _requireNonZero(cfg.credentialRevoker, "CREDENTIAL_REVOKER");
        _requireNonZero(cfg.uriManager, "URI_MANAGER");
        _requireNonZero(cfg.proofManager, "PROOF_MANAGER");
        _requireNonZero(cfg.routeManager, "ROUTE_MANAGER");
        _requireNonZero(cfg.treasuryOperator, "TREASURY_OPERATOR");
        _requireNonZero(cfg.assetManager, "ASSET_MANAGER");
        _requireNonZero(cfg.emergencyManager, "EMERGENCY_MANAGER");
        _requireNonZero(cfg.grantManager, "GRANT_MANAGER");
        _requireNonZero(cfg.claimManager, "CLAIM_MANAGER");
        _requireNonZero(cfg.rescueManager, "RESCUE_MANAGER");

        if (cfg.router.code.length == 0) revert InvalidRouter(cfg.router);
    }

    function _deployCore(
        address operator,
        Config memory cfg
    ) internal returns (Deployment memory deployed) {
        deployed.shield = new ShieldRegistry(
            operator, operator, operator, operator, operator, operator, address(0)
        );

        if (deployed.shield.isBanned(cfg.genesisRecipient)) {
            revert GenesisRecipientBanned(cfg.genesisRecipient);
        }

        deployed.shield.setVetted(cfg.genesisRecipient, true);

        deployed.vaultRegistry = new VaultRegistry(
            operator, operator, operator, operator, operator, operator, address(deployed.shield)
        );

        deployed.treasuryRouter =
            new TreasuryRouter(operator, operator, operator, operator, operator, operator);

        deployed.yieldPool =
            new YieldPool(operator, operator, operator, operator, operator, operator);

        _setSystemExemptIfNeeded(deployed.shield, cfg.founderTreasury);
        _setSystemExemptIfNeeded(deployed.shield, cfg.firstNationsTreasury);
        _setSystemExemptIfNeeded(deployed.shield, cfg.virilityTreasury);
        _setSystemExemptIfNeeded(deployed.shield, address(deployed.yieldPool));
        _setSystemExemptIfNeeded(deployed.shield, cfg.buildingTreasury);

        deployed.cft = new CFTv2(
            operator,
            operator,
            operator,
            address(deployed.shield),
            cfg.founderTreasury,
            cfg.firstNationsTreasury,
            cfg.virilityTreasury,
            address(deployed.yieldPool),
            cfg.buildingTreasury,
            CFT_NAME,
            CFT_SYMBOL
        );

        deployed.yieldPool.setAssetAllowed(address(deployed.cft), true);

        deployed.nst = new NSTSBT(
            operator,
            cfg.genesisRecipient,
            cfg.founderTreasury,
            address(deployed.shield),
            cfg.router,
            address(deployed.cft),
            address(deployed.yieldPool),
            operator,
            operator,
            operator,
            operator,
            operator,
            NST_NAME,
            NST_SYMBOL
        );

        deployed.rewardEscrow = new RewardEscrow(
            operator, operator, operator, operator, address(deployed.shield), address(deployed.cft)
        );

        deployed.referral = new ReferralController(
            operator,
            operator,
            operator,
            address(deployed.shield),
            address(deployed.cft),
            address(deployed.rewardEscrow)
        );
    }

    function _wireCore(
        Deployment memory deployed,
        Config memory cfg
    ) internal {
        deployed.shield.setMembershipToken(address(deployed.nst));

        if (!deployed.shield.activeMember(cfg.genesisRecipient)) {
            revert GenesisRecipientNotActive(cfg.genesisRecipient);
        }

        bytes32 grantCreatorRole = deployed.rewardEscrow.GRANT_CREATOR_ROLE();
        deployed.rewardEscrow.grantRole(grantCreatorRole, address(deployed.referral));

        deployed.cft.setDirectMinter(address(deployed.referral), true);
        deployed.cft.setDirectMinter(address(deployed.rewardEscrow), true);
    }

    function _handoffRoles(
        Deployment memory deployed,
        Config memory cfg,
        address operator
    ) internal {
        _handoffShield(deployed.shield, cfg, operator);
        _handoffNST(deployed.nst, cfg, operator);
        _handoffCFT(deployed.cft, cfg, operator);
        _handoffRewardEscrow(deployed.rewardEscrow, cfg, operator);
        _handoffReferral(deployed.referral, cfg, operator);
        _handoffVaultRegistry(deployed.vaultRegistry, cfg, operator);
        _handoffTreasuryRouter(deployed.treasuryRouter, cfg, operator);
        _handoffYieldPool(deployed.yieldPool, cfg, operator);
    }

    function _handoffShield(
        ShieldRegistry shield,
        Config memory cfg,
        address operator
    ) internal {
        IAccessControlLike target = IAccessControlLike(address(shield));

        _grantRoleIfMissing(target, shield.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
        _grantRoleIfMissing(target, shield.PAUSER_ROLE(), cfg.pauser);
        _grantRoleIfMissing(target, shield.VETTING_MANAGER_ROLE(), cfg.vettingManager);
        _grantRoleIfMissing(target, shield.BAN_MANAGER_ROLE(), cfg.banManager);
        _grantRoleIfMissing(target, shield.EXEMPTION_MANAGER_ROLE(), cfg.exemptionManager);
        _grantRoleIfMissing(target, shield.PROFILE_MANAGER_ROLE(), cfg.profileManager);

        _revokeBootstrapIfDifferent(target, shield.PAUSER_ROLE(), operator, cfg.pauser);
        _revokeBootstrapIfDifferent(
            target, shield.VETTING_MANAGER_ROLE(), operator, cfg.vettingManager
        );
        _revokeBootstrapIfDifferent(target, shield.BAN_MANAGER_ROLE(), operator, cfg.banManager);
        _revokeBootstrapIfDifferent(
            target, shield.EXEMPTION_MANAGER_ROLE(), operator, cfg.exemptionManager
        );
        _revokeBootstrapIfDifferent(
            target, shield.PROFILE_MANAGER_ROLE(), operator, cfg.profileManager
        );
        _revokeBootstrapIfDifferent(target, shield.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
    }

    function _handoffNST(
        NSTSBT nst,
        Config memory cfg,
        address operator
    ) internal {
        IAccessControlLike target = IAccessControlLike(address(nst));

        _grantRoleIfMissing(target, nst.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
        _grantRoleIfMissing(target, nst.PAUSER_ROLE(), cfg.pauser);
        _grantRoleIfMissing(target, nst.MINT_MANAGER_ROLE(), cfg.mintManager);
        _grantRoleIfMissing(target, nst.METADATA_MANAGER_ROLE(), cfg.metadataManager);
        _grantRoleIfMissing(target, nst.TREASURY_MANAGER_ROLE(), cfg.treasuryManager);
        _grantRoleIfMissing(target, nst.SWAP_OPERATOR_ROLE(), cfg.swapOperator);

        _revokeBootstrapIfDifferent(target, nst.PAUSER_ROLE(), operator, cfg.pauser);
        _revokeBootstrapIfDifferent(target, nst.MINT_MANAGER_ROLE(), operator, cfg.mintManager);
        _revokeBootstrapIfDifferent(
            target, nst.METADATA_MANAGER_ROLE(), operator, cfg.metadataManager
        );
        _revokeBootstrapIfDifferent(
            target, nst.TREASURY_MANAGER_ROLE(), operator, cfg.treasuryManager
        );
        _revokeBootstrapIfDifferent(target, nst.SWAP_OPERATOR_ROLE(), operator, cfg.swapOperator);
        _revokeBootstrapIfDifferent(target, nst.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
    }

    function _handoffCFT(
        CFTv2 cft,
        Config memory cfg,
        address operator
    ) internal {
        IAccessControlLike target = IAccessControlLike(address(cft));

        _grantRoleIfMissing(target, cft.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
        _grantRoleIfMissing(target, cft.PAUSER_ROLE(), cfg.pauser);
        _grantRoleIfMissing(target, cft.CONFIG_MANAGER_ROLE(), cfg.configManager);

        _revokeBootstrapIfDifferent(target, cft.PAUSER_ROLE(), operator, cfg.pauser);
        _revokeBootstrapIfDifferent(target, cft.CONFIG_MANAGER_ROLE(), operator, cfg.configManager);
        _revokeBootstrapIfDifferent(target, cft.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
    }

    function _handoffRewardEscrow(
        RewardEscrow rewardEscrow,
        Config memory cfg,
        address operator
    ) internal {
        IAccessControlLike target = IAccessControlLike(address(rewardEscrow));

        _grantRoleIfMissing(target, rewardEscrow.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
        _grantRoleIfMissing(target, rewardEscrow.PAUSER_ROLE(), cfg.pauser);
        _grantRoleIfMissing(target, rewardEscrow.CONFIG_MANAGER_ROLE(), cfg.configManager);
        _grantRoleIfMissing(target, rewardEscrow.GRANT_CREATOR_ROLE(), cfg.initialGrantCreator);

        _revokeBootstrapIfDifferent(target, rewardEscrow.PAUSER_ROLE(), operator, cfg.pauser);
        _revokeBootstrapIfDifferent(
            target, rewardEscrow.CONFIG_MANAGER_ROLE(), operator, cfg.configManager
        );
        _revokeBootstrapIfDifferent(
            target, rewardEscrow.GRANT_CREATOR_ROLE(), operator, cfg.initialGrantCreator
        );
        _revokeBootstrapIfDifferent(
            target, rewardEscrow.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
        );
    }

    function _handoffReferral(
        ReferralController referral,
        Config memory cfg,
        address operator
    ) internal {
        IAccessControlLike target = IAccessControlLike(address(referral));

        _grantRoleIfMissing(target, referral.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
        _grantRoleIfMissing(target, referral.PAUSER_ROLE(), cfg.pauser);
        _grantRoleIfMissing(target, referral.CONFIG_MANAGER_ROLE(), cfg.configManager);

        _revokeBootstrapIfDifferent(target, referral.PAUSER_ROLE(), operator, cfg.pauser);
        _revokeBootstrapIfDifferent(
            target, referral.CONFIG_MANAGER_ROLE(), operator, cfg.configManager
        );
        _revokeBootstrapIfDifferent(
            target, referral.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
        );
    }

    function _setSystemExemptIfNeeded(
        ShieldRegistry shield,
        address account
    ) internal {
        if (!shield.isSystemExempt(account)) {
            shield.setSystemExempt(account, true);
        }
    }

    function _grantRoleIfMissing(
        IAccessControlLike target,
        bytes32 role,
        address account
    ) internal {
        if (!target.hasRole(role, account)) {
            target.grantRole(role, account);
        }
    }

    function _revokeBootstrapIfDifferent(
        IAccessControlLike target,
        bytes32 role,
        address operator,
        address finalHolder
    ) internal {
        if (finalHolder != operator && target.hasRole(role, operator)) {
            target.revokeRole(role, operator);
        }
    }

    function _requireNonZero(
        address value,
        string memory key
    ) internal pure {
        if (value == address(0)) revert ZeroAddressConfig(key);
    }

    function _handoffVaultRegistry(
        VaultRegistry vaultRegistry,
        Config memory cfg,
        address operator
    ) internal {
        IAccessControlLike target = IAccessControlLike(address(vaultRegistry));

        _grantRoleIfMissing(target, vaultRegistry.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
        _grantRoleIfMissing(target, vaultRegistry.PAUSER_ROLE(), cfg.pauser);
        _grantRoleIfMissing(target, vaultRegistry.CREDENTIAL_ISSUER_ROLE(), cfg.credentialIssuer);
        _grantRoleIfMissing(target, vaultRegistry.CREDENTIAL_REVOKER_ROLE(), cfg.credentialRevoker);
        _grantRoleIfMissing(target, vaultRegistry.URI_MANAGER_ROLE(), cfg.uriManager);
        _grantRoleIfMissing(target, vaultRegistry.PROOF_MANAGER_ROLE(), cfg.proofManager);

        _revokeBootstrapIfDifferent(target, vaultRegistry.PAUSER_ROLE(), operator, cfg.pauser);
        _revokeBootstrapIfDifferent(
            target, vaultRegistry.CREDENTIAL_ISSUER_ROLE(), operator, cfg.credentialIssuer
        );
        _revokeBootstrapIfDifferent(
            target, vaultRegistry.CREDENTIAL_REVOKER_ROLE(), operator, cfg.credentialRevoker
        );
        _revokeBootstrapIfDifferent(
            target, vaultRegistry.URI_MANAGER_ROLE(), operator, cfg.uriManager
        );
        _revokeBootstrapIfDifferent(
            target, vaultRegistry.PROOF_MANAGER_ROLE(), operator, cfg.proofManager
        );
        _revokeBootstrapIfDifferent(
            target, vaultRegistry.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
        );
    }

    function _handoffTreasuryRouter(
        TreasuryRouter treasuryRouter,
        Config memory cfg,
        address operator
    ) internal {
        IAccessControlLike target = IAccessControlLike(address(treasuryRouter));

        _grantRoleIfMissing(target, treasuryRouter.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
        _grantRoleIfMissing(target, treasuryRouter.PAUSER_ROLE(), cfg.pauser);
        _grantRoleIfMissing(target, treasuryRouter.ROUTE_MANAGER_ROLE(), cfg.routeManager);
        _grantRoleIfMissing(target, treasuryRouter.TREASURY_OPERATOR_ROLE(), cfg.treasuryOperator);
        _grantRoleIfMissing(target, treasuryRouter.ASSET_MANAGER_ROLE(), cfg.assetManager);
        _grantRoleIfMissing(target, treasuryRouter.EMERGENCY_MANAGER_ROLE(), cfg.emergencyManager);

        _revokeBootstrapIfDifferent(target, treasuryRouter.PAUSER_ROLE(), operator, cfg.pauser);
        _revokeBootstrapIfDifferent(
            target, treasuryRouter.ROUTE_MANAGER_ROLE(), operator, cfg.routeManager
        );
        _revokeBootstrapIfDifferent(
            target, treasuryRouter.TREASURY_OPERATOR_ROLE(), operator, cfg.treasuryOperator
        );
        _revokeBootstrapIfDifferent(
            target, treasuryRouter.ASSET_MANAGER_ROLE(), operator, cfg.assetManager
        );
        _revokeBootstrapIfDifferent(
            target, treasuryRouter.EMERGENCY_MANAGER_ROLE(), operator, cfg.emergencyManager
        );
        _revokeBootstrapIfDifferent(
            target, treasuryRouter.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
        );
    }

    function _handoffYieldPool(
        YieldPool yieldPool,
        Config memory cfg,
        address operator
    ) internal {
        IAccessControlLike target = IAccessControlLike(address(yieldPool));

        _grantRoleIfMissing(target, yieldPool.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
        _grantRoleIfMissing(target, yieldPool.PAUSER_ROLE(), cfg.pauser);
        _grantRoleIfMissing(target, yieldPool.ASSET_MANAGER_ROLE(), cfg.assetManager);
        _grantRoleIfMissing(target, yieldPool.GRANT_MANAGER_ROLE(), cfg.grantManager);
        _grantRoleIfMissing(target, yieldPool.CLAIM_MANAGER_ROLE(), cfg.claimManager);
        _grantRoleIfMissing(target, yieldPool.RESCUE_MANAGER_ROLE(), cfg.rescueManager);

        _revokeBootstrapIfDifferent(target, yieldPool.PAUSER_ROLE(), operator, cfg.pauser);
        _revokeBootstrapIfDifferent(
            target, yieldPool.ASSET_MANAGER_ROLE(), operator, cfg.assetManager
        );
        _revokeBootstrapIfDifferent(
            target, yieldPool.GRANT_MANAGER_ROLE(), operator, cfg.grantManager
        );
        _revokeBootstrapIfDifferent(
            target, yieldPool.CLAIM_MANAGER_ROLE(), operator, cfg.claimManager
        );
        _revokeBootstrapIfDifferent(
            target, yieldPool.RESCUE_MANAGER_ROLE(), operator, cfg.rescueManager
        );
        _revokeBootstrapIfDifferent(
            target, yieldPool.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
        );
    }

    function _writeArtifacts(
        Deployment memory deployed,
        Config memory cfg,
        address operator
    ) internal {
        string memory objectKey = "nstLatticeCore";

        vm.serializeUint(objectKey, "chainId", block.chainid);
        vm.serializeUint(objectKey, "timestamp", block.timestamp);

        vm.serializeAddress(objectKey, "operator", operator);
        vm.serializeAddress(objectKey, "defaultAdmin", cfg.defaultAdmin);
        vm.serializeAddress(objectKey, "pauser", cfg.pauser);
        vm.serializeAddress(objectKey, "vettingManager", cfg.vettingManager);
        vm.serializeAddress(objectKey, "banManager", cfg.banManager);
        vm.serializeAddress(objectKey, "exemptionManager", cfg.exemptionManager);
        vm.serializeAddress(objectKey, "profileManager", cfg.profileManager);
        vm.serializeAddress(objectKey, "configManager", cfg.configManager);
        vm.serializeAddress(objectKey, "mintManager", cfg.mintManager);
        vm.serializeAddress(objectKey, "metadataManager", cfg.metadataManager);
        vm.serializeAddress(objectKey, "treasuryManager", cfg.treasuryManager);
        vm.serializeAddress(objectKey, "swapOperator", cfg.swapOperator);
        vm.serializeAddress(objectKey, "initialGrantCreator", cfg.initialGrantCreator);
        vm.serializeAddress(objectKey, "credentialIssuer", cfg.credentialIssuer);
        vm.serializeAddress(objectKey, "credentialRevoker", cfg.credentialRevoker);
        vm.serializeAddress(objectKey, "uriManager", cfg.uriManager);
        vm.serializeAddress(objectKey, "proofManager", cfg.proofManager);
        vm.serializeAddress(objectKey, "routeManager", cfg.routeManager);
        vm.serializeAddress(objectKey, "treasuryOperator", cfg.treasuryOperator);
        vm.serializeAddress(objectKey, "assetManager", cfg.assetManager);
        vm.serializeAddress(objectKey, "emergencyManager", cfg.emergencyManager);
        vm.serializeAddress(objectKey, "grantManager", cfg.grantManager);
        vm.serializeAddress(objectKey, "claimManager", cfg.claimManager);
        vm.serializeAddress(objectKey, "rescueManager", cfg.rescueManager);

        vm.serializeAddress(objectKey, "router", cfg.router);
        vm.serializeAddress(objectKey, "genesisRecipient", cfg.genesisRecipient);
        vm.serializeAddress(objectKey, "founderTreasury", cfg.founderTreasury);
        vm.serializeAddress(objectKey, "firstNationsTreasury", cfg.firstNationsTreasury);
        vm.serializeAddress(objectKey, "virilityTreasury", cfg.virilityTreasury);
        vm.serializeAddress(objectKey, "configuredYieldPool", cfg.yieldPool);
        vm.serializeAddress(objectKey, "buildingTreasury", cfg.buildingTreasury);

        vm.serializeAddress(objectKey, "shieldRegistry", address(deployed.shield));
        vm.serializeAddress(objectKey, "vaultRegistry", address(deployed.vaultRegistry));
        vm.serializeAddress(objectKey, "treasuryRouter", address(deployed.treasuryRouter));
        vm.serializeAddress(objectKey, "yieldPool", address(deployed.yieldPool));
        vm.serializeAddress(objectKey, "cft", address(deployed.cft));
        vm.serializeAddress(objectKey, "nstsbt", address(deployed.nst));
        vm.serializeAddress(objectKey, "rewardEscrow", address(deployed.rewardEscrow));
        string memory json =
            vm.serializeAddress(objectKey, "referralController", address(deployed.referral));

        string memory suffix = string.concat(vm.toString(block.chainid), ".json");
        string memory deployPath = string.concat("deployments/nstlattice-core-", suffix);
        string memory frontendPath = string.concat("frontend/contracts/nstlattice-core-", suffix);

        vm.writeJson(json, deployPath);
        vm.writeJson(json, frontendPath);
    }
}
