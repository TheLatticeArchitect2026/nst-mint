# NST Core v0.5.2 Role / Treasury / Operator Audit

Status: DRAFT
Phase: v0.5.2 mainnet readiness
Branch: phase/v0.5.2-mainnet-readiness
Commit: f62edbc542c55d45011f334ec62934908574e566
Created UTC: 2026-09-27T08:57:35Z
Source inventory: /mnt/c/Users/nstla/Desktop/NST_Release_Receipts/nst-core-v0.5.2-role-treasury-operator-inventory-20260927T081602Z.txt

## Purpose
Audit role ownership, treasury ownership, operator permissions, value routing, and deployment handoff assumptions before any mainnet candidate is prepared.

## Security scope
- This audit is repository-source and documentation based.
- No .env files are read.
- No private keys, seed phrases, API keys, GitHub tokens, deployer keys, or wallet secrets are included.
- This audit does not authorize mainnet deployment.

## Current release foundation
- v0.5.1 Base Sepolia live deployment completed.
- BaseScan source verification completed.
- GitHub release and evidence bundle published.
- v0.5.2 mainnet-readiness branch opened.
- Stale Section 21 master-spec next-task language reconciled.

## Mainnet-readiness audit questions
- Who owns DEFAULT_ADMIN_ROLE on each production contract?
- Which roles are operational hot-wallet roles versus cold or multisig governance roles?
- Which roles can move funds, route funds, mint supply, burn supply, rescue assets, or change configuration?
- Does any bootstrap deployer or operator retain permissions after handoff?
- Are treasury, founder, yield-pool, and operational addresses intentionally separated?
- Are pause and emergency roles separated from ordinary operational roles?
- Are minting permissions restricted to the minimum required production accounts?
- Are all mainnet role assignments documented before deployment?

## Mainnet gate
No mainnet deployment until the role owner matrix, treasury owner matrix, operator-permission matrix, handoff checklist, and rollback checklist are complete and reviewed.

## Full inventory evidence

~~~text
# NST Core v0.5.2 Role / Treasury / Operator Inventory

UTC: 2026-09-27T08:16:05Z
Branch: phase/v0.5.2-mainnet-readiness
Commit: f62edbc542c55d45011f334ec62934908574e566

Purpose: Inventory role ownership, treasury ownership, operator permissions, value routing, and deployment handoff assumptions before mainnet-readiness hardening.

Security note: This report scans repository source/docs only. It does not read .env files or print private keys.

## Solidity / Script / Test Files
script/DeployLocalMockRouter.s.sol
script/DeployNSTLatticeCore.s.sol
src/CFTv2.sol
src/NSTSBT.sol
src/ReferralController.sol
src/RewardEscrow.sol
src/ShieldRegistry.sol
src/TreasuryRouter.sol
src/VaultRegistry.sol
src/YieldPool.sol
test/integration/ReferralMintFlow.t.sol
test/integration/VaultMembershipFlow.t.sol
test/integration/VettedMintFlow.t.sol
test/unit/CFTv2.t.sol
test/unit/NSTSBT.t.sol
test/unit/ReferralController.t.sol
test/unit/RewardEscrow.t.sol
test/unit/ShieldRegistry.t.sol
test/unit/TreasuryRouter.t.sol
test/unit/VaultRegistry.t.sol
test/unit/YieldPool.t.sol

## Contract / Role Declaration Hits
src/CFTv2.sol:5:import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
src/CFTv2.sol:8:interface IShieldRegistryCFTLike {
src/CFTv2.sol:28:contract CFTv2 is ERC20, AccessControl, Pausable {
src/CFTv2.sol:33:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
src/CFTv2.sol:34:    bytes32 public constant CONFIG_MANAGER_ROLE = keccak256("CONFIG_MANAGER_ROLE");
src/CFTv2.sol:35:    bytes32 public constant DIRECT_MINTER_ROLE = keccak256("DIRECT_MINTER_ROLE");
src/CFTv2.sol:36:    bytes32 public constant TREASURY_MINT_ROLE = keccak256("TREASURY_MINT_ROLE");
src/CFTv2.sol:37:    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");
src/CFTv2.sol:159:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/CFTv2.sol:160:        _grantRole(PAUSER_ROLE, pauser);
src/CFTv2.sol:161:        _grantRole(CONFIG_MANAGER_ROLE, configManager);
src/CFTv2.sol:163:        _setRoleAdmin(DIRECT_MINTER_ROLE, CONFIG_MANAGER_ROLE);
src/CFTv2.sol:164:        _setRoleAdmin(TREASURY_MINT_ROLE, CONFIG_MANAGER_ROLE);
src/CFTv2.sol:165:        _setRoleAdmin(BURNER_ROLE, CONFIG_MANAGER_ROLE);
src/CFTv2.sol:197:    function pause() external onlyRole(PAUSER_ROLE) {
src/CFTv2.sol:201:    function unpause() external onlyRole(PAUSER_ROLE) {
src/CFTv2.sol:208:    ) external onlyRole(CONFIG_MANAGER_ROLE) {
src/CFTv2.sol:212:            _grantRole(DIRECT_MINTER_ROLE, account);
src/CFTv2.sol:214:            _revokeRole(DIRECT_MINTER_ROLE, account);
src/CFTv2.sol:223:    ) external onlyRole(CONFIG_MANAGER_ROLE) {
src/CFTv2.sol:227:            _grantRole(TREASURY_MINT_ROLE, account);
src/CFTv2.sol:229:            _revokeRole(TREASURY_MINT_ROLE, account);
src/CFTv2.sol:238:    ) external onlyRole(CONFIG_MANAGER_ROLE) {
src/CFTv2.sol:242:            _grantRole(BURNER_ROLE, account);
src/CFTv2.sol:244:            _revokeRole(BURNER_ROLE, account);
src/CFTv2.sol:258:    ) external onlyRole(DIRECT_MINTER_ROLE) whenNotPaused {
src/CFTv2.sol:272:        onlyRole(TREASURY_MINT_ROLE)
src/CFTv2.sol:324:    ) external onlyRole(BURNER_ROLE) whenNotPaused {
src/NSTSBT.sol:5:import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
src/NSTSBT.sol:12:interface IUniswapV2RouterLike {
src/NSTSBT.sol:23:interface IYieldPoolLike {
src/NSTSBT.sol:31:interface IERC5192 {
src/NSTSBT.sol:40:interface IBanRegistry {
src/NSTSBT.sol:46:interface IVettingRegistry {
src/NSTSBT.sol:61:contract NSTSBT is ERC721, AccessControl, ReentrancyGuard, Pausable, IERC5192 {
src/NSTSBT.sol:69:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
src/NSTSBT.sol:70:    bytes32 public constant MINT_MANAGER_ROLE = keccak256("MINT_MANAGER_ROLE");
src/NSTSBT.sol:71:    bytes32 public constant METADATA_MANAGER_ROLE = keccak256("METADATA_MANAGER_ROLE");
src/NSTSBT.sol:72:    bytes32 public constant TREASURY_MANAGER_ROLE = keccak256("TREASURY_MANAGER_ROLE");
src/NSTSBT.sol:73:    bytes32 public constant SWAP_OPERATOR_ROLE = keccak256("SWAP_OPERATOR_ROLE");
src/NSTSBT.sol:304:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/NSTSBT.sol:305:        _grantRole(PAUSER_ROLE, pauser);
src/NSTSBT.sol:306:        _grantRole(MINT_MANAGER_ROLE, mintManager);
src/NSTSBT.sol:307:        _grantRole(METADATA_MANAGER_ROLE, metadataManager);
src/NSTSBT.sol:308:        _grantRole(TREASURY_MANAGER_ROLE, treasuryManager);
src/NSTSBT.sol:309:        _grantRole(SWAP_OPERATOR_ROLE, swapOperator);
src/NSTSBT.sol:352:    function pause() external onlyRole(PAUSER_ROLE) {
src/NSTSBT.sol:356:    function unpause() external onlyRole(PAUSER_ROLE) {
src/NSTSBT.sol:362:    ) external onlyRole(MINT_MANAGER_ROLE) {
src/NSTSBT.sol:369:    function closeMintPermanently() external onlyRole(MINT_MANAGER_ROLE) {
src/NSTSBT.sol:378:    ) external onlyRole(METADATA_MANAGER_ROLE) {
src/NSTSBT.sol:386:    function freezeBaseURI() external onlyRole(METADATA_MANAGER_ROLE) {
src/NSTSBT.sol:394:    ) external onlyRole(METADATA_MANAGER_ROLE) {
src/NSTSBT.sol:402:    function freezeContractURI() external onlyRole(METADATA_MANAGER_ROLE) {
src/NSTSBT.sol:412:    ) external onlyRole(TREASURY_MANAGER_ROLE) {
src/NSTSBT.sol:419:    function cancelYieldSwapMinOutProposal() external onlyRole(TREASURY_MANAGER_ROLE) {
src/NSTSBT.sol:426:    function applyYieldSwapMinOut() external onlyRole(TREASURY_MANAGER_ROLE) {
src/NSTSBT.sol:448:    ) external nonReentrant whenNotPaused onlyRole(SWAP_OPERATOR_ROLE) {
src/NSTSBT.sol:470:    ) external nonReentrant onlyRole(TREASURY_MANAGER_ROLE) {
src/NSTSBT.sol:490:    ) external nonReentrant onlyRole(TREASURY_MANAGER_ROLE) {
src/NSTSBT.sol:670:    ) public view override(ERC721, AccessControl) returns (bool) {
src/ReferralController.sol:4:import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
src/ReferralController.sol:8:interface IShieldRegistryLike {
src/ReferralController.sol:23:interface ICFTMintable {
src/ReferralController.sol:30:interface IRewardEscrow {
src/ReferralController.sol:45:contract ReferralController is AccessControl, Pausable, ReentrancyGuard {
src/ReferralController.sol:50:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
src/ReferralController.sol:51:    bytes32 public constant CONFIG_MANAGER_ROLE = keccak256("CONFIG_MANAGER_ROLE");
src/ReferralController.sol:164:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/ReferralController.sol:165:        _grantRole(PAUSER_ROLE, pauser);
src/ReferralController.sol:166:        _grantRole(CONFIG_MANAGER_ROLE, configManager);
src/ReferralController.sol:185:    function pause() external onlyRole(PAUSER_ROLE) {
src/ReferralController.sol:189:    function unpause() external onlyRole(PAUSER_ROLE) {
src/ReferralController.sol:195:    ) external onlyRole(CONFIG_MANAGER_ROLE) {
src/ReferralController.sol:208:    ) external onlyRole(CONFIG_MANAGER_ROLE) {
src/RewardEscrow.sol:4:import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
src/RewardEscrow.sol:10:interface IShieldRegistryEscrowLike {
src/RewardEscrow.sol:19:interface ICFTRewardMintable {
src/RewardEscrow.sol:32:contract RewardEscrow is AccessControl, Pausable, ReentrancyGuard {
src/RewardEscrow.sol:39:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
src/RewardEscrow.sol:40:    bytes32 public constant CONFIG_MANAGER_ROLE = keccak256("CONFIG_MANAGER_ROLE");
src/RewardEscrow.sol:41:    bytes32 public constant GRANT_CREATOR_ROLE = keccak256("GRANT_CREATOR_ROLE");
src/RewardEscrow.sol:133:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/RewardEscrow.sol:134:        _grantRole(PAUSER_ROLE, pauser);
src/RewardEscrow.sol:135:        _grantRole(CONFIG_MANAGER_ROLE, configManager);
src/RewardEscrow.sol:136:        _grantRole(GRANT_CREATOR_ROLE, grantCreator);
src/RewardEscrow.sol:149:    function pause() external onlyRole(PAUSER_ROLE) {
src/RewardEscrow.sol:153:    function unpause() external onlyRole(PAUSER_ROLE) {
src/RewardEscrow.sol:159:    ) external onlyRole(CONFIG_MANAGER_ROLE) {
src/RewardEscrow.sol:175:    ) external onlyRole(CONFIG_MANAGER_ROLE) {
src/RewardEscrow.sol:191:    ) external onlyRole(GRANT_CREATOR_ROLE) whenNotPaused returns (uint256 grantId) {
src/ShieldRegistry.sol:4:import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
src/ShieldRegistry.sol:8:interface IBanRegistry {
src/ShieldRegistry.sol:14:interface IVettingRegistry {
src/ShieldRegistry.sol:27:contract ShieldRegistry is AccessControl, Pausable, IBanRegistry, IVettingRegistry {
src/ShieldRegistry.sol:32:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
src/ShieldRegistry.sol:33:    bytes32 public constant VETTING_MANAGER_ROLE = keccak256("VETTING_MANAGER_ROLE");
src/ShieldRegistry.sol:34:    bytes32 public constant BAN_MANAGER_ROLE = keccak256("BAN_MANAGER_ROLE");
src/ShieldRegistry.sol:35:    bytes32 public constant EXEMPTION_MANAGER_ROLE = keccak256("EXEMPTION_MANAGER_ROLE");
src/ShieldRegistry.sol:36:    bytes32 public constant PROFILE_MANAGER_ROLE = keccak256("PROFILE_MANAGER_ROLE");
src/ShieldRegistry.sol:142:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/ShieldRegistry.sol:143:        _grantRole(PAUSER_ROLE, pauser);
src/ShieldRegistry.sol:144:        _grantRole(VETTING_MANAGER_ROLE, vettingManager);
src/ShieldRegistry.sol:145:        _grantRole(BAN_MANAGER_ROLE, banManager);
src/ShieldRegistry.sol:146:        _grantRole(EXEMPTION_MANAGER_ROLE, exemptionManager);
src/ShieldRegistry.sol:147:        _grantRole(PROFILE_MANAGER_ROLE, profileManager);
src/ShieldRegistry.sol:159:    function pause() external onlyRole(PAUSER_ROLE) {
src/ShieldRegistry.sol:163:    function unpause() external onlyRole(PAUSER_ROLE) {
src/ShieldRegistry.sol:171:    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
src/ShieldRegistry.sol:189:    ) external onlyRole(VETTING_MANAGER_ROLE) whenNotPaused {
src/ShieldRegistry.sol:196:    ) external onlyRole(VETTING_MANAGER_ROLE) whenNotPaused {
src/ShieldRegistry.sol:213:    ) external onlyRole(BAN_MANAGER_ROLE) whenNotPaused {
src/ShieldRegistry.sol:221:    ) external onlyRole(BAN_MANAGER_ROLE) whenNotPaused {
src/ShieldRegistry.sol:236:    ) external onlyRole(EXEMPTION_MANAGER_ROLE) whenNotPaused {
src/ShieldRegistry.sol:243:    ) external onlyRole(EXEMPTION_MANAGER_ROLE) whenNotPaused {
src/ShieldRegistry.sol:264:    ) external onlyRole(PROFILE_MANAGER_ROLE) whenNotPaused {
src/ShieldRegistry.sol:282:    ) external onlyRole(PROFILE_MANAGER_ROLE) whenNotPaused {
src/TreasuryRouter.sol:4:import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
src/TreasuryRouter.sol:13:contract TreasuryRouter is AccessControl, Pausable, ReentrancyGuard {
src/TreasuryRouter.sol:21:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
src/TreasuryRouter.sol:22:    bytes32 public constant ROUTE_MANAGER_ROLE = keccak256("ROUTE_MANAGER_ROLE");
src/TreasuryRouter.sol:23:    bytes32 public constant TREASURY_OPERATOR_ROLE = keccak256("TREASURY_OPERATOR_ROLE");
src/TreasuryRouter.sol:24:    bytes32 public constant ASSET_MANAGER_ROLE = keccak256("ASSET_MANAGER_ROLE");
src/TreasuryRouter.sol:25:    bytes32 public constant EMERGENCY_MANAGER_ROLE = keccak256("EMERGENCY_MANAGER_ROLE");
src/TreasuryRouter.sol:174:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/TreasuryRouter.sol:175:        _grantRole(PAUSER_ROLE, pauser);
src/TreasuryRouter.sol:176:        _grantRole(ROUTE_MANAGER_ROLE, routeManager);
src/TreasuryRouter.sol:177:        _grantRole(TREASURY_OPERATOR_ROLE, treasuryOperator);
src/TreasuryRouter.sol:178:        _grantRole(ASSET_MANAGER_ROLE, assetManager);
src/TreasuryRouter.sol:179:        _grantRole(EMERGENCY_MANAGER_ROLE, emergencyManager);
src/TreasuryRouter.sol:186:    function pause() external onlyRole(PAUSER_ROLE) {
src/TreasuryRouter.sol:190:    function unpause() external onlyRole(PAUSER_ROLE) {
src/TreasuryRouter.sol:202:    ) external onlyRole(ROUTE_MANAGER_ROLE) returns (bytes32) {
src/TreasuryRouter.sol:239:    ) external onlyRole(ROUTE_MANAGER_ROLE) {
src/TreasuryRouter.sol:254:    ) external onlyRole(ASSET_MANAGER_ROLE) {
src/TreasuryRouter.sol:269:    ) external onlyRole(ROUTE_MANAGER_ROLE) {
src/TreasuryRouter.sol:284:    ) external onlyRole(ROUTE_MANAGER_ROLE) {
src/TreasuryRouter.sol:297:    ) external onlyRole(ROUTE_MANAGER_ROLE) {
src/TreasuryRouter.sol:312:    ) external onlyRole(ROUTE_MANAGER_ROLE) {
src/TreasuryRouter.sol:323:    ) external onlyRole(ROUTE_MANAGER_ROLE) {
src/TreasuryRouter.sol:334:    ) external payable whenNotPaused nonReentrant onlyRole(TREASURY_OPERATOR_ROLE) {
src/TreasuryRouter.sol:351:    ) external whenNotPaused nonReentrant onlyRole(TREASURY_OPERATOR_ROLE) {
src/TreasuryRouter.sol:372:        onlyRole(TREASURY_OPERATOR_ROLE)
src/TreasuryRouter.sol:399:        onlyRole(TREASURY_OPERATOR_ROLE)
src/TreasuryRouter.sol:429:    ) external whenPaused nonReentrant onlyRole(EMERGENCY_MANAGER_ROLE) {
src/TreasuryRouter.sol:448:    ) external whenPaused nonReentrant onlyRole(EMERGENCY_MANAGER_ROLE) {
src/TreasuryRouter.sol:504:    ) public view override(AccessControl) returns (bool) {
src/VaultRegistry.sol:4:import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
src/VaultRegistry.sol:7:interface IShieldRegistryVaultLike {
src/VaultRegistry.sol:16:contract VaultRegistry is AccessControl, Pausable {
src/VaultRegistry.sol:21:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
src/VaultRegistry.sol:22:    bytes32 public constant CREDENTIAL_ISSUER_ROLE = keccak256("CREDENTIAL_ISSUER_ROLE");
src/VaultRegistry.sol:23:    bytes32 public constant CREDENTIAL_REVOKER_ROLE = keccak256("CREDENTIAL_REVOKER_ROLE");
src/VaultRegistry.sol:24:    bytes32 public constant URI_MANAGER_ROLE = keccak256("URI_MANAGER_ROLE");
src/VaultRegistry.sol:25:    bytes32 public constant PROOF_MANAGER_ROLE = keccak256("PROOF_MANAGER_ROLE");
src/VaultRegistry.sol:167:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/VaultRegistry.sol:168:        _grantRole(PAUSER_ROLE, pauser);
src/VaultRegistry.sol:169:        _grantRole(CREDENTIAL_ISSUER_ROLE, credentialIssuer);
src/VaultRegistry.sol:170:        _grantRole(CREDENTIAL_REVOKER_ROLE, credentialRevoker);
src/VaultRegistry.sol:171:        _grantRole(URI_MANAGER_ROLE, uriManager);
src/VaultRegistry.sol:172:        _grantRole(PROOF_MANAGER_ROLE, proofManager);
src/VaultRegistry.sol:179:    function pause() external onlyRole(PAUSER_ROLE) {
src/VaultRegistry.sol:183:    function unpause() external onlyRole(PAUSER_ROLE) {
src/VaultRegistry.sol:198:    ) external whenNotPaused onlyRole(CREDENTIAL_ISSUER_ROLE) returns (uint256 credentialId) {
src/VaultRegistry.sol:214:    ) external whenNotPaused onlyRole(CREDENTIAL_REVOKER_ROLE) {
src/VaultRegistry.sol:231:    ) external whenNotPaused onlyRole(CREDENTIAL_ISSUER_ROLE) returns (uint256 newCredentialId) {
src/VaultRegistry.sol:264:    ) external whenNotPaused onlyRole(URI_MANAGER_ROLE) {
src/VaultRegistry.sol:279:    ) external whenNotPaused onlyRole(PROOF_MANAGER_ROLE) {
src/VaultRegistry.sol:524:    ) public view override(AccessControl) returns (bool) {
src/YieldPool.sol:4:import { AccessControl } from "openzeppelin-contracts/contracts/access/AccessControl.sol";
src/YieldPool.sol:13:contract YieldPool is AccessControl, Pausable, ReentrancyGuard {
src/YieldPool.sol:22:    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
src/YieldPool.sol:23:    bytes32 public constant ASSET_MANAGER_ROLE = keccak256("ASSET_MANAGER_ROLE");
src/YieldPool.sol:24:    bytes32 public constant GRANT_MANAGER_ROLE = keccak256("GRANT_MANAGER_ROLE");
src/YieldPool.sol:25:    bytes32 public constant CLAIM_MANAGER_ROLE = keccak256("CLAIM_MANAGER_ROLE");
src/YieldPool.sol:26:    bytes32 public constant RESCUE_MANAGER_ROLE = keccak256("RESCUE_MANAGER_ROLE");
src/YieldPool.sol:153:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/YieldPool.sol:154:        _grantRole(PAUSER_ROLE, pauser);
src/YieldPool.sol:155:        _grantRole(ASSET_MANAGER_ROLE, assetManager);
src/YieldPool.sol:156:        _grantRole(GRANT_MANAGER_ROLE, grantManager);
src/YieldPool.sol:157:        _grantRole(CLAIM_MANAGER_ROLE, claimManager);
src/YieldPool.sol:158:        _grantRole(RESCUE_MANAGER_ROLE, rescueManager);
src/YieldPool.sol:177:    function pause() external onlyRole(PAUSER_ROLE) {
src/YieldPool.sol:181:    function unpause() external onlyRole(PAUSER_ROLE) {
src/YieldPool.sol:188:    ) external onlyRole(ASSET_MANAGER_ROLE) {
src/YieldPool.sol:242:    ) external onlyRole(GRANT_MANAGER_ROLE) whenNotPaused returns (uint256 grantId) {
src/YieldPool.sol:305:    ) external onlyRole(CLAIM_MANAGER_ROLE) whenNotPaused nonReentrant returns (uint256 amount) {
src/YieldPool.sol:316:    ) external onlyRole(GRANT_MANAGER_ROLE) whenNotPaused returns (uint256 amount) {
src/YieldPool.sol:337:    ) external onlyRole(RESCUE_MANAGER_ROLE) whenPaused nonReentrant {
src/YieldPool.sol:355:    ) external onlyRole(RESCUE_MANAGER_ROLE) whenPaused nonReentrant {
script/DeployLocalMockRouter.s.sol:8:contract LocalMockWETH is ERC20 {
script/DeployLocalMockRouter.s.sol:40:contract LocalMockUniswapV2Router {
script/DeployLocalMockRouter.s.sol:61:    modifier onlyOwner() {
script/DeployLocalMockRouter.s.sol:101:    ) external onlyOwner {
script/DeployLocalMockRouter.s.sol:111:contract DeployLocalMockRouter is Script {
script/DeployNSTLatticeCore.s.sol:15:interface IAccessControlLike {
script/DeployNSTLatticeCore.s.sol:30:contract DeployNSTLattice is Script {
script/DeployNSTLatticeCore.s.sol:274:        bytes32 grantCreatorRole = deployed.rewardEscrow.GRANT_CREATOR_ROLE();
script/DeployNSTLatticeCore.s.sol:301:        IAccessControlLike target = IAccessControlLike(address(shield));
script/DeployNSTLatticeCore.s.sol:303:        _grantRoleIfMissing(target, shield.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:304:        _grantRoleIfMissing(target, shield.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:305:        _grantRoleIfMissing(target, shield.VETTING_MANAGER_ROLE(), cfg.vettingManager);
script/DeployNSTLatticeCore.s.sol:306:        _grantRoleIfMissing(target, shield.BAN_MANAGER_ROLE(), cfg.banManager);
script/DeployNSTLatticeCore.s.sol:307:        _grantRoleIfMissing(target, shield.EXEMPTION_MANAGER_ROLE(), cfg.exemptionManager);
script/DeployNSTLatticeCore.s.sol:308:        _grantRoleIfMissing(target, shield.PROFILE_MANAGER_ROLE(), cfg.profileManager);
script/DeployNSTLatticeCore.s.sol:310:        _revokeBootstrapIfDifferent(target, shield.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:312:            target, shield.VETTING_MANAGER_ROLE(), operator, cfg.vettingManager
script/DeployNSTLatticeCore.s.sol:314:        _revokeBootstrapIfDifferent(target, shield.BAN_MANAGER_ROLE(), operator, cfg.banManager);
script/DeployNSTLatticeCore.s.sol:316:            target, shield.EXEMPTION_MANAGER_ROLE(), operator, cfg.exemptionManager
script/DeployNSTLatticeCore.s.sol:319:            target, shield.PROFILE_MANAGER_ROLE(), operator, cfg.profileManager
script/DeployNSTLatticeCore.s.sol:321:        _revokeBootstrapIfDifferent(target, shield.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:329:        IAccessControlLike target = IAccessControlLike(address(nst));
script/DeployNSTLatticeCore.s.sol:331:        _grantRoleIfMissing(target, nst.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:332:        _grantRoleIfMissing(target, nst.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:333:        _grantRoleIfMissing(target, nst.MINT_MANAGER_ROLE(), cfg.mintManager);
script/DeployNSTLatticeCore.s.sol:334:        _grantRoleIfMissing(target, nst.METADATA_MANAGER_ROLE(), cfg.metadataManager);
script/DeployNSTLatticeCore.s.sol:335:        _grantRoleIfMissing(target, nst.TREASURY_MANAGER_ROLE(), cfg.treasuryManager);
script/DeployNSTLatticeCore.s.sol:336:        _grantRoleIfMissing(target, nst.SWAP_OPERATOR_ROLE(), cfg.swapOperator);
script/DeployNSTLatticeCore.s.sol:338:        _revokeBootstrapIfDifferent(target, nst.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:339:        _revokeBootstrapIfDifferent(target, nst.MINT_MANAGER_ROLE(), operator, cfg.mintManager);
script/DeployNSTLatticeCore.s.sol:341:            target, nst.METADATA_MANAGER_ROLE(), operator, cfg.metadataManager
script/DeployNSTLatticeCore.s.sol:344:            target, nst.TREASURY_MANAGER_ROLE(), operator, cfg.treasuryManager
script/DeployNSTLatticeCore.s.sol:346:        _revokeBootstrapIfDifferent(target, nst.SWAP_OPERATOR_ROLE(), operator, cfg.swapOperator);
script/DeployNSTLatticeCore.s.sol:347:        _revokeBootstrapIfDifferent(target, nst.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:355:        IAccessControlLike target = IAccessControlLike(address(cft));
script/DeployNSTLatticeCore.s.sol:357:        _grantRoleIfMissing(target, cft.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:358:        _grantRoleIfMissing(target, cft.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:359:        _grantRoleIfMissing(target, cft.CONFIG_MANAGER_ROLE(), cfg.configManager);
script/DeployNSTLatticeCore.s.sol:361:        _revokeBootstrapIfDifferent(target, cft.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:362:        _revokeBootstrapIfDifferent(target, cft.CONFIG_MANAGER_ROLE(), operator, cfg.configManager);
script/DeployNSTLatticeCore.s.sol:363:        _revokeBootstrapIfDifferent(target, cft.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:371:        IAccessControlLike target = IAccessControlLike(address(rewardEscrow));
script/DeployNSTLatticeCore.s.sol:373:        _grantRoleIfMissing(target, rewardEscrow.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:374:        _grantRoleIfMissing(target, rewardEscrow.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:375:        _grantRoleIfMissing(target, rewardEscrow.CONFIG_MANAGER_ROLE(), cfg.configManager);
script/DeployNSTLatticeCore.s.sol:376:        _grantRoleIfMissing(target, rewardEscrow.GRANT_CREATOR_ROLE(), cfg.initialGrantCreator);
script/DeployNSTLatticeCore.s.sol:378:        _revokeBootstrapIfDifferent(target, rewardEscrow.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:380:            target, rewardEscrow.CONFIG_MANAGER_ROLE(), operator, cfg.configManager
script/DeployNSTLatticeCore.s.sol:383:            target, rewardEscrow.GRANT_CREATOR_ROLE(), operator, cfg.initialGrantCreator
script/DeployNSTLatticeCore.s.sol:386:            target, rewardEscrow.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:395:        IAccessControlLike target = IAccessControlLike(address(referral));
script/DeployNSTLatticeCore.s.sol:397:        _grantRoleIfMissing(target, referral.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:398:        _grantRoleIfMissing(target, referral.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:399:        _grantRoleIfMissing(target, referral.CONFIG_MANAGER_ROLE(), cfg.configManager);
script/DeployNSTLatticeCore.s.sol:401:        _revokeBootstrapIfDifferent(target, referral.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:403:            target, referral.CONFIG_MANAGER_ROLE(), operator, cfg.configManager
script/DeployNSTLatticeCore.s.sol:406:            target, referral.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:420:        IAccessControlLike target,
script/DeployNSTLatticeCore.s.sol:430:        IAccessControlLike target,
script/DeployNSTLatticeCore.s.sol:452:        IAccessControlLike target = IAccessControlLike(address(vaultRegistry));
script/DeployNSTLatticeCore.s.sol:454:        _grantRoleIfMissing(target, vaultRegistry.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:455:        _grantRoleIfMissing(target, vaultRegistry.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:456:        _grantRoleIfMissing(target, vaultRegistry.CREDENTIAL_ISSUER_ROLE(), cfg.credentialIssuer);
script/DeployNSTLatticeCore.s.sol:457:        _grantRoleIfMissing(target, vaultRegistry.CREDENTIAL_REVOKER_ROLE(), cfg.credentialRevoker);
script/DeployNSTLatticeCore.s.sol:458:        _grantRoleIfMissing(target, vaultRegistry.URI_MANAGER_ROLE(), cfg.uriManager);
script/DeployNSTLatticeCore.s.sol:459:        _grantRoleIfMissing(target, vaultRegistry.PROOF_MANAGER_ROLE(), cfg.proofManager);
script/DeployNSTLatticeCore.s.sol:461:        _revokeBootstrapIfDifferent(target, vaultRegistry.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:463:            target, vaultRegistry.CREDENTIAL_ISSUER_ROLE(), operator, cfg.credentialIssuer
script/DeployNSTLatticeCore.s.sol:466:            target, vaultRegistry.CREDENTIAL_REVOKER_ROLE(), operator, cfg.credentialRevoker
script/DeployNSTLatticeCore.s.sol:469:            target, vaultRegistry.URI_MANAGER_ROLE(), operator, cfg.uriManager
script/DeployNSTLatticeCore.s.sol:472:            target, vaultRegistry.PROOF_MANAGER_ROLE(), operator, cfg.proofManager
script/DeployNSTLatticeCore.s.sol:475:            target, vaultRegistry.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:484:        IAccessControlLike target = IAccessControlLike(address(treasuryRouter));
script/DeployNSTLatticeCore.s.sol:486:        _grantRoleIfMissing(target, treasuryRouter.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:487:        _grantRoleIfMissing(target, treasuryRouter.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:488:        _grantRoleIfMissing(target, treasuryRouter.ROUTE_MANAGER_ROLE(), cfg.routeManager);
script/DeployNSTLatticeCore.s.sol:489:        _grantRoleIfMissing(target, treasuryRouter.TREASURY_OPERATOR_ROLE(), cfg.treasuryOperator);
script/DeployNSTLatticeCore.s.sol:490:        _grantRoleIfMissing(target, treasuryRouter.ASSET_MANAGER_ROLE(), cfg.assetManager);
script/DeployNSTLatticeCore.s.sol:491:        _grantRoleIfMissing(target, treasuryRouter.EMERGENCY_MANAGER_ROLE(), cfg.emergencyManager);
script/DeployNSTLatticeCore.s.sol:493:        _revokeBootstrapIfDifferent(target, treasuryRouter.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:495:            target, treasuryRouter.ROUTE_MANAGER_ROLE(), operator, cfg.routeManager
script/DeployNSTLatticeCore.s.sol:498:            target, treasuryRouter.TREASURY_OPERATOR_ROLE(), operator, cfg.treasuryOperator
script/DeployNSTLatticeCore.s.sol:501:            target, treasuryRouter.ASSET_MANAGER_ROLE(), operator, cfg.assetManager
script/DeployNSTLatticeCore.s.sol:504:            target, treasuryRouter.EMERGENCY_MANAGER_ROLE(), operator, cfg.emergencyManager
script/DeployNSTLatticeCore.s.sol:507:            target, treasuryRouter.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:516:        IAccessControlLike target = IAccessControlLike(address(yieldPool));
script/DeployNSTLatticeCore.s.sol:518:        _grantRoleIfMissing(target, yieldPool.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:519:        _grantRoleIfMissing(target, yieldPool.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:520:        _grantRoleIfMissing(target, yieldPool.ASSET_MANAGER_ROLE(), cfg.assetManager);
script/DeployNSTLatticeCore.s.sol:521:        _grantRoleIfMissing(target, yieldPool.GRANT_MANAGER_ROLE(), cfg.grantManager);
script/DeployNSTLatticeCore.s.sol:522:        _grantRoleIfMissing(target, yieldPool.CLAIM_MANAGER_ROLE(), cfg.claimManager);
script/DeployNSTLatticeCore.s.sol:523:        _grantRoleIfMissing(target, yieldPool.RESCUE_MANAGER_ROLE(), cfg.rescueManager);
script/DeployNSTLatticeCore.s.sol:525:        _revokeBootstrapIfDifferent(target, yieldPool.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:527:            target, yieldPool.ASSET_MANAGER_ROLE(), operator, cfg.assetManager
script/DeployNSTLatticeCore.s.sol:530:            target, yieldPool.GRANT_MANAGER_ROLE(), operator, cfg.grantManager
script/DeployNSTLatticeCore.s.sol:533:            target, yieldPool.CLAIM_MANAGER_ROLE(), operator, cfg.claimManager
script/DeployNSTLatticeCore.s.sol:536:            target, yieldPool.RESCUE_MANAGER_ROLE(), operator, cfg.rescueManager
script/DeployNSTLatticeCore.s.sol:539:            target, yieldPool.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
test/integration/ReferralMintFlow.t.sol:13:contract MockERC20ReferralFlow is ERC20 {
test/integration/ReferralMintFlow.t.sol:27:contract MockRouterReferralFlow {
test/integration/ReferralMintFlow.t.sol:50:contract ReferralMintFlowTest is Test {
test/integration/ReferralMintFlow.t.sol:178:        bytes32 grantCreatorRole = rewardEscrow.GRANT_CREATOR_ROLE();
test/integration/VaultMembershipFlow.t.sol:10:contract MockERC20VaultMembershipFlow {
test/integration/VaultMembershipFlow.t.sol:32:contract MockRouterVaultMembershipFlow {
test/integration/VaultMembershipFlow.t.sol:51:contract VaultMembershipFlowTest is Test {
test/integration/VettedMintFlow.t.sol:10:contract MockERC20Integration is ERC20 {
test/integration/VettedMintFlow.t.sol:24:contract MockRouterIntegration {
test/integration/VettedMintFlow.t.sol:47:contract VettedMintFlowTest is Test {
test/unit/CFTv2.t.sol:8:contract MockShieldRegistryCFT {
test/unit/CFTv2.t.sol:53:contract CFTv2Test is Test {
test/unit/CFTv2.t.sol:165:        assertTrue(cft.hasRole(cft.DEFAULT_ADMIN_ROLE(), admin));
test/unit/CFTv2.t.sol:166:        assertTrue(cft.hasRole(cft.PAUSER_ROLE(), pauser));
test/unit/CFTv2.t.sol:167:        assertTrue(cft.hasRole(cft.CONFIG_MANAGER_ROLE(), configManager));
test/unit/CFTv2.t.sol:169:        assertEq(cft.getRoleAdmin(cft.DIRECT_MINTER_ROLE()), cft.CONFIG_MANAGER_ROLE());
test/unit/CFTv2.t.sol:170:        assertEq(cft.getRoleAdmin(cft.TREASURY_MINT_ROLE()), cft.CONFIG_MANAGER_ROLE());
test/unit/CFTv2.t.sol:171:        assertEq(cft.getRoleAdmin(cft.BURNER_ROLE()), cft.CONFIG_MANAGER_ROLE());
test/unit/CFTv2.t.sol:283:        assertTrue(cft.hasRole(cft.DIRECT_MINTER_ROLE(), directMinter));
test/unit/CFTv2.t.sol:287:        assertTrue(cft.hasRole(cft.TREASURY_MINT_ROLE(), treasuryMinter));
test/unit/CFTv2.t.sol:291:        assertTrue(cft.hasRole(cft.BURNER_ROLE(), burner));
test/unit/NSTSBT.t.sol:9:contract MockERC20 is ERC20 {
test/unit/NSTSBT.t.sol:23:contract MockShieldRegistry {
test/unit/NSTSBT.t.sol:54:interface IERC20ForMockRouter {
test/unit/NSTSBT.t.sol:61:contract MockRouter {
test/unit/NSTSBT.t.sol:127:contract RevertingETHReceiver {
test/unit/NSTSBT.t.sol:133:interface IERC20ForMockYieldPool {
test/unit/NSTSBT.t.sol:144:contract MockYieldPoolForNSTSBT {
test/unit/NSTSBT.t.sol:175:contract NSTSBTTest is Test {
test/unit/NSTSBT.t.sol:274:        assertTrue(nst.hasRole(nst.DEFAULT_ADMIN_ROLE(), admin));
test/unit/NSTSBT.t.sol:275:        assertTrue(nst.hasRole(nst.PAUSER_ROLE(), pauser));
test/unit/NSTSBT.t.sol:276:        assertTrue(nst.hasRole(nst.MINT_MANAGER_ROLE(), mintManager));
test/unit/NSTSBT.t.sol:277:        assertTrue(nst.hasRole(nst.METADATA_MANAGER_ROLE(), metadataManager));
test/unit/NSTSBT.t.sol:278:        assertTrue(nst.hasRole(nst.TREASURY_MANAGER_ROLE(), treasuryManager));
test/unit/NSTSBT.t.sol:279:        assertTrue(nst.hasRole(nst.SWAP_OPERATOR_ROLE(), swapOperator));
test/unit/ReferralController.t.sol:8:contract MockShieldRegistryForReferral {
test/unit/ReferralController.t.sol:67:contract MockCFTMintable {
test/unit/ReferralController.t.sol:80:contract MockRewardEscrow {
test/unit/ReferralController.t.sol:100:contract ReferralControllerTest is Test {
test/unit/ReferralController.t.sol:176:        assertTrue(referral.hasRole(referral.DEFAULT_ADMIN_ROLE(), admin));
test/unit/ReferralController.t.sol:177:        assertTrue(referral.hasRole(referral.PAUSER_ROLE(), pauser));
test/unit/ReferralController.t.sol:178:        assertTrue(referral.hasRole(referral.CONFIG_MANAGER_ROLE(), configManager));
test/unit/RewardEscrow.t.sol:9:contract MockShieldRegistryEscrow {
test/unit/RewardEscrow.t.sol:40:contract MockMintableERC20 is ERC20 {
test/unit/RewardEscrow.t.sol:54:contract RewardEscrowTest is Test {
test/unit/RewardEscrow.t.sol:107:        assertTrue(escrow.hasRole(escrow.DEFAULT_ADMIN_ROLE(), admin));
test/unit/RewardEscrow.t.sol:108:        assertTrue(escrow.hasRole(escrow.PAUSER_ROLE(), pauser));
test/unit/RewardEscrow.t.sol:109:        assertTrue(escrow.hasRole(escrow.CONFIG_MANAGER_ROLE(), configManager));
test/unit/RewardEscrow.t.sol:110:        assertTrue(escrow.hasRole(escrow.GRANT_CREATOR_ROLE(), grantCreator));
test/unit/ShieldRegistry.t.sol:9:contract MockMembershipToken is ERC721 {
test/unit/ShieldRegistry.t.sol:23:contract ShieldRegistryTest is Test {
test/unit/ShieldRegistry.t.sol:66:        assertTrue(shield.hasRole(shield.DEFAULT_ADMIN_ROLE(), admin));
test/unit/ShieldRegistry.t.sol:67:        assertTrue(shield.hasRole(shield.PAUSER_ROLE(), pauser));
test/unit/ShieldRegistry.t.sol:68:        assertTrue(shield.hasRole(shield.VETTING_MANAGER_ROLE(), vettingManager));
test/unit/ShieldRegistry.t.sol:69:        assertTrue(shield.hasRole(shield.BAN_MANAGER_ROLE(), banManager));
test/unit/ShieldRegistry.t.sol:70:        assertTrue(shield.hasRole(shield.EXEMPTION_MANAGER_ROLE(), exemptionManager));
test/unit/ShieldRegistry.t.sol:71:        assertTrue(shield.hasRole(shield.PROFILE_MANAGER_ROLE(), profileManager));
test/unit/TreasuryRouter.t.sol:7:contract MockTreasuryERC20 {
test/unit/TreasuryRouter.t.sol:93:contract TreasuryRouterTest is Test {
test/unit/TreasuryRouter.t.sol:138:        assertTrue(router.hasRole(router.DEFAULT_ADMIN_ROLE(), admin));
test/unit/TreasuryRouter.t.sol:139:        assertTrue(router.hasRole(router.PAUSER_ROLE(), pauser));
test/unit/TreasuryRouter.t.sol:140:        assertTrue(router.hasRole(router.ROUTE_MANAGER_ROLE(), routeManager));
test/unit/TreasuryRouter.t.sol:141:        assertTrue(router.hasRole(router.TREASURY_OPERATOR_ROLE(), treasuryOperator));
test/unit/TreasuryRouter.t.sol:142:        assertTrue(router.hasRole(router.ASSET_MANAGER_ROLE(), assetManager));
test/unit/TreasuryRouter.t.sol:143:        assertTrue(router.hasRole(router.EMERGENCY_MANAGER_ROLE(), emergencyManager));
test/unit/VaultRegistry.t.sol:8:contract MockShieldRegistryVault {
test/unit/VaultRegistry.t.sol:25:contract VaultRegistryTest is Test {
test/unit/VaultRegistry.t.sol:63:        assertTrue(vault.hasRole(vault.DEFAULT_ADMIN_ROLE(), admin));
test/unit/VaultRegistry.t.sol:64:        assertTrue(vault.hasRole(vault.PAUSER_ROLE(), pauser));
test/unit/VaultRegistry.t.sol:65:        assertTrue(vault.hasRole(vault.CREDENTIAL_ISSUER_ROLE(), issuer));
test/unit/VaultRegistry.t.sol:66:        assertTrue(vault.hasRole(vault.CREDENTIAL_REVOKER_ROLE(), revoker));
test/unit/VaultRegistry.t.sol:67:        assertTrue(vault.hasRole(vault.URI_MANAGER_ROLE(), uriManager));
test/unit/VaultRegistry.t.sol:68:        assertTrue(vault.hasRole(vault.PROOF_MANAGER_ROLE(), proofManager));
test/unit/YieldPool.t.sol:8:contract MockYieldPoolERC20 is ERC20 {
test/unit/YieldPool.t.sol:19:contract RejectETHReceiver {
test/unit/YieldPool.t.sol:25:contract YieldPoolTest is Test {
test/unit/YieldPool.t.sol:74:        assertTrue(pool.hasRole(pool.DEFAULT_ADMIN_ROLE(), admin));
test/unit/YieldPool.t.sol:75:        assertTrue(pool.hasRole(pool.PAUSER_ROLE(), pauser));
test/unit/YieldPool.t.sol:76:        assertTrue(pool.hasRole(pool.ASSET_MANAGER_ROLE(), assetManager));
test/unit/YieldPool.t.sol:77:        assertTrue(pool.hasRole(pool.GRANT_MANAGER_ROLE(), grantManager));
test/unit/YieldPool.t.sol:78:        assertTrue(pool.hasRole(pool.CLAIM_MANAGER_ROLE(), claimManager));
test/unit/YieldPool.t.sol:79:        assertTrue(pool.hasRole(pool.RESCUE_MANAGER_ROLE(), rescueManager));

## Constructor Hits
src/CFTv2.sol:116:    constructor(
src/NSTSBT.sol:248:    constructor(
src/ReferralController.sol:146:    constructor(
src/RewardEscrow.sol:115:    constructor(
src/ShieldRegistry.sol:120:    constructor(
src/TreasuryRouter.sol:158:    constructor(
src/VaultRegistry.sol:146:    constructor(
src/YieldPool.sol:136:    constructor(
script/DeployLocalMockRouter.s.sol:15:    constructor() ERC20("Local Mock Wrapped Ether", "WETH") { }
script/DeployLocalMockRouter.s.sol:66:    constructor(
test/integration/ReferralMintFlow.t.sol:14:    constructor(
test/integration/ReferralMintFlow.t.sol:30:    constructor(
test/integration/VaultMembershipFlow.t.sol:16:    constructor(
test/integration/VaultMembershipFlow.t.sol:35:    constructor(
test/integration/VettedMintFlow.t.sol:11:    constructor(
test/integration/VettedMintFlow.t.sol:27:    constructor(
test/unit/NSTSBT.t.sol:10:    constructor(
test/unit/NSTSBT.t.sol:75:    constructor(
test/unit/RewardEscrow.t.sol:41:    constructor(
test/unit/ShieldRegistry.t.sol:12:    constructor() ERC721("NST Membership", "NSTM") { }
test/unit/TreasuryRouter.t.sol:20:    constructor(
test/unit/YieldPool.t.sol:9:    constructor() ERC20("Mock Yield Asset", "MYA") { }

## Admin / Ownership / Permission Function Hits
src/CFTv2.sol:117:        address defaultAdmin,
src/CFTv2.sol:118:        address pauser,
src/CFTv2.sol:130:            defaultAdmin == address(0) || shieldRegistry == address(0)
src/CFTv2.sol:138:        if (pauser == address(0) || configManager == address(0)) {
src/CFTv2.sol:159:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/CFTv2.sol:160:        _grantRole(PAUSER_ROLE, pauser);
src/CFTv2.sol:161:        _grantRole(CONFIG_MANAGER_ROLE, configManager);
src/CFTv2.sol:163:        _setRoleAdmin(DIRECT_MINTER_ROLE, CONFIG_MANAGER_ROLE);
src/CFTv2.sol:164:        _setRoleAdmin(TREASURY_MINT_ROLE, CONFIG_MANAGER_ROLE);
src/CFTv2.sol:165:        _setRoleAdmin(BURNER_ROLE, CONFIG_MANAGER_ROLE);
src/CFTv2.sol:197:    function pause() external onlyRole(PAUSER_ROLE) {
src/CFTv2.sol:198:        _pause();
src/CFTv2.sol:201:    function unpause() external onlyRole(PAUSER_ROLE) {
src/CFTv2.sol:202:        _unpause();
src/CFTv2.sol:205:    function setDirectMinter(
src/CFTv2.sol:212:            _grantRole(DIRECT_MINTER_ROLE, account);
src/CFTv2.sol:214:            _revokeRole(DIRECT_MINTER_ROLE, account);
src/CFTv2.sol:220:    function setTreasuryMinter(
src/CFTv2.sol:227:            _grantRole(TREASURY_MINT_ROLE, account);
src/CFTv2.sol:229:            _revokeRole(TREASURY_MINT_ROLE, account);
src/CFTv2.sol:235:    function setBurner(
src/CFTv2.sol:242:            _grantRole(BURNER_ROLE, account);
src/CFTv2.sol:244:            _revokeRole(BURNER_ROLE, account);
src/NSTSBT.sol:234:    /// @param defaultAdmin Main admin, ideally a multisig.
src/NSTSBT.sol:241:    /// @param pauser Role holder for pause authority.
src/NSTSBT.sol:249:        address defaultAdmin,
src/NSTSBT.sol:256:        address pauser,
src/NSTSBT.sol:265:            defaultAdmin == address(0) || genesisRecipient == address(0)
src/NSTSBT.sol:273:            pauser == address(0) || mintManager == address(0) || metadataManager == address(0)
src/NSTSBT.sol:304:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/NSTSBT.sol:305:        _grantRole(PAUSER_ROLE, pauser);
src/NSTSBT.sol:306:        _grantRole(MINT_MANAGER_ROLE, mintManager);
src/NSTSBT.sol:307:        _grantRole(METADATA_MANAGER_ROLE, metadataManager);
src/NSTSBT.sol:308:        _grantRole(TREASURY_MANAGER_ROLE, treasuryManager);
src/NSTSBT.sol:309:        _grantRole(SWAP_OPERATOR_ROLE, swapOperator);
src/NSTSBT.sol:352:    function pause() external onlyRole(PAUSER_ROLE) {
src/NSTSBT.sol:353:        _pause();
src/NSTSBT.sol:356:    function unpause() external onlyRole(PAUSER_ROLE) {
src/NSTSBT.sol:357:        _unpause();
src/NSTSBT.sol:360:    function setMintOpen(
src/NSTSBT.sol:376:    function setBaseURI(
src/NSTSBT.sol:392:    function setContractURI(
src/NSTSBT.sol:593:    function setApprovalForAll(
src/ReferralController.sol:147:        address defaultAdmin,
src/ReferralController.sol:148:        address pauser,
src/ReferralController.sol:154:        if (defaultAdmin == address(0) || shieldRegistry == address(0)) revert ZeroAddress();
src/ReferralController.sol:156:        if (pauser == address(0) || configManager == address(0)) {
src/ReferralController.sol:164:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/ReferralController.sol:165:        _grantRole(PAUSER_ROLE, pauser);
src/ReferralController.sol:166:        _grantRole(CONFIG_MANAGER_ROLE, configManager);
src/ReferralController.sol:171:            emit RewardTokenSet(address(0), rewardToken_, defaultAdmin);
src/ReferralController.sol:177:            emit RewardEscrowSet(address(0), rewardEscrow_, defaultAdmin);
src/ReferralController.sol:185:    function pause() external onlyRole(PAUSER_ROLE) {
src/ReferralController.sol:186:        _pause();
src/ReferralController.sol:189:    function unpause() external onlyRole(PAUSER_ROLE) {
src/ReferralController.sol:190:        _unpause();
src/ReferralController.sol:193:    function setRewardToken(
src/ReferralController.sol:206:    function setRewardEscrow(
src/RewardEscrow.sol:116:        address defaultAdmin,
src/RewardEscrow.sol:117:        address pauser,
src/RewardEscrow.sol:123:        if (defaultAdmin == address(0) || shieldRegistry == address(0)) revert ZeroAddress();
src/RewardEscrow.sol:125:        if (pauser == address(0) || configManager == address(0) || grantCreator == address(0)) {
src/RewardEscrow.sol:133:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/RewardEscrow.sol:134:        _grantRole(PAUSER_ROLE, pauser);
src/RewardEscrow.sol:135:        _grantRole(CONFIG_MANAGER_ROLE, configManager);
src/RewardEscrow.sol:136:        _grantRole(GRANT_CREATOR_ROLE, grantCreator);
src/RewardEscrow.sol:141:            emit RewardTokenSet(address(0), rewardToken_, defaultAdmin);
src/RewardEscrow.sol:149:    function pause() external onlyRole(PAUSER_ROLE) {
src/RewardEscrow.sol:150:        _pause();
src/RewardEscrow.sol:153:    function unpause() external onlyRole(PAUSER_ROLE) {
src/RewardEscrow.sol:154:        _unpause();
src/RewardEscrow.sol:157:    function setRewardToken(
src/ShieldRegistry.sol:121:        address defaultAdmin,
src/ShieldRegistry.sol:122:        address pauser,
src/ShieldRegistry.sol:129:        if (defaultAdmin == address(0)) revert ZeroAddress();
src/ShieldRegistry.sol:132:            pauser == address(0) || vettingManager == address(0) || banManager == address(0)
src/ShieldRegistry.sol:142:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/ShieldRegistry.sol:143:        _grantRole(PAUSER_ROLE, pauser);
src/ShieldRegistry.sol:144:        _grantRole(VETTING_MANAGER_ROLE, vettingManager);
src/ShieldRegistry.sol:145:        _grantRole(BAN_MANAGER_ROLE, banManager);
src/ShieldRegistry.sol:146:        _grantRole(EXEMPTION_MANAGER_ROLE, exemptionManager);
src/ShieldRegistry.sol:147:        _grantRole(PROFILE_MANAGER_ROLE, profileManager);
src/ShieldRegistry.sol:151:            emit MembershipTokenSet(address(0), membershipToken_, defaultAdmin);
src/ShieldRegistry.sol:159:    function pause() external onlyRole(PAUSER_ROLE) {
src/ShieldRegistry.sol:160:        _pause();
src/ShieldRegistry.sol:163:    function unpause() external onlyRole(PAUSER_ROLE) {
src/ShieldRegistry.sol:164:        _unpause();
src/ShieldRegistry.sol:169:    function setMembershipToken(
src/ShieldRegistry.sol:186:    function setVetted(
src/ShieldRegistry.sol:190:        _setVetted(account, vetted);
src/ShieldRegistry.sol:201:            _setVetted(accounts[i], vetted);
src/ShieldRegistry.sol:233:    function setSystemExempt(
src/ShieldRegistry.sol:237:        _setSystemExempt(account, exempt);
src/ShieldRegistry.sol:248:            _setSystemExempt(accounts[i], exempt);
src/ShieldRegistry.sol:259:    function setEntityProfile(
src/ShieldRegistry.sol:277:    function setOperationalPermissions(
src/ShieldRegistry.sol:445:    function _setVetted(
src/ShieldRegistry.sol:469:    function _setSystemExempt(
src/TreasuryRouter.sol:89:    event RouteAssetUpdated(
src/TreasuryRouter.sol:136:    event AssetRescued(
src/TreasuryRouter.sol:147:    error InvalidAsset(address asset);
src/TreasuryRouter.sol:152:    error InvalidRouteAsset(bytes32 routeId, address expectedAsset, address actualAsset);
src/TreasuryRouter.sol:159:        address defaultAdmin,
src/TreasuryRouter.sol:160:        address pauser,
src/TreasuryRouter.sol:167:            defaultAdmin == address(0) || pauser == address(0) || routeManager == address(0)
src/TreasuryRouter.sol:174:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/TreasuryRouter.sol:175:        _grantRole(PAUSER_ROLE, pauser);
src/TreasuryRouter.sol:176:        _grantRole(ROUTE_MANAGER_ROLE, routeManager);
src/TreasuryRouter.sol:177:        _grantRole(TREASURY_OPERATOR_ROLE, treasuryOperator);
src/TreasuryRouter.sol:178:        _grantRole(ASSET_MANAGER_ROLE, assetManager);
src/TreasuryRouter.sol:179:        _grantRole(EMERGENCY_MANAGER_ROLE, emergencyManager);
src/TreasuryRouter.sol:186:    function pause() external onlyRole(PAUSER_ROLE) {
src/TreasuryRouter.sol:187:        _pause();
src/TreasuryRouter.sol:190:    function unpause() external onlyRole(PAUSER_ROLE) {
src/TreasuryRouter.sol:191:        _unpause();
src/TreasuryRouter.sol:210:        _requireValidAsset(asset);
src/TreasuryRouter.sol:251:    function updateRouteAsset(
src/TreasuryRouter.sol:257:        _requireValidAsset(newAsset);
src/TreasuryRouter.sol:263:        emit RouteAssetUpdated(routeId, oldAsset, newAsset, msg.sender);
src/TreasuryRouter.sol:309:    function setRouteEnabled(
src/TreasuryRouter.sol:403:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/TreasuryRouter.sol:405:        _requireValidAsset(asset);
src/TreasuryRouter.sol:441:        emit AssetRescued(NATIVE_ETH, to, amount, msg.sender);
src/TreasuryRouter.sol:449:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/TreasuryRouter.sol:451:        _requireValidAsset(asset);
src/TreasuryRouter.sol:463:        emit AssetRescued(asset, to, amount, msg.sender);
src/TreasuryRouter.sol:523:        _requireValidAsset(asset);
src/TreasuryRouter.sol:534:                revert InvalidRouteAsset(routeIds[i], asset, route.asset);
src/TreasuryRouter.sol:626:    function _requireValidAsset(
src/TreasuryRouter.sol:630:            revert InvalidAsset(asset);
src/VaultRegistry.sol:147:        address defaultAdmin,
src/VaultRegistry.sol:148:        address pauser,
src/VaultRegistry.sol:156:            defaultAdmin == address(0) || pauser == address(0) || credentialIssuer == address(0)
src/VaultRegistry.sol:167:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/VaultRegistry.sol:168:        _grantRole(PAUSER_ROLE, pauser);
src/VaultRegistry.sol:169:        _grantRole(CREDENTIAL_ISSUER_ROLE, credentialIssuer);
src/VaultRegistry.sol:170:        _grantRole(CREDENTIAL_REVOKER_ROLE, credentialRevoker);
src/VaultRegistry.sol:171:        _grantRole(URI_MANAGER_ROLE, uriManager);
src/VaultRegistry.sol:172:        _grantRole(PROOF_MANAGER_ROLE, proofManager);
src/VaultRegistry.sol:179:    function pause() external onlyRole(PAUSER_ROLE) {
src/VaultRegistry.sol:180:        _pause();
src/VaultRegistry.sol:183:    function unpause() external onlyRole(PAUSER_ROLE) {
src/VaultRegistry.sol:184:        _unpause();
src/VaultRegistry.sol:261:    function setCredentialURI(
src/VaultRegistry.sol:276:    function setProofStatus(
src/YieldPool.sol:73:    event AssetAllowedSet(address indexed asset, bool allowed, address indexed actor);
src/YieldPool.sol:118:    error InvalidAsset(address asset);
src/YieldPool.sol:119:    error AssetNotAllowed(address asset);
src/YieldPool.sol:137:        address defaultAdmin,
src/YieldPool.sol:138:        address pauser,
src/YieldPool.sol:144:        if (defaultAdmin == address(0)) revert ZeroAddress();
src/YieldPool.sol:147:            pauser == address(0) || assetManager == address(0) || grantManager == address(0)
src/YieldPool.sol:153:        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
src/YieldPool.sol:154:        _grantRole(PAUSER_ROLE, pauser);
src/YieldPool.sol:155:        _grantRole(ASSET_MANAGER_ROLE, assetManager);
src/YieldPool.sol:156:        _grantRole(GRANT_MANAGER_ROLE, grantManager);
src/YieldPool.sol:157:        _grantRole(CLAIM_MANAGER_ROLE, claimManager);
src/YieldPool.sol:158:        _grantRole(RESCUE_MANAGER_ROLE, rescueManager);
src/YieldPool.sol:177:    function pause() external onlyRole(PAUSER_ROLE) {
src/YieldPool.sol:178:        _pause();
src/YieldPool.sol:181:    function unpause() external onlyRole(PAUSER_ROLE) {
src/YieldPool.sol:182:        _unpause();
src/YieldPool.sol:185:    function setAssetAllowed(
src/YieldPool.sol:189:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/YieldPool.sol:190:        if (allowed && asset.code.length == 0) revert InvalidAsset(asset);
src/YieldPool.sol:194:        emit AssetAllowedSet(asset, allowed, msg.sender);
src/YieldPool.sol:245:        if (!isAssetAllowed(asset)) revert AssetNotAllowed(asset);
src/YieldPool.sol:356:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/YieldPool.sol:357:        if (asset.code.length == 0) revert InvalidAsset(asset);
src/YieldPool.sol:375:    function isAssetAllowed(
src/YieldPool.sol:408:        if (asset.code.length == 0) revert InvalidAsset(asset);
src/YieldPool.sol:522:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/YieldPool.sol:523:        if (asset.code.length == 0) revert InvalidAsset(asset);
src/YieldPool.sol:524:        if (!_allowedAssets[asset]) revert AssetNotAllowed(asset);
script/DeployNSTLatticeCore.s.sol:16:    function hasRole(
script/DeployNSTLatticeCore.s.sol:20:    function grantRole(
script/DeployNSTLatticeCore.s.sol:24:    function revokeRole(
script/DeployNSTLatticeCore.s.sol:42:        address defaultAdmin;
script/DeployNSTLatticeCore.s.sol:43:        address pauser;
script/DeployNSTLatticeCore.s.sol:114:        cfg.defaultAdmin = vm.envAddress("DEFAULT_ADMIN");
script/DeployNSTLatticeCore.s.sol:115:        cfg.pauser = vm.envAddress("PAUSER");
script/DeployNSTLatticeCore.s.sol:152:        _requireNonZero(cfg.defaultAdmin, "DEFAULT_ADMIN");
script/DeployNSTLatticeCore.s.sol:153:        _requireNonZero(cfg.pauser, "PAUSER");
script/DeployNSTLatticeCore.s.sol:199:        deployed.shield.setVetted(cfg.genesisRecipient, true);
script/DeployNSTLatticeCore.s.sol:211:        _setSystemExemptIfNeeded(deployed.shield, cfg.founderTreasury);
script/DeployNSTLatticeCore.s.sol:212:        _setSystemExemptIfNeeded(deployed.shield, cfg.firstNationsTreasury);
script/DeployNSTLatticeCore.s.sol:213:        _setSystemExemptIfNeeded(deployed.shield, cfg.virilityTreasury);
script/DeployNSTLatticeCore.s.sol:214:        _setSystemExemptIfNeeded(deployed.shield, address(deployed.yieldPool));
script/DeployNSTLatticeCore.s.sol:215:        _setSystemExemptIfNeeded(deployed.shield, cfg.buildingTreasury);
script/DeployNSTLatticeCore.s.sol:231:        deployed.yieldPool.setAssetAllowed(address(deployed.cft), true);
script/DeployNSTLatticeCore.s.sol:268:        deployed.shield.setMembershipToken(address(deployed.nst));
script/DeployNSTLatticeCore.s.sol:275:        deployed.rewardEscrow.grantRole(grantCreatorRole, address(deployed.referral));
script/DeployNSTLatticeCore.s.sol:277:        deployed.cft.setDirectMinter(address(deployed.referral), true);
script/DeployNSTLatticeCore.s.sol:278:        deployed.cft.setDirectMinter(address(deployed.rewardEscrow), true);
script/DeployNSTLatticeCore.s.sol:303:        _grantRoleIfMissing(target, shield.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:304:        _grantRoleIfMissing(target, shield.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:305:        _grantRoleIfMissing(target, shield.VETTING_MANAGER_ROLE(), cfg.vettingManager);
script/DeployNSTLatticeCore.s.sol:306:        _grantRoleIfMissing(target, shield.BAN_MANAGER_ROLE(), cfg.banManager);
script/DeployNSTLatticeCore.s.sol:307:        _grantRoleIfMissing(target, shield.EXEMPTION_MANAGER_ROLE(), cfg.exemptionManager);
script/DeployNSTLatticeCore.s.sol:308:        _grantRoleIfMissing(target, shield.PROFILE_MANAGER_ROLE(), cfg.profileManager);
script/DeployNSTLatticeCore.s.sol:310:        _revokeBootstrapIfDifferent(target, shield.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:321:        _revokeBootstrapIfDifferent(target, shield.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:331:        _grantRoleIfMissing(target, nst.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:332:        _grantRoleIfMissing(target, nst.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:333:        _grantRoleIfMissing(target, nst.MINT_MANAGER_ROLE(), cfg.mintManager);
script/DeployNSTLatticeCore.s.sol:334:        _grantRoleIfMissing(target, nst.METADATA_MANAGER_ROLE(), cfg.metadataManager);
script/DeployNSTLatticeCore.s.sol:335:        _grantRoleIfMissing(target, nst.TREASURY_MANAGER_ROLE(), cfg.treasuryManager);
script/DeployNSTLatticeCore.s.sol:336:        _grantRoleIfMissing(target, nst.SWAP_OPERATOR_ROLE(), cfg.swapOperator);
script/DeployNSTLatticeCore.s.sol:338:        _revokeBootstrapIfDifferent(target, nst.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:347:        _revokeBootstrapIfDifferent(target, nst.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:357:        _grantRoleIfMissing(target, cft.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:358:        _grantRoleIfMissing(target, cft.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:359:        _grantRoleIfMissing(target, cft.CONFIG_MANAGER_ROLE(), cfg.configManager);
script/DeployNSTLatticeCore.s.sol:361:        _revokeBootstrapIfDifferent(target, cft.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:363:        _revokeBootstrapIfDifferent(target, cft.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:373:        _grantRoleIfMissing(target, rewardEscrow.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:374:        _grantRoleIfMissing(target, rewardEscrow.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:375:        _grantRoleIfMissing(target, rewardEscrow.CONFIG_MANAGER_ROLE(), cfg.configManager);
script/DeployNSTLatticeCore.s.sol:376:        _grantRoleIfMissing(target, rewardEscrow.GRANT_CREATOR_ROLE(), cfg.initialGrantCreator);
script/DeployNSTLatticeCore.s.sol:378:        _revokeBootstrapIfDifferent(target, rewardEscrow.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:386:            target, rewardEscrow.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:397:        _grantRoleIfMissing(target, referral.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:398:        _grantRoleIfMissing(target, referral.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:399:        _grantRoleIfMissing(target, referral.CONFIG_MANAGER_ROLE(), cfg.configManager);
script/DeployNSTLatticeCore.s.sol:401:        _revokeBootstrapIfDifferent(target, referral.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:406:            target, referral.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:410:    function _setSystemExemptIfNeeded(
script/DeployNSTLatticeCore.s.sol:415:            shield.setSystemExempt(account, true);
script/DeployNSTLatticeCore.s.sol:419:    function _grantRoleIfMissing(
script/DeployNSTLatticeCore.s.sol:424:        if (!target.hasRole(role, account)) {
script/DeployNSTLatticeCore.s.sol:425:            target.grantRole(role, account);
script/DeployNSTLatticeCore.s.sol:435:        if (finalHolder != operator && target.hasRole(role, operator)) {
script/DeployNSTLatticeCore.s.sol:436:            target.revokeRole(role, operator);
script/DeployNSTLatticeCore.s.sol:454:        _grantRoleIfMissing(target, vaultRegistry.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:455:        _grantRoleIfMissing(target, vaultRegistry.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:456:        _grantRoleIfMissing(target, vaultRegistry.CREDENTIAL_ISSUER_ROLE(), cfg.credentialIssuer);
script/DeployNSTLatticeCore.s.sol:457:        _grantRoleIfMissing(target, vaultRegistry.CREDENTIAL_REVOKER_ROLE(), cfg.credentialRevoker);
script/DeployNSTLatticeCore.s.sol:458:        _grantRoleIfMissing(target, vaultRegistry.URI_MANAGER_ROLE(), cfg.uriManager);
script/DeployNSTLatticeCore.s.sol:459:        _grantRoleIfMissing(target, vaultRegistry.PROOF_MANAGER_ROLE(), cfg.proofManager);
script/DeployNSTLatticeCore.s.sol:461:        _revokeBootstrapIfDifferent(target, vaultRegistry.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:475:            target, vaultRegistry.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:486:        _grantRoleIfMissing(target, treasuryRouter.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:487:        _grantRoleIfMissing(target, treasuryRouter.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:488:        _grantRoleIfMissing(target, treasuryRouter.ROUTE_MANAGER_ROLE(), cfg.routeManager);
script/DeployNSTLatticeCore.s.sol:489:        _grantRoleIfMissing(target, treasuryRouter.TREASURY_OPERATOR_ROLE(), cfg.treasuryOperator);
script/DeployNSTLatticeCore.s.sol:490:        _grantRoleIfMissing(target, treasuryRouter.ASSET_MANAGER_ROLE(), cfg.assetManager);
script/DeployNSTLatticeCore.s.sol:491:        _grantRoleIfMissing(target, treasuryRouter.EMERGENCY_MANAGER_ROLE(), cfg.emergencyManager);
script/DeployNSTLatticeCore.s.sol:493:        _revokeBootstrapIfDifferent(target, treasuryRouter.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:507:            target, treasuryRouter.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:518:        _grantRoleIfMissing(target, yieldPool.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:519:        _grantRoleIfMissing(target, yieldPool.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:520:        _grantRoleIfMissing(target, yieldPool.ASSET_MANAGER_ROLE(), cfg.assetManager);
script/DeployNSTLatticeCore.s.sol:521:        _grantRoleIfMissing(target, yieldPool.GRANT_MANAGER_ROLE(), cfg.grantManager);
script/DeployNSTLatticeCore.s.sol:522:        _grantRoleIfMissing(target, yieldPool.CLAIM_MANAGER_ROLE(), cfg.claimManager);
script/DeployNSTLatticeCore.s.sol:523:        _grantRoleIfMissing(target, yieldPool.RESCUE_MANAGER_ROLE(), cfg.rescueManager);
script/DeployNSTLatticeCore.s.sol:525:        _revokeBootstrapIfDifferent(target, yieldPool.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:539:            target, yieldPool.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:554:        vm.serializeAddress(objectKey, "defaultAdmin", cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:555:        vm.serializeAddress(objectKey, "pauser", cfg.pauser);
test/integration/ReferralMintFlow.t.sol:63:    address internal admin;
test/integration/ReferralMintFlow.t.sol:64:    address internal pauser;
test/integration/ReferralMintFlow.t.sol:91:    function setUp() public {
test/integration/ReferralMintFlow.t.sol:92:        admin = makeAddr("admin");
test/integration/ReferralMintFlow.t.sol:93:        pauser = makeAddr("pauser");
test/integration/ReferralMintFlow.t.sol:121:            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, address(0)
test/integration/ReferralMintFlow.t.sol:125:        shield.setVetted(genesis, true);
test/integration/ReferralMintFlow.t.sol:131:            admin,
test/integration/ReferralMintFlow.t.sol:132:            pauser,
test/integration/ReferralMintFlow.t.sol:144:        _setSystemExempt(founderTreasury, true);
test/integration/ReferralMintFlow.t.sol:145:        _setSystemExempt(firstNationsTreasury, true);
test/integration/ReferralMintFlow.t.sol:146:        _setSystemExempt(virilityTreasury, true);
test/integration/ReferralMintFlow.t.sol:147:        _setSystemExempt(yieldPool, true);
test/integration/ReferralMintFlow.t.sol:148:        _setSystemExempt(buildingTreasury, true);
test/integration/ReferralMintFlow.t.sol:151:            admin,
test/integration/ReferralMintFlow.t.sol:158:            pauser,
test/integration/ReferralMintFlow.t.sol:167:        vm.prank(admin);
test/integration/ReferralMintFlow.t.sol:168:        shield.setMembershipToken(address(nst));
test/integration/ReferralMintFlow.t.sol:171:            admin, pauser, configManager, initialGrantCreator, address(shield), address(cft)
test/integration/ReferralMintFlow.t.sol:175:            admin, pauser, configManager, address(shield), address(cft), address(rewardEscrow)
test/integration/ReferralMintFlow.t.sol:179:        vm.prank(admin);
test/integration/ReferralMintFlow.t.sol:180:        rewardEscrow.grantRole(grantCreatorRole, address(referral));
test/integration/ReferralMintFlow.t.sol:183:        cft.setDirectMinter(address(referral), true);
test/integration/ReferralMintFlow.t.sol:186:        cft.setDirectMinter(address(rewardEscrow), true);
test/integration/ReferralMintFlow.t.sol:195:    function _setSystemExempt(
test/integration/ReferralMintFlow.t.sol:200:        shield.setSystemExempt(account, value);
test/integration/ReferralMintFlow.t.sol:207:        shield.setVetted(account, true);
test/integration/VaultMembershipFlow.t.sol:70:    address internal admin;
test/integration/VaultMembershipFlow.t.sol:71:    address internal pauser;
test/integration/VaultMembershipFlow.t.sol:94:    function setUp() public {
test/integration/VaultMembershipFlow.t.sol:97:        admin = makeAddr("admin");
test/integration/VaultMembershipFlow.t.sol:98:        pauser = makeAddr("pauser");
test/integration/VaultMembershipFlow.t.sol:122:            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, address(0)
test/integration/VaultMembershipFlow.t.sol:126:        shield.setVetted(genesis, true);
test/integration/VaultMembershipFlow.t.sol:133:            admin,
test/integration/VaultMembershipFlow.t.sol:140:            pauser,
test/integration/VaultMembershipFlow.t.sol:149:        vm.prank(admin);
test/integration/VaultMembershipFlow.t.sol:150:        shield.setMembershipToken(address(nst));
test/integration/VaultMembershipFlow.t.sol:153:            admin,
test/integration/VaultMembershipFlow.t.sol:154:            pauser,
test/integration/VaultMembershipFlow.t.sol:184:        vault.setProofStatus(credentialId, VaultRegistry.ProofStatus.Approved);
test/integration/VaultMembershipFlow.t.sol:271:        shield.setVetted(account, true);
test/integration/VettedMintFlow.t.sol:54:    address internal admin;
test/integration/VettedMintFlow.t.sol:55:    address internal pauser;
test/integration/VettedMintFlow.t.sol:73:    function setUp() public {
test/integration/VettedMintFlow.t.sol:74:        admin = makeAddr("admin");
test/integration/VettedMintFlow.t.sol:75:        pauser = makeAddr("pauser");
test/integration/VettedMintFlow.t.sol:94:            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, address(0)
test/integration/VettedMintFlow.t.sol:98:        shield.setVetted(genesis, true);
test/integration/VettedMintFlow.t.sol:105:            admin,
test/integration/VettedMintFlow.t.sol:112:            pauser,
test/integration/VettedMintFlow.t.sol:121:        vm.prank(admin);
test/integration/VettedMintFlow.t.sol:122:        shield.setMembershipToken(address(nst));
test/integration/VettedMintFlow.t.sol:132:        shield.setVetted(account, true);
test/integration/VettedMintFlow.t.sol:209:    function test_flow_vetted_user_cannot_mint_when_membership_contract_is_paused() public {
test/integration/VettedMintFlow.t.sol:212:        vm.prank(pauser);
test/integration/VettedMintFlow.t.sol:213:        nst.pause();
test/unit/CFTv2.t.sol:13:    function setActiveMember(
test/unit/CFTv2.t.sol:20:    function setBanned(
test/unit/CFTv2.t.sol:27:    function setSystemExempt(
test/unit/CFTv2.t.sol:63:    address internal admin;
test/unit/CFTv2.t.sol:64:    address internal pauser;
test/unit/CFTv2.t.sol:81:    function setUp() public {
test/unit/CFTv2.t.sol:82:        admin = makeAddr("admin");
test/unit/CFTv2.t.sol:83:        pauser = makeAddr("pauser");
test/unit/CFTv2.t.sol:102:        shield.setSystemExempt(founderTreasury, true);
test/unit/CFTv2.t.sol:103:        shield.setSystemExempt(firstNationsTreasury, true);
test/unit/CFTv2.t.sol:104:        shield.setSystemExempt(virilityTreasury, true);
test/unit/CFTv2.t.sol:105:        shield.setSystemExempt(yieldPool, true);
test/unit/CFTv2.t.sol:106:        shield.setSystemExempt(buildingTreasury, true);
test/unit/CFTv2.t.sol:108:        shield.setActiveMember(alice, true);
test/unit/CFTv2.t.sol:109:        shield.setActiveMember(bob, true);
test/unit/CFTv2.t.sol:118:            admin,
test/unit/CFTv2.t.sol:119:            pauser,
test/unit/CFTv2.t.sol:132:    function _setDirectMinter(
test/unit/CFTv2.t.sol:137:        cft.setDirectMinter(account, allowed);
test/unit/CFTv2.t.sol:140:    function _setTreasuryMinter(
test/unit/CFTv2.t.sol:145:        cft.setTreasuryMinter(account, allowed);
test/unit/CFTv2.t.sol:148:    function _setBurner(
test/unit/CFTv2.t.sol:153:        cft.setBurner(account, allowed);
test/unit/CFTv2.t.sol:159:        _setDirectMinter(directMinter, true);
test/unit/CFTv2.t.sol:164:    function test_constructor_sets_roles_admins_and_genesis_allocation() public view {
test/unit/CFTv2.t.sol:165:        assertTrue(cft.hasRole(cft.DEFAULT_ADMIN_ROLE(), admin));
test/unit/CFTv2.t.sol:166:        assertTrue(cft.hasRole(cft.PAUSER_ROLE(), pauser));
test/unit/CFTv2.t.sol:167:        assertTrue(cft.hasRole(cft.CONFIG_MANAGER_ROLE(), configManager));
test/unit/CFTv2.t.sol:169:        assertEq(cft.getRoleAdmin(cft.DIRECT_MINTER_ROLE()), cft.CONFIG_MANAGER_ROLE());
test/unit/CFTv2.t.sol:170:        assertEq(cft.getRoleAdmin(cft.TREASURY_MINT_ROLE()), cft.CONFIG_MANAGER_ROLE());
test/unit/CFTv2.t.sol:171:        assertEq(cft.getRoleAdmin(cft.BURNER_ROLE()), cft.CONFIG_MANAGER_ROLE());
test/unit/CFTv2.t.sol:206:            pauser,
test/unit/CFTv2.t.sol:220:            admin,
test/unit/CFTv2.t.sol:221:            pauser,
test/unit/CFTv2.t.sol:237:            admin,
test/unit/CFTv2.t.sol:256:            admin,
test/unit/CFTv2.t.sol:257:            pauser,
test/unit/CFTv2.t.sol:276:        shield.setBanned(alice, true);
test/unit/CFTv2.t.sol:280:    function test_config_manager_can_set_roles_and_non_role_cannot() public {
test/unit/CFTv2.t.sol:282:        cft.setDirectMinter(directMinter, true);
test/unit/CFTv2.t.sol:283:        assertTrue(cft.hasRole(cft.DIRECT_MINTER_ROLE(), directMinter));
test/unit/CFTv2.t.sol:286:        cft.setTreasuryMinter(treasuryMinter, true);
test/unit/CFTv2.t.sol:287:        assertTrue(cft.hasRole(cft.TREASURY_MINT_ROLE(), treasuryMinter));
test/unit/CFTv2.t.sol:290:        cft.setBurner(burner, true);
test/unit/CFTv2.t.sol:291:        assertTrue(cft.hasRole(cft.BURNER_ROLE(), burner));
test/unit/CFTv2.t.sol:295:        cft.setDirectMinter(outsider, true);
test/unit/CFTv2.t.sol:299:        cft.setTreasuryMinter(outsider, true);
test/unit/CFTv2.t.sol:303:        cft.setBurner(outsider, true);
test/unit/CFTv2.t.sol:306:    function test_set_role_functions_revert_on_zero_address() public {
test/unit/CFTv2.t.sol:309:        cft.setDirectMinter(address(0), true);
test/unit/CFTv2.t.sol:313:        cft.setTreasuryMinter(address(0), true);
test/unit/CFTv2.t.sol:317:        cft.setBurner(address(0), true);
test/unit/CFTv2.t.sol:342:        _setDirectMinter(directMinter, true);
test/unit/CFTv2.t.sol:352:        _setDirectMinter(directMinter, true);
test/unit/CFTv2.t.sol:360:        _setDirectMinter(directMinter, true);
test/unit/CFTv2.t.sol:368:        _setTreasuryMinter(treasuryMinter, true);
test/unit/CFTv2.t.sol:399:        _setTreasuryMinter(treasuryMinter, true);
test/unit/CFTv2.t.sol:426:        _setBurner(burner, true);
test/unit/CFTv2.t.sol:436:        _setBurner(burner, true);
test/unit/CFTv2.t.sol:464:        shield.setBanned(alice, true);
test/unit/CFTv2.t.sol:507:    function test_pause_blocks_mutations_and_unpause_restores() public {
test/unit/CFTv2.t.sol:508:        _setDirectMinter(directMinter, true);
test/unit/CFTv2.t.sol:513:        vm.prank(pauser);
test/unit/CFTv2.t.sol:514:        cft.pause();
test/unit/CFTv2.t.sol:528:        vm.prank(pauser);
test/unit/CFTv2.t.sol:529:        cft.unpause();
test/unit/NSTSBT.t.sol:27:    function setBanned(
test/unit/NSTSBT.t.sol:34:    function setEligible(
test/unit/NSTSBT.t.sol:87:    function setOutputToken(
test/unit/NSTSBT.t.sol:93:    function setShouldRevert(
test/unit/NSTSBT.t.sol:186:    address internal admin;
test/unit/NSTSBT.t.sol:191:    address internal pauser;
test/unit/NSTSBT.t.sol:201:    function setUp() public {
test/unit/NSTSBT.t.sol:202:        admin = makeAddr("admin");
test/unit/NSTSBT.t.sol:207:        pauser = makeAddr("pauser");
test/unit/NSTSBT.t.sol:221:        router.setOutputToken(address(cft));
test/unit/NSTSBT.t.sol:223:        shield.setEligible(genesis, true);
test/unit/NSTSBT.t.sol:237:            admin,
test/unit/NSTSBT.t.sol:244:            pauser,
test/unit/NSTSBT.t.sol:254:    function _setMinOut(
test/unit/NSTSBT.t.sol:267:        shield.setEligible(alice, true);
test/unit/NSTSBT.t.sol:273:    function test_constructor_sets_roles_immutables_and_genesis() public view {
test/unit/NSTSBT.t.sol:274:        assertTrue(nst.hasRole(nst.DEFAULT_ADMIN_ROLE(), admin));
test/unit/NSTSBT.t.sol:275:        assertTrue(nst.hasRole(nst.PAUSER_ROLE(), pauser));
test/unit/NSTSBT.t.sol:276:        assertTrue(nst.hasRole(nst.MINT_MANAGER_ROLE(), mintManager));
test/unit/NSTSBT.t.sol:277:        assertTrue(nst.hasRole(nst.METADATA_MANAGER_ROLE(), metadataManager));
test/unit/NSTSBT.t.sol:278:        assertTrue(nst.hasRole(nst.TREASURY_MANAGER_ROLE(), treasuryManager));
test/unit/NSTSBT.t.sol:279:        assertTrue(nst.hasRole(nst.SWAP_OPERATOR_ROLE(), swapOperator));
test/unit/NSTSBT.t.sol:303:            admin,
test/unit/NSTSBT.t.sol:310:            pauser,
test/unit/NSTSBT.t.sol:322:        freshShield.setEligible(genesis, true);
test/unit/NSTSBT.t.sol:323:        freshShield.setBanned(genesis, true);
test/unit/NSTSBT.t.sol:327:            admin,
test/unit/NSTSBT.t.sol:334:            pauser,
test/unit/NSTSBT.t.sol:354:            pauser,
test/unit/NSTSBT.t.sol:371:        shield.setEligible(alice, true);
test/unit/NSTSBT.t.sol:372:        shield.setBanned(alice, true);
test/unit/NSTSBT.t.sol:380:        shield.setEligible(alice, true);
test/unit/NSTSBT.t.sol:388:        shield.setEligible(alice, true);
test/unit/NSTSBT.t.sol:427:        _setMinOut(123);
test/unit/NSTSBT.t.sol:429:        shield.setEligible(alice, true);
test/unit/NSTSBT.t.sol:452:        _setMinOut(123);
test/unit/NSTSBT.t.sol:453:        router.setShouldRevert(true);
test/unit/NSTSBT.t.sol:455:        shield.setEligible(alice, true);
test/unit/NSTSBT.t.sol:471:        _setMinOut(777);
test/unit/NSTSBT.t.sol:492:        _setMinOut(1);
test/unit/NSTSBT.t.sol:501:        _setMinOut(1);
test/unit/NSTSBT.t.sol:514:        _setMinOut(1);
test/unit/NSTSBT.t.sol:515:        router.setShouldRevert(true);
test/unit/NSTSBT.t.sol:524:    function test_pause_blocks_mint_and_unpause_restores() public {
test/unit/NSTSBT.t.sol:525:        shield.setEligible(alice, true);
test/unit/NSTSBT.t.sol:527:        vm.prank(pauser);
test/unit/NSTSBT.t.sol:528:        nst.pause();
test/unit/NSTSBT.t.sol:534:        vm.prank(pauser);
test/unit/NSTSBT.t.sol:535:        nst.unpause();
test/unit/NSTSBT.t.sol:543:    function test_only_mint_manager_can_set_mint_open() public {
test/unit/NSTSBT.t.sol:546:        nst.setMintOpen(false);
test/unit/NSTSBT.t.sol:549:        nst.setMintOpen(false);
test/unit/NSTSBT.t.sol:555:        shield.setEligible(alice, true);
test/unit/NSTSBT.t.sol:558:        nst.setMintOpen(false);
test/unit/NSTSBT.t.sol:569:        nst.setMintOpen(true);
test/unit/NSTSBT.t.sol:580:        nst.setBaseURI("ipfs://nst/");
test/unit/NSTSBT.t.sol:589:        nst.setBaseURI("ipfs://new/");
test/unit/NSTSBT.t.sol:594:        nst.setContractURI("ipfs://contract-metadata");
test/unit/NSTSBT.t.sol:603:        nst.setContractURI("ipfs://new-contract");
test/unit/NSTSBT.t.sol:609:        nst.setBaseURI("");
test/unit/NSTSBT.t.sol:613:        nst.setContractURI("");
test/unit/NSTSBT.t.sol:706:        nst.setApprovalForAll(bob, true);
test/unit/NSTSBT.t.sol:760:            admin,
test/unit/NSTSBT.t.sol:767:            pauser,
test/unit/NSTSBT.t.sol:776:        shield.setEligible(alice, true);
test/unit/ReferralController.t.sol:14:    function setActiveMember(
test/unit/ReferralController.t.sol:21:    function setMintEligible(
test/unit/ReferralController.t.sol:28:    function setBanned(
test/unit/ReferralController.t.sol:35:    function setSystemExempt(
test/unit/ReferralController.t.sol:106:    address internal admin;
test/unit/ReferralController.t.sol:107:    address internal pauser;
test/unit/ReferralController.t.sol:117:    function setUp() public {
test/unit/ReferralController.t.sol:118:        admin = makeAddr("admin");
test/unit/ReferralController.t.sol:119:        pauser = makeAddr("pauser");
test/unit/ReferralController.t.sol:133:        shield.setActiveMember(sponsor, true);
test/unit/ReferralController.t.sol:143:            admin, pauser, configManager, address(shield), rewardToken, rewardEscrow
test/unit/ReferralController.t.sol:150:        shield.setMintEligible(invitee, true);
test/unit/ReferralController.t.sol:163:        shield.setActiveMember(invitee, true);
test/unit/ReferralController.t.sol:175:    function test_constructor_sets_roles_and_dependencies() public view {
test/unit/ReferralController.t.sol:176:        assertTrue(referral.hasRole(referral.DEFAULT_ADMIN_ROLE(), admin));
test/unit/ReferralController.t.sol:177:        assertTrue(referral.hasRole(referral.PAUSER_ROLE(), pauser));
test/unit/ReferralController.t.sol:178:        assertTrue(referral.hasRole(referral.CONFIG_MANAGER_ROLE(), configManager));
test/unit/ReferralController.t.sol:192:            address(0), pauser, configManager, address(shield), address(cft), address(escrow)
test/unit/ReferralController.t.sol:197:            admin, pauser, configManager, address(0), address(cft), address(escrow)
test/unit/ReferralController.t.sol:204:            admin, address(0), configManager, address(shield), address(cft), address(escrow)
test/unit/ReferralController.t.sol:212:        new ReferralController(admin, pauser, configManager, fake, address(cft), address(escrow));
test/unit/ReferralController.t.sol:238:        shield.setActiveMember(invitee1, true);
test/unit/ReferralController.t.sol:255:        shield.setActiveMember(invitee1, true);
test/unit/ReferralController.t.sol:266:        shield.setActiveMember(sponsor, false);
test/unit/ReferralController.t.sol:277:        shield.setSystemExempt(sponsor, true);
test/unit/ReferralController.t.sol:302:        shield.setActiveMember(invitee1, true);
test/unit/ReferralController.t.sol:390:        shield.setActiveMember(invitee1, true);
test/unit/ReferralController.t.sol:391:        shield.setActiveMember(sponsor, false);
test/unit/ReferralController.t.sol:405:        shield.setActiveMember(invitee1, true);
test/unit/ReferralController.t.sol:411:        shield.setActiveMember(invitee2, true);
test/unit/ReferralController.t.sol:423:        shield.setActiveMember(invitee1, true);
test/unit/ReferralController.t.sol:429:        shield.setActiveMember(invitee2, true);
test/unit/ReferralController.t.sol:435:        shield.setActiveMember(invitee3, true);
test/unit/ReferralController.t.sol:441:        shield.setActiveMember(invitee4, true);
test/unit/ReferralController.t.sol:447:    function test_set_reward_token_and_reward_escrow() public {
test/unit/ReferralController.t.sol:453:        noConfig.setRewardToken(address(newToken));
test/unit/ReferralController.t.sol:456:        noConfig.setRewardEscrow(address(newEscrow));
test/unit/ReferralController.t.sol:462:    function test_set_reward_token_and_reward_escrow_revert_for_non_role() public {
test/unit/ReferralController.t.sol:468:        referral.setRewardToken(address(newToken));
test/unit/ReferralController.t.sol:472:        referral.setRewardEscrow(address(newEscrow));
test/unit/ReferralController.t.sol:475:    function test_pause_blocks_bind_and_record() public {
test/unit/ReferralController.t.sol:478:        vm.prank(pauser);
test/unit/ReferralController.t.sol:479:        referral.pause();
test/unit/ReferralController.t.sol:485:        vm.prank(pauser);
test/unit/ReferralController.t.sol:486:        referral.unpause();
test/unit/ReferralController.t.sol:491:        shield.setActiveMember(invitee1, true);
test/unit/ReferralController.t.sol:493:        vm.prank(pauser);
test/unit/ReferralController.t.sol:494:        referral.pause();
test/unit/RewardEscrow.t.sol:13:    function setActiveMember(
test/unit/RewardEscrow.t.sol:20:    function setBanned(
test/unit/RewardEscrow.t.sol:60:    address internal admin;
test/unit/RewardEscrow.t.sol:61:    address internal pauser;
test/unit/RewardEscrow.t.sol:69:    function setUp() public {
test/unit/RewardEscrow.t.sol:70:        admin = makeAddr("admin");
test/unit/RewardEscrow.t.sol:71:        pauser = makeAddr("pauser");
test/unit/RewardEscrow.t.sol:83:        shield.setActiveMember(alice, true);
test/unit/RewardEscrow.t.sol:84:        shield.setActiveMember(bob, true);
test/unit/RewardEscrow.t.sol:93:            admin, pauser, configManager, grantCreator, address(shield), rewardToken_
test/unit/RewardEscrow.t.sol:106:    function test_constructor_sets_roles_and_dependencies() public view {
test/unit/RewardEscrow.t.sol:107:        assertTrue(escrow.hasRole(escrow.DEFAULT_ADMIN_ROLE(), admin));
test/unit/RewardEscrow.t.sol:108:        assertTrue(escrow.hasRole(escrow.PAUSER_ROLE(), pauser));
test/unit/RewardEscrow.t.sol:109:        assertTrue(escrow.hasRole(escrow.CONFIG_MANAGER_ROLE(), configManager));
test/unit/RewardEscrow.t.sol:110:        assertTrue(escrow.hasRole(escrow.GRANT_CREATOR_ROLE(), grantCreator));
test/unit/RewardEscrow.t.sol:120:            address(0), pauser, configManager, grantCreator, address(shield), address(rewardToken)
test/unit/RewardEscrow.t.sol:125:            admin, pauser, configManager, grantCreator, address(0), address(rewardToken)
test/unit/RewardEscrow.t.sol:132:            admin, address(0), configManager, grantCreator, address(shield), address(rewardToken)
test/unit/RewardEscrow.t.sol:140:        new RewardEscrow(admin, pauser, configManager, grantCreator, fake, address(rewardToken));
test/unit/RewardEscrow.t.sol:180:        shield.setBanned(alice, true);
test/unit/RewardEscrow.t.sol:188:        shield.setActiveMember(alice, false);
test/unit/RewardEscrow.t.sol:266:        shield.setBanned(alice, true);
test/unit/RewardEscrow.t.sol:278:        shield.setActiveMember(alice, false);
test/unit/RewardEscrow.t.sol:366:    function test_set_reward_token_and_rescue_erc20() public {
test/unit/RewardEscrow.t.sol:371:        noTokenEscrow.setRewardToken(address(newRewardToken));
test/unit/RewardEscrow.t.sol:384:    function test_set_reward_token_and_rescue_revert_for_non_role() public {
test/unit/RewardEscrow.t.sol:389:        escrow.setRewardToken(address(newRewardToken));
test/unit/RewardEscrow.t.sol:396:    function test_pause_blocks_create_and_claim() public {
test/unit/RewardEscrow.t.sol:399:        vm.prank(pauser);
test/unit/RewardEscrow.t.sol:400:        escrow.pause();
test/unit/RewardEscrow.t.sol:406:        vm.prank(pauser);
test/unit/RewardEscrow.t.sol:407:        escrow.unpause();
test/unit/RewardEscrow.t.sol:411:        vm.prank(pauser);
test/unit/RewardEscrow.t.sol:412:        escrow.pause();
test/unit/RewardEscrow.t.sol:438:        shield.setBanned(alice, true);
test/unit/ShieldRegistry.t.sol:27:    address internal admin;
test/unit/ShieldRegistry.t.sol:28:    address internal pauser;
test/unit/ShieldRegistry.t.sol:39:    function setUp() public {
test/unit/ShieldRegistry.t.sol:40:        admin = makeAddr("admin");
test/unit/ShieldRegistry.t.sol:41:        pauser = makeAddr("pauser");
test/unit/ShieldRegistry.t.sol:55:            admin,
test/unit/ShieldRegistry.t.sol:56:            pauser,
test/unit/ShieldRegistry.t.sol:65:    function test_constructor_sets_roles_and_membership_token() public view {
test/unit/ShieldRegistry.t.sol:66:        assertTrue(shield.hasRole(shield.DEFAULT_ADMIN_ROLE(), admin));
test/unit/ShieldRegistry.t.sol:67:        assertTrue(shield.hasRole(shield.PAUSER_ROLE(), pauser));
test/unit/ShieldRegistry.t.sol:68:        assertTrue(shield.hasRole(shield.VETTING_MANAGER_ROLE(), vettingManager));
test/unit/ShieldRegistry.t.sol:69:        assertTrue(shield.hasRole(shield.BAN_MANAGER_ROLE(), banManager));
test/unit/ShieldRegistry.t.sol:70:        assertTrue(shield.hasRole(shield.EXEMPTION_MANAGER_ROLE(), exemptionManager));
test/unit/ShieldRegistry.t.sol:71:        assertTrue(shield.hasRole(shield.PROFILE_MANAGER_ROLE(), profileManager));
test/unit/ShieldRegistry.t.sol:76:    function test_constructor_reverts_when_default_admin_is_zero() public {
test/unit/ShieldRegistry.t.sol:80:            pauser,
test/unit/ShieldRegistry.t.sol:92:            admin,
test/unit/ShieldRegistry.t.sol:109:            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, fakeToken
test/unit/ShieldRegistry.t.sol:113:    function test_pause_and_unpause() public {
test/unit/ShieldRegistry.t.sol:114:        vm.prank(pauser);
test/unit/ShieldRegistry.t.sol:115:        shield.pause();
test/unit/ShieldRegistry.t.sol:116:        assertTrue(shield.paused());
test/unit/ShieldRegistry.t.sol:118:        vm.prank(pauser);
test/unit/ShieldRegistry.t.sol:119:        shield.unpause();
test/unit/ShieldRegistry.t.sol:120:        assertFalse(shield.paused());
test/unit/ShieldRegistry.t.sol:123:    function test_set_vetted_updates_isVetted_and_isMintEligible() public {
test/unit/ShieldRegistry.t.sol:125:        shield.setVetted(alice, true);
test/unit/ShieldRegistry.t.sol:131:        shield.setVetted(alice, false);
test/unit/ShieldRegistry.t.sol:137:    function test_batch_set_vetted_updates_multiple_accounts() public {
test/unit/ShieldRegistry.t.sol:149:    function test_batch_set_vetted_reverts_on_empty_array() public {
test/unit/ShieldRegistry.t.sol:169:        shield.setVetted(alice, true);
test/unit/ShieldRegistry.t.sol:186:        shield.setSystemExempt(operator, true);
test/unit/ShieldRegistry.t.sol:194:    function test_batch_set_system_exempt_reverts_on_empty_array() public {
test/unit/ShieldRegistry.t.sol:202:    function test_cannot_set_system_exempt_true_for_banned_account() public {
test/unit/ShieldRegistry.t.sol:208:        shield.setSystemExempt(alice, true);
test/unit/ShieldRegistry.t.sol:211:    function test_set_entity_profile_updates_registry_fields() public {
test/unit/ShieldRegistry.t.sol:215:        shield.setEntityProfile(corp, ShieldRegistry.EntityType.Corporation, 7, boHash);
test/unit/ShieldRegistry.t.sol:222:    function test_set_operational_permissions_exposes_views_for_vetted_account() public {
test/unit/ShieldRegistry.t.sol:224:        shield.setVetted(corp, true);
test/unit/ShieldRegistry.t.sol:227:        shield.setOperationalPermissions(corp, true, true, true);
test/unit/ShieldRegistry.t.sol:234:    function test_set_operational_permissions_reverts_for_banned_account() public {
test/unit/ShieldRegistry.t.sol:240:        shield.setOperationalPermissions(corp, true, true, true);
test/unit/ShieldRegistry.t.sol:245:        shield.setSystemExempt(operator, true);
test/unit/ShieldRegistry.t.sol:256:        shield.setVetted(alice, true);
test/unit/ShieldRegistry.t.sol:266:    function test_set_membership_token_after_deployment_enables_ownsNST_and_activeMember() public {
test/unit/ShieldRegistry.t.sol:268:            admin, pauser, vettingManager, banManager, exemptionManager, profileManager, address(0)
test/unit/ShieldRegistry.t.sol:272:        noTokenShield.setVetted(alice, true);
test/unit/ShieldRegistry.t.sol:280:        vm.prank(admin);
test/unit/ShieldRegistry.t.sol:281:        noTokenShield.setMembershipToken(address(newMembership));
test/unit/ShieldRegistry.t.sol:287:    function test_set_membership_token_reverts_for_invalid_token() public {
test/unit/ShieldRegistry.t.sol:290:        vm.prank(admin);
test/unit/ShieldRegistry.t.sol:294:        shield.setMembershipToken(fakeToken);
test/unit/ShieldRegistry.t.sol:302:        shield.setVetted(corp, true);
test/unit/ShieldRegistry.t.sol:305:        shield.setEntityProfile(corp, ShieldRegistry.EntityType.Supplier, 3, boHash);
test/unit/ShieldRegistry.t.sol:308:        shield.setOperationalPermissions(corp, true, true, false);
test/unit/TreasuryRouter.t.sol:97:    address internal admin;
test/unit/TreasuryRouter.t.sol:98:    address internal pauser;
test/unit/TreasuryRouter.t.sol:115:    function setUp() public {
test/unit/TreasuryRouter.t.sol:116:        admin = makeAddr("admin");
test/unit/TreasuryRouter.t.sol:117:        pauser = makeAddr("pauser");
test/unit/TreasuryRouter.t.sol:128:            admin, pauser, routeManager, treasuryOperator, assetManager, emergencyManager
test/unit/TreasuryRouter.t.sol:137:    function test_constructor_sets_roles_and_constants() public view {
test/unit/TreasuryRouter.t.sol:138:        assertTrue(router.hasRole(router.DEFAULT_ADMIN_ROLE(), admin));
test/unit/TreasuryRouter.t.sol:139:        assertTrue(router.hasRole(router.PAUSER_ROLE(), pauser));
test/unit/TreasuryRouter.t.sol:140:        assertTrue(router.hasRole(router.ROUTE_MANAGER_ROLE(), routeManager));
test/unit/TreasuryRouter.t.sol:141:        assertTrue(router.hasRole(router.TREASURY_OPERATOR_ROLE(), treasuryOperator));
test/unit/TreasuryRouter.t.sol:142:        assertTrue(router.hasRole(router.ASSET_MANAGER_ROLE(), assetManager));
test/unit/TreasuryRouter.t.sol:143:        assertTrue(router.hasRole(router.EMERGENCY_MANAGER_ROLE(), emergencyManager));
test/unit/TreasuryRouter.t.sol:155:            address(0), pauser, routeManager, treasuryOperator, assetManager, emergencyManager
test/unit/TreasuryRouter.t.sol:240:    function test_create_route_reverts_for_non_contract_erc20_asset() public {
test/unit/TreasuryRouter.t.sol:282:    function test_set_route_enabled_false_blocks_routing() public {
test/unit/TreasuryRouter.t.sol:286:        router.setRouteEnabled(ETH_ROUTE, false);
test/unit/TreasuryRouter.t.sol:416:    function test_pause_blocks_routing_and_unpause_restores() public {
test/unit/TreasuryRouter.t.sol:419:        vm.prank(pauser);
test/unit/TreasuryRouter.t.sol:420:        router.pause();
test/unit/TreasuryRouter.t.sol:422:        assertTrue(router.paused());
test/unit/TreasuryRouter.t.sol:429:        vm.prank(pauser);
test/unit/TreasuryRouter.t.sol:430:        router.unpause();
test/unit/TreasuryRouter.t.sol:432:        assertFalse(router.paused());
test/unit/TreasuryRouter.t.sol:440:    function test_rescue_eth_requires_pause_and_succeeds_when_paused() public {
test/unit/TreasuryRouter.t.sol:451:        vm.prank(pauser);
test/unit/TreasuryRouter.t.sol:452:        router.pause();
test/unit/TreasuryRouter.t.sol:461:    function test_rescue_erc20_requires_pause_and_succeeds_when_paused() public {
test/unit/TreasuryRouter.t.sol:469:        vm.prank(pauser);
test/unit/TreasuryRouter.t.sol:470:        router.pause();
test/unit/VaultRegistry.t.sol:11:    function setBanned(
test/unit/VaultRegistry.t.sol:29:    address private admin = makeAddr("admin");
test/unit/VaultRegistry.t.sol:30:    address private pauser = makeAddr("pauser");
test/unit/VaultRegistry.t.sol:49:    function setUp() public {
test/unit/VaultRegistry.t.sol:55:            admin, pauser, issuer, revoker, uriManager, proofManager, address(shield)
test/unit/VaultRegistry.t.sol:59:    function test_constructor_sets_roles_and_dependency() public view {
test/unit/VaultRegistry.t.sol:63:        assertTrue(vault.hasRole(vault.DEFAULT_ADMIN_ROLE(), admin));
test/unit/VaultRegistry.t.sol:64:        assertTrue(vault.hasRole(vault.PAUSER_ROLE(), pauser));
test/unit/VaultRegistry.t.sol:65:        assertTrue(vault.hasRole(vault.CREDENTIAL_ISSUER_ROLE(), issuer));
test/unit/VaultRegistry.t.sol:66:        assertTrue(vault.hasRole(vault.CREDENTIAL_REVOKER_ROLE(), revoker));
test/unit/VaultRegistry.t.sol:67:        assertTrue(vault.hasRole(vault.URI_MANAGER_ROLE(), uriManager));
test/unit/VaultRegistry.t.sol:68:        assertTrue(vault.hasRole(vault.PROOF_MANAGER_ROLE(), proofManager));
test/unit/VaultRegistry.t.sol:75:            address(0), pauser, issuer, revoker, uriManager, proofManager, address(shield)
test/unit/VaultRegistry.t.sol:86:        new VaultRegistry(admin, pauser, issuer, revoker, uriManager, proofManager, notAContract);
test/unit/VaultRegistry.t.sol:192:        shield.setBanned(subject, true);
test/unit/VaultRegistry.t.sol:207:        shield.setBanned(subject, true);
test/unit/VaultRegistry.t.sol:318:    function test_set_credential_uri_success() public {
test/unit/VaultRegistry.t.sol:322:        vault.setCredentialURI(credentialId, UPDATED_URI_HASH);
test/unit/VaultRegistry.t.sol:327:    function test_set_credential_uri_reverts_for_non_uri_manager() public {
test/unit/VaultRegistry.t.sol:333:        vault.setCredentialURI(credentialId, UPDATED_URI_HASH);
test/unit/VaultRegistry.t.sol:336:    function test_set_credential_uri_reverts_for_zero_uri_hash() public {
test/unit/VaultRegistry.t.sol:342:        vault.setCredentialURI(credentialId, bytes32(0));
test/unit/VaultRegistry.t.sol:345:    function test_set_proof_status_success() public {
test/unit/VaultRegistry.t.sol:349:        vault.setProofStatus(credentialId, VaultRegistry.ProofStatus.Approved);
test/unit/VaultRegistry.t.sol:357:    function test_set_proof_status_reverts_for_unknown_status() public {
test/unit/VaultRegistry.t.sol:363:        vault.setProofStatus(credentialId, VaultRegistry.ProofStatus.Unknown);
test/unit/VaultRegistry.t.sol:366:    function test_pause_blocks_mutations_and_unpause_restores() public {
test/unit/VaultRegistry.t.sol:367:        vm.prank(pauser);
test/unit/VaultRegistry.t.sol:368:        vault.pause();
test/unit/VaultRegistry.t.sol:377:        vm.prank(pauser);
test/unit/VaultRegistry.t.sol:378:        vault.unpause();
test/unit/YieldPool.t.sol:29:    address internal admin;
test/unit/YieldPool.t.sol:30:    address internal pauser;
test/unit/YieldPool.t.sol:44:    function setUp() public {
test/unit/YieldPool.t.sol:45:        admin = makeAddr("admin");
test/unit/YieldPool.t.sol:46:        pauser = makeAddr("pauser");
test/unit/YieldPool.t.sol:56:        pool = new YieldPool(admin, pauser, assetManager, grantManager, claimManager, rescueManager);
test/unit/YieldPool.t.sol:61:        pool.setAssetAllowed(address(token), true);
test/unit/YieldPool.t.sol:73:    function test_constructor_sets_roles_and_constants() public view {
test/unit/YieldPool.t.sol:74:        assertTrue(pool.hasRole(pool.DEFAULT_ADMIN_ROLE(), admin));
test/unit/YieldPool.t.sol:75:        assertTrue(pool.hasRole(pool.PAUSER_ROLE(), pauser));
test/unit/YieldPool.t.sol:76:        assertTrue(pool.hasRole(pool.ASSET_MANAGER_ROLE(), assetManager));
test/unit/YieldPool.t.sol:77:        assertTrue(pool.hasRole(pool.GRANT_MANAGER_ROLE(), grantManager));
test/unit/YieldPool.t.sol:78:        assertTrue(pool.hasRole(pool.CLAIM_MANAGER_ROLE(), claimManager));
test/unit/YieldPool.t.sol:79:        assertTrue(pool.hasRole(pool.RESCUE_MANAGER_ROLE(), rescueManager));
test/unit/YieldPool.t.sol:83:        assertTrue(pool.isAssetAllowed(address(0)));
test/unit/YieldPool.t.sol:84:        assertTrue(pool.isAssetAllowed(address(token)));
test/unit/YieldPool.t.sol:87:    function test_constructor_reverts_on_zero_admin() public {
test/unit/YieldPool.t.sol:90:        new YieldPool(address(0), pauser, assetManager, grantManager, claimManager, rescueManager);
test/unit/YieldPool.t.sol:96:        new YieldPool(admin, address(0), assetManager, grantManager, claimManager, rescueManager);
test/unit/YieldPool.t.sol:99:    function test_set_asset_allowed_reverts_for_non_manager() public {
test/unit/YieldPool.t.sol:104:        pool.setAssetAllowed(address(other), true);
test/unit/YieldPool.t.sol:107:    function test_set_asset_allowed_reverts_for_native_eth() public {
test/unit/YieldPool.t.sol:110:        pool.setAssetAllowed(address(0), true);
test/unit/YieldPool.t.sol:113:    function test_set_asset_allowed_reverts_for_eoa_asset() public {
test/unit/YieldPool.t.sol:116:        pool.setAssetAllowed(bob, true);
test/unit/YieldPool.t.sol:119:    function test_set_asset_allowed_can_disable_asset() public {
test/unit/YieldPool.t.sol:120:        assertTrue(pool.isAssetAllowed(address(token)));
test/unit/YieldPool.t.sol:123:        pool.setAssetAllowed(address(token), false);
test/unit/YieldPool.t.sol:125:        assertFalse(pool.isAssetAllowed(address(token)));
test/unit/YieldPool.t.sol:163:    function test_deposit_eth_reverts_when_paused() public {
test/unit/YieldPool.t.sol:164:        vm.prank(pauser);
test/unit/YieldPool.t.sol:165:        pool.pause();
test/unit/YieldPool.t.sol:172:    function test_unpause_restores_eth_deposit() public {
test/unit/YieldPool.t.sol:173:        vm.prank(pauser);
test/unit/YieldPool.t.sol:174:        pool.pause();
test/unit/YieldPool.t.sol:176:        vm.prank(pauser);
test/unit/YieldPool.t.sol:177:        pool.unpause();
test/unit/YieldPool.t.sol:185:    function test_receive_eth_reverts_when_paused() public {
test/unit/YieldPool.t.sol:186:        vm.prank(pauser);
test/unit/YieldPool.t.sol:187:        pool.pause();
test/unit/YieldPool.t.sol:212:    function test_deposit_erc20_reverts_for_native_asset() public {
test/unit/YieldPool.t.sol:218:    function test_deposit_erc20_reverts_for_unallowed_asset() public {
test/unit/YieldPool.t.sol:284:    function test_create_grant_reverts_for_unallowed_asset() public {
test/unit/YieldPool.t.sol:492:    function test_rescue_eth_reverts_when_not_paused() public {
test/unit/YieldPool.t.sol:500:    function test_rescue_eth_success_when_paused_and_unreserved() public {
test/unit/YieldPool.t.sol:504:        vm.prank(pauser);
test/unit/YieldPool.t.sol:505:        pool.pause();
test/unit/YieldPool.t.sol:520:        vm.prank(pauser);
test/unit/YieldPool.t.sol:521:        pool.pause();
test/unit/YieldPool.t.sol:537:        vm.prank(pauser);
test/unit/YieldPool.t.sol:538:        pool.pause();
test/unit/YieldPool.t.sol:545:    function test_rescue_erc20_success_when_paused_and_unreserved() public {
test/unit/YieldPool.t.sol:549:        vm.prank(pauser);
test/unit/YieldPool.t.sol:550:        pool.pause();
test/unit/YieldPool.t.sol:563:        vm.prank(pauser);
test/unit/YieldPool.t.sol:564:        pool.pause();
test/unit/YieldPool.t.sol:575:    function test_rescue_erc20_reverts_for_native_asset() public {
test/unit/YieldPool.t.sol:576:        vm.prank(pauser);
test/unit/YieldPool.t.sol:577:        pool.pause();

## Treasury / Value Routing / Funds Movement Hits
src/CFTv2.sol:8:interface IShieldRegistryCFTLike {
src/CFTv2.sol:20:/// @title CFTv2
src/CFTv2.sol:23:/// - 100B genesis supply is allocated across treasury destinations at deployment
src/CFTv2.sol:26:/// - Direct mint route is intended for exact user rewards such as referrals and escrow claims
src/CFTv2.sol:27:/// - Treasury-split mint route is intended for protocol or treasury issuance flows
src/CFTv2.sol:28:contract CFTv2 is ERC20, AccessControl, Pausable {
src/CFTv2.sol:45:    uint16 public constant FOUNDER_BPS = 2000;
src/CFTv2.sol:46:    uint16 public constant FIRST_NATIONS_BPS = 2000;
src/CFTv2.sol:47:    uint16 public constant VIRILITY_BPS = 500;
src/CFTv2.sol:48:    uint16 public constant YIELD_POOL_BPS = 500;
src/CFTv2.sol:49:    uint16 public constant BUILDING_TREASURY_BPS = 5000;
src/CFTv2.sol:50:    uint16 public constant BPS_DENOMINATOR = 10_000;
src/CFTv2.sol:68:    event TreasuryMinterSet(address indexed account, bool allowed, address indexed actor);
src/CFTv2.sol:73:    event TreasurySplitMinted(
src/CFTv2.sol:76:        uint256 founderAmount,
src/CFTv2.sol:79:        uint256 yieldPoolAmount,
src/CFTv2.sol:80:        uint256 buildingTreasuryAmount
src/CFTv2.sol:85:        uint256 founderAmount,
src/CFTv2.sol:88:        uint256 yieldPoolAmount,
src/CFTv2.sol:89:        uint256 buildingTreasuryAmount
src/CFTv2.sol:98:    IShieldRegistryCFTLike public immutable SHIELD_REGISTRY;
src/CFTv2.sol:121:        address founderTreasury,
src/CFTv2.sol:122:        address firstNationsTreasury,
src/CFTv2.sol:123:        address virilityTreasury,
src/CFTv2.sol:124:        address yieldPool,
src/CFTv2.sol:125:        address buildingTreasury,
src/CFTv2.sol:131:                || founderTreasury == address(0) || firstNationsTreasury == address(0)
src/CFTv2.sol:132:                || virilityTreasury == address(0) || yieldPool == address(0)
src/CFTv2.sol:133:                || buildingTreasury == address(0)
src/CFTv2.sol:145:            FOUNDER_BPS + FIRST_NATIONS_BPS + VIRILITY_BPS + YIELD_POOL_BPS + BUILDING_TREASURY_BPS
src/CFTv2.sol:146:                != BPS_DENOMINATOR
src/CFTv2.sol:151:        SHIELD_REGISTRY = IShieldRegistryCFTLike(shieldRegistry);
src/CFTv2.sol:153:        FOUNDER_TREASURY = founderTreasury;
src/CFTv2.sol:154:        FIRST_NATIONS_TREASURY = firstNationsTreasury;
src/CFTv2.sol:155:        VIRILITY_TREASURY = virilityTreasury;
src/CFTv2.sol:156:        YIELD_POOL = yieldPool;
src/CFTv2.sol:157:        BUILDING_TREASURY = buildingTreasury;
src/CFTv2.sol:168:            uint256 founderAmount,
src/CFTv2.sol:171:            uint256 yieldPoolAmount,
src/CFTv2.sol:172:            uint256 buildingTreasuryAmount
src/CFTv2.sol:173:        ) = _splitTreasuryAmount(GENESIS_SUPPLY);
src/CFTv2.sol:176:        _mint(FOUNDER_TREASURY, founderAmount);
src/CFTv2.sol:179:        _mint(YIELD_POOL, yieldPoolAmount);
src/CFTv2.sol:180:        _mint(BUILDING_TREASURY, buildingTreasuryAmount);
src/CFTv2.sol:185:            founderAmount,
src/CFTv2.sol:188:            yieldPoolAmount,
src/CFTv2.sol:189:            buildingTreasuryAmount
src/CFTv2.sol:220:    function setTreasuryMinter(
src/CFTv2.sol:232:        emit TreasuryMinterSet(account, allowed, msg.sender);
src/CFTv2.sol:267:    /// @notice Treasury-split mint path for protocol issuance that must follow treasury allocation rules.
src/CFTv2.sol:268:    function mintTreasurySplit(
src/CFTv2.sol:275:            uint256 founderAmount,
src/CFTv2.sol:278:            uint256 yieldPoolAmount,
src/CFTv2.sol:279:            uint256 buildingTreasuryAmount
src/CFTv2.sol:285:            founderAmount,
src/CFTv2.sol:288:            yieldPoolAmount,
src/CFTv2.sol:289:            buildingTreasuryAmount
src/CFTv2.sol:290:        ) = _splitTreasuryAmount(totalAmount);
src/CFTv2.sol:292:        _mint(FOUNDER_TREASURY, founderAmount);
src/CFTv2.sol:295:        _mint(YIELD_POOL, yieldPoolAmount);
src/CFTv2.sol:296:        _mint(BUILDING_TREASURY, buildingTreasuryAmount);
src/CFTv2.sol:298:        emit TreasurySplitMinted(
src/CFTv2.sol:301:            founderAmount,
src/CFTv2.sol:304:            yieldPoolAmount,
src/CFTv2.sol:305:            buildingTreasuryAmount
src/CFTv2.sol:337:    function previewTreasurySplit(
src/CFTv2.sol:343:            uint256 founderAmount,
src/CFTv2.sol:346:            uint256 yieldPoolAmount,
src/CFTv2.sol:347:            uint256 buildingTreasuryAmount
src/CFTv2.sol:351:        return _splitTreasuryAmount(totalAmount);
src/CFTv2.sol:423:    function _splitTreasuryAmount(
src/CFTv2.sol:429:            uint256 founderAmount,
src/CFTv2.sol:432:            uint256 yieldPoolAmount,
src/CFTv2.sol:433:            uint256 buildingTreasuryAmount
src/CFTv2.sol:436:        founderAmount = (totalAmount * FOUNDER_BPS) / BPS_DENOMINATOR;
src/CFTv2.sol:437:        firstNationsAmount = (totalAmount * FIRST_NATIONS_BPS) / BPS_DENOMINATOR;
src/CFTv2.sol:438:        virilityAmount = (totalAmount * VIRILITY_BPS) / BPS_DENOMINATOR;
src/CFTv2.sol:439:        yieldPoolAmount = (totalAmount * YIELD_POOL_BPS) / BPS_DENOMINATOR;
src/CFTv2.sol:441:        buildingTreasuryAmount =
src/CFTv2.sol:442:            totalAmount - founderAmount - firstNationsAmount - virilityAmount - yieldPoolAmount;
src/NSTSBT.sol:12:interface IUniswapV2RouterLike {
src/NSTSBT.sol:13:    function WETH() external view returns (address);
src/NSTSBT.sol:15:    function swapExactETHForTokensSupportingFeeOnTransferTokens(
src/NSTSBT.sol:23:interface IYieldPoolLike {
src/NSTSBT.sol:57:/// - Founder payout wallet may differ from Genesis custody
src/NSTSBT.sol:59:/// - Mint fee split is 90% founder payout / 10% yield route support
src/NSTSBT.sol:60:/// - Live ETH->CFT yield swaps defer safely when disabled or when router calls fail
src/NSTSBT.sol:82:    error InvalidRouter();
src/NSTSBT.sol:83:    error InvalidRouterPath();
src/NSTSBT.sol:88:    error DirectETHNotAccepted();
src/NSTSBT.sol:92:    error FounderTokenProtected();
src/NSTSBT.sol:93:    error ETHTransferFailed();
src/NSTSBT.sol:96:    error YieldSwapDisabled();
src/NSTSBT.sol:97:    error YieldDepositZero();
src/NSTSBT.sol:110:    error AmountExceedsPending(uint256 pending, uint256 requested);
src/NSTSBT.sol:122:        uint256 founderShareWei,
src/NSTSBT.sol:123:        uint256 yieldShareWei
src/NSTSBT.sol:127:        uint256 founderShareWei,
src/NSTSBT.sol:128:        uint256 yieldShareWei,
src/NSTSBT.sol:129:        address indexed founderPayoutWallet,
src/NSTSBT.sol:130:        address indexed yieldPool
src/NSTSBT.sol:133:    event FounderPaid(address indexed founderPayoutWallet, uint256 amount);
src/NSTSBT.sol:144:    event YieldSwapMinOutChangeProposed(
src/NSTSBT.sol:147:    event YieldSwapMinOutChangeCanceled();
src/NSTSBT.sol:148:    event YieldSwapMinOutSet(uint256 oldValue, uint256 newValue);
src/NSTSBT.sol:150:    event YieldSwapSucceeded(
src/NSTSBT.sol:151:        uint256 indexed amountInWei, uint256 indexed minOut, address indexed yieldPool
src/NSTSBT.sol:154:    event YieldSwapDeferred(uint256 indexed amountInWei, uint256 indexed totalPendingWei);
src/NSTSBT.sol:156:    event PendingYieldProcessed(
src/NSTSBT.sol:160:    event SweepETH(address indexed to, uint256 amount);
src/NSTSBT.sol:175:    uint16 public constant FOUNDER_BPS = 9000;
src/NSTSBT.sol:176:    uint16 public constant YIELD_POOL_BPS = 1000;
src/NSTSBT.sol:177:    uint16 public constant BPS_DENOMINATOR = 10_000;
src/NSTSBT.sol:191:    /// @notice Founder payout wallet / treasury receiving the founder share.
src/NSTSBT.sol:197:    address public immutable CFT;
src/NSTSBT.sol:199:    IUniswapV2RouterLike public immutable ROUTER;
src/NSTSBT.sol:200:    address public immutable WETH;
src/NSTSBT.sol:220:    /// @notice minOut for ETH->CFT swap; value 0 disables live swaps and causes deferral.
src/NSTSBT.sol:221:    uint256 public yieldSwapMinOut;
src/NSTSBT.sol:222:    uint256 public pendingYieldSwapMinOut;
src/NSTSBT.sol:223:    uint256 public pendingYieldSwapMinOutExecuteAfter;
src/NSTSBT.sol:225:    /// @notice Reserved ETH representing unswapped yield-share amounts.
src/NSTSBT.sol:226:    uint256 public pendingYieldETH;
src/NSTSBT.sol:236:    /// @param founderPayoutWallet Founder payout wallet / treasury.
src/NSTSBT.sol:238:    /// @param router Uniswap-compatible router.
src/NSTSBT.sol:239:    /// @param cft CFT token address.
src/NSTSBT.sol:240:    /// @param yieldPool Wallet receiving swapped CFT.
src/NSTSBT.sol:244:    /// @param treasuryManager Role holder for treasury controls.
src/NSTSBT.sol:245:    /// @param swapOperator Role holder for pending swap processing.
src/NSTSBT.sol:251:        address founderPayoutWallet,
src/NSTSBT.sol:253:        address router,
src/NSTSBT.sol:255:        address yieldPool,
src/NSTSBT.sol:259:        address treasuryManager,
src/NSTSBT.sol:266:                || founderPayoutWallet == address(0) || shieldRegistry == address(0)
src/NSTSBT.sol:267:                || router == address(0) || cft == address(0) || yieldPool == address(0)
src/NSTSBT.sol:274:                || treasuryManager == address(0) || swapOperator == address(0)
src/NSTSBT.sol:279:        if (FOUNDER_BPS + YIELD_POOL_BPS != BPS_DENOMINATOR) {
src/NSTSBT.sol:284:        if (router.code.length == 0) revert InvalidRouter();
src/NSTSBT.sol:288:        FOUNDER_WALLET = founderPayoutWallet;
src/NSTSBT.sol:291:        CFT = cft;
src/NSTSBT.sol:292:        YIELD_POOL = yieldPool;
src/NSTSBT.sol:293:        ROUTER = IUniswapV2RouterLike(router);
src/NSTSBT.sol:298:        address weth = ROUTER.WETH();
src/NSTSBT.sol:299:        if (weth == address(0)) revert InvalidRouter();
src/NSTSBT.sol:300:        if (weth == cft) revert InvalidRouterPath();
src/NSTSBT.sol:302:        WETH = weth;
src/NSTSBT.sol:308:        _grantRole(TREASURY_MANAGER_ROLE, treasuryManager);
src/NSTSBT.sol:324:    /// @notice Mint exactly one vetted, soulbound NST for exactly 0.02 ETH.
src/NSTSBT.sol:343:        (uint256 founderShare, uint256 yieldShare) = _splitMintFee(msg.value);
src/NSTSBT.sol:345:        _payoutFounder(founderShare);
src/NSTSBT.sol:346:        _routeOrEscrowYield(yieldShare);
src/NSTSBT.sol:348:        emit MintFeeSplit(founderShare, yieldShare, FOUNDER_WALLET, YIELD_POOL);
src/NSTSBT.sol:349:        emit Minted(msg.sender, tokenId, msg.value, founderShare, yieldShare);
src/NSTSBT.sol:408:    /// @notice Proposes a new minOut for ETH->CFT swaps.
src/NSTSBT.sol:409:    /// @dev Setting the eventual value to 0 intentionally disables live swaps and causes future yield to escrow.
src/NSTSBT.sol:410:    function proposeYieldSwapMinOut(
src/NSTSBT.sol:413:        pendingYieldSwapMinOut = newMinOut;
src/NSTSBT.sol:414:        pendingYieldSwapMinOutExecuteAfter = block.timestamp + CONFIG_DELAY;
src/NSTSBT.sol:416:        emit YieldSwapMinOutChangeProposed(newMinOut, pendingYieldSwapMinOutExecuteAfter);
src/NSTSBT.sol:419:    function cancelYieldSwapMinOutProposal() external onlyRole(TREASURY_MANAGER_ROLE) {
src/NSTSBT.sol:420:        pendingYieldSwapMinOut = 0;
src/NSTSBT.sol:421:        pendingYieldSwapMinOutExecuteAfter = 0;
src/NSTSBT.sol:423:        emit YieldSwapMinOutChangeCanceled();
src/NSTSBT.sol:426:    function applyYieldSwapMinOut() external onlyRole(TREASURY_MANAGER_ROLE) {
src/NSTSBT.sol:427:        uint256 executeAfter = pendingYieldSwapMinOutExecuteAfter;
src/NSTSBT.sol:428:        uint256 newValue = pendingYieldSwapMinOut;
src/NSTSBT.sol:435:        uint256 oldValue = yieldSwapMinOut;
src/NSTSBT.sol:437:        yieldSwapMinOut = newValue;
src/NSTSBT.sol:438:        pendingYieldSwapMinOut = 0;
src/NSTSBT.sol:439:        pendingYieldSwapMinOutExecuteAfter = 0;
src/NSTSBT.sol:441:        emit YieldSwapMinOutSet(oldValue, newValue);
src/NSTSBT.sol:444:    /// @notice Retry a portion or all of pending yield ETH.
src/NSTSBT.sol:445:    /// @dev Requires a non-zero yieldSwapMinOut; when minOut is zero, live swaps are intentionally disabled.
src/NSTSBT.sol:446:    function processPendingYieldETH(
src/NSTSBT.sol:449:        if (yieldSwapMinOut == 0) revert YieldSwapDisabled();
src/NSTSBT.sol:451:        uint256 pending = pendingYieldETH;
src/NSTSBT.sol:453:        if (amount > pending) revert AmountExceedsPending(pending, amount);
src/NSTSBT.sol:455:        bool success = _attemptYieldSwap(amount);
src/NSTSBT.sol:459:            pendingYieldETH = pending - amount;
src/NSTSBT.sol:462:        emit PendingYieldProcessed(amount, pendingYieldETH);
src/NSTSBT.sol:463:        emit YieldSwapSucceeded(amount, yieldSwapMinOut, YIELD_POOL);
src/NSTSBT.sol:466:    /// @notice Sweep only unreserved ETH. Pending yield ETH cannot be swept.
src/NSTSBT.sol:467:    function sweepETH(
src/NSTSBT.sol:473:        uint256 available = sweepableETH();
src/NSTSBT.sol:479:        if (!ok) revert ETHTransferFailed();
src/NSTSBT.sol:481:        emit SweepETH(to, amount);
src/NSTSBT.sol:485:    /// @dev Does not affect reserved ETH accounting.
src/NSTSBT.sol:486:    function rescueERC20(
src/NSTSBT.sol:523:    function founderSharePerMint() external pure returns (uint256) {
src/NSTSBT.sol:524:        return (MINT_PRICE * FOUNDER_BPS) / BPS_DENOMINATOR;
src/NSTSBT.sol:527:    function yieldSharePerMint() external pure returns (uint256) {
src/NSTSBT.sol:528:        return MINT_PRICE - ((MINT_PRICE * FOUNDER_BPS) / BPS_DENOMINATOR);
src/NSTSBT.sol:533:    ) external pure returns (uint256 founderShare, uint256 yieldShare) {
src/NSTSBT.sol:534:        founderShare = (amount * FOUNDER_BPS) / BPS_DENOMINATOR;
src/NSTSBT.sol:535:        yieldShare = amount - founderShare;
src/NSTSBT.sol:552:    function pendingYieldSwapMinOutState()
src/NSTSBT.sol:557:        return (pendingYieldSwapMinOut, pendingYieldSwapMinOutExecuteAfter);
src/NSTSBT.sol:560:    function sweepableETH() public view returns (uint256) {
src/NSTSBT.sol:562:        if (bal <= pendingYieldETH) {
src/NSTSBT.sol:566:        return bal - pendingYieldETH;
src/NSTSBT.sol:635:        if (tokenId == GENESIS_TOKEN_ID) revert FounderTokenProtected();
src/NSTSBT.sol:661:            if (tokenId == GENESIS_TOKEN_ID) revert FounderTokenProtected();
src/NSTSBT.sol:690:    function _splitMintFee(
src/NSTSBT.sol:692:    ) internal pure returns (uint256 founderShare, uint256 yieldShare) {
src/NSTSBT.sol:693:        founderShare = (amount * FOUNDER_BPS) / BPS_DENOMINATOR;
src/NSTSBT.sol:694:        yieldShare = amount - founderShare;
src/NSTSBT.sol:697:    function _payoutFounder(
src/NSTSBT.sol:698:        uint256 founderShare
src/NSTSBT.sol:700:        (bool ok,) = payable(FOUNDER_WALLET).call{ value: founderShare }("");
src/NSTSBT.sol:701:        if (!ok) revert ETHTransferFailed();
src/NSTSBT.sol:703:        emit FounderPaid(FOUNDER_WALLET, founderShare);
src/NSTSBT.sol:706:    function _routeOrEscrowYield(
src/NSTSBT.sol:707:        uint256 yieldShare
src/NSTSBT.sol:709:        if (yieldShare == 0) revert SwapAmountZero();
src/NSTSBT.sol:712:        // yieldSwapMinOut == 0 means live swap is disabled, so yield is deferred.
src/NSTSBT.sol:713:        if (yieldSwapMinOut == 0) {
src/NSTSBT.sol:714:            _deferYield(yieldShare);
src/NSTSBT.sol:718:        bool success = _attemptYieldSwap(yieldShare);
src/NSTSBT.sol:720:            emit YieldSwapSucceeded(yieldShare, yieldSwapMinOut, YIELD_POOL);
src/NSTSBT.sol:724:        _deferYield(yieldShare);
src/NSTSBT.sol:727:    function _deferYield(
src/NSTSBT.sol:730:        pendingYieldETH += amount;
src/NSTSBT.sol:731:        emit YieldSwapDeferred(amount, pendingYieldETH);
src/NSTSBT.sol:736:        path[0] = WETH;
src/NSTSBT.sol:737:        path[1] = CFT;
src/NSTSBT.sol:740:    function _attemptYieldSwap(
src/NSTSBT.sol:744:        if (yieldSwapMinOut == 0) revert YieldSwapDisabled();
src/NSTSBT.sol:750:        IERC20 cftToken = IERC20(CFT);
src/NSTSBT.sol:753:        try ROUTER.swapExactETHForTokensSupportingFeeOnTransferTokens{ value: amountIn }(
src/NSTSBT.sol:754:            yieldSwapMinOut, path, address(this), deadline
src/NSTSBT.sol:757:            if (received == 0) revert YieldDepositZero();
src/NSTSBT.sol:760:            IYieldPoolLike(YIELD_POOL).depositERC20(CFT, received, bytes32(0));
src/NSTSBT.sol:779:        revert DirectETHNotAccepted();
src/ReferralController.sol:23:interface ICFTMintable {
src/ReferralController.sol:30:interface IRewardEscrow {
src/ReferralController.sol:43:/// - First completed pair pays 500 CFT liquid
src/ReferralController.sol:44:/// - Every later completed pair creates a 30-day escrow grant for 500 CFT
src/ReferralController.sol:80:    error RewardEscrowNotConfigured();
src/ReferralController.sol:87:    event RewardEscrowSet(
src/ReferralController.sol:88:        address indexed oldEscrow, address indexed newEscrow, address indexed actor
src/ReferralController.sol:104:    event EscrowRewardCreated(
src/ReferralController.sol:133:    ICFTMintable public rewardToken;
src/ReferralController.sol:134:    IRewardEscrow public rewardEscrow;
src/ReferralController.sol:140:    mapping(address => uint256) public escrowPairsCreated;
src/ReferralController.sol:152:        address rewardEscrow_
src/ReferralController.sol:170:            rewardToken = ICFTMintable(rewardToken_);
src/ReferralController.sol:174:        if (rewardEscrow_ != address(0)) {
src/ReferralController.sol:175:            if (rewardEscrow_.code.length == 0) revert InvalidDependency(rewardEscrow_);
src/ReferralController.sol:176:            rewardEscrow = IRewardEscrow(rewardEscrow_);
src/ReferralController.sol:177:            emit RewardEscrowSet(address(0), rewardEscrow_, defaultAdmin);
src/ReferralController.sol:201:        rewardToken = ICFTMintable(newToken);
src/ReferralController.sol:206:    function setRewardEscrow(
src/ReferralController.sol:207:        address newEscrow
src/ReferralController.sol:209:        if (newEscrow == address(0) || newEscrow.code.length == 0) {
src/ReferralController.sol:210:            revert InvalidDependency(newEscrow);
src/ReferralController.sol:213:        address oldEscrow = address(rewardEscrow);
src/ReferralController.sol:214:        rewardEscrow = IRewardEscrow(newEscrow);
src/ReferralController.sol:216:        emit RewardEscrowSet(oldEscrow, newEscrow, msg.sender);
src/ReferralController.sol:277:            ICFTMintable token = rewardToken;
src/ReferralController.sol:287:        IRewardEscrow escrow = rewardEscrow;
src/ReferralController.sol:288:        if (address(escrow) == address(0)) revert RewardEscrowNotConfigured();
src/ReferralController.sol:291:        uint256 grantId = escrow.createGrant(sponsor, PAIR_REWARD, unlockAt);
src/ReferralController.sol:293:        escrowPairsCreated[sponsor] += 1;
src/ReferralController.sol:295:        emit EscrowRewardCreated(sponsor, invitee, pairNumber, PAIR_REWARD, unlockAt, grantId);
src/ReferralController.sol:352:    function nextPairWillBeEscrowed(
src/ReferralController.sol:368:            uint256 escrowPairsIssued,
src/ReferralController.sol:370:            bool nextPairIsEscrowed
src/ReferralController.sol:376:        escrowPairsIssued = escrowPairsCreated[sponsor];
src/ReferralController.sol:380:        nextPairIsEscrowed = ((successfulMints / PAIR_SIZE) + 1) > 1;
src/RewardEscrow.sol:10:interface IShieldRegistryEscrowLike {
src/RewardEscrow.sol:19:interface ICFTRewardMintable {
src/RewardEscrow.sol:26:/// @title RewardEscrow
src/RewardEscrow.sol:27:/// @notice Time-locked reward escrow for NST Lattice referral and future incentive flows.
src/RewardEscrow.sol:32:contract RewardEscrow is AccessControl, Pausable, ReentrancyGuard {
src/RewardEscrow.sol:100:    IShieldRegistryEscrowLike public immutable SHIELD_REGISTRY;
src/RewardEscrow.sol:106:    ICFTRewardMintable public rewardToken;
src/RewardEscrow.sol:131:        SHIELD_REGISTRY = IShieldRegistryEscrowLike(shieldRegistry);
src/RewardEscrow.sol:140:            rewardToken = ICFTRewardMintable(rewardToken_);
src/RewardEscrow.sol:165:        rewardToken = ICFTRewardMintable(newToken);
src/RewardEscrow.sol:171:    function rescueERC20(
src/RewardEscrow.sol:236:        ICFTRewardMintable token = rewardToken;
src/RewardEscrow.sol:258:        ICFTRewardMintable token = rewardToken;
src/ShieldRegistry.sol:64:        TreasuryOrOperator,
src/TreasuryRouter.sol:10:/// @title TreasuryRouter
src/TreasuryRouter.sol:11:/// @notice Permissioned treasury routing layer for NST Lattice protocol value.
src/TreasuryRouter.sol:12:/// @dev Routes funded ETH/ERC20 value only. Does not create, promise, or calculate yield.
src/TreasuryRouter.sol:13:contract TreasuryRouter is AccessControl, Pausable, ReentrancyGuard {
src/TreasuryRouter.sol:16:    address public constant NATIVE_ETH = address(0);
src/TreasuryRouter.sol:18:    uint16 public constant BPS_DENOMINATOR = 10_000;
src/TreasuryRouter.sol:46:        YieldRoute,
src/TreasuryRouter.sol:58:        uint16 bps;
src/TreasuryRouter.sol:70:    event ETHReceived(address indexed from, uint256 amount);
src/TreasuryRouter.sol:76:        uint16 bps,
src/TreasuryRouter.sol:112:    event ETHRouted(
src/TreasuryRouter.sol:124:    event ETHSplitRouted(
src/TreasuryRouter.sol:125:        bytes32 indexed splitHash, uint256 totalAmount, uint256 routeCount, address indexed actor
src/TreasuryRouter.sol:129:        bytes32 indexed splitHash,
src/TreasuryRouter.sol:148:    error InvalidBps(uint256 bps);
src/TreasuryRouter.sol:153:    error ETHRouteRequired(bytes32 routeId);
src/TreasuryRouter.sol:156:    error ETHTransferFailed(address to, uint256 amount);
src/TreasuryRouter.sol:162:        address treasuryOperator,
src/TreasuryRouter.sol:168:                || treasuryOperator == address(0) || assetManager == address(0)
src/TreasuryRouter.sol:177:        _grantRole(TREASURY_OPERATOR_ROLE, treasuryOperator);
src/TreasuryRouter.sol:183:        emit ETHReceived(msg.sender, msg.value);
src/TreasuryRouter.sol:198:        uint16 bps,
src/TreasuryRouter.sol:211:        _requireValidBps(bps);
src/TreasuryRouter.sol:220:            bps: bps,
src/TreasuryRouter.sol:231:        emit RouteCreated(routeId, destination, asset, bps, routeType, metadataHash, msg.sender);
src/TreasuryRouter.sol:274:        uint16 oldBps = route.bps;
src/TreasuryRouter.sol:275:        route.bps = newBps;
src/TreasuryRouter.sol:332:    function routeETH(
src/TreasuryRouter.sol:339:        if (route.asset != NATIVE_ETH) {
src/TreasuryRouter.sol:340:            revert ETHRouteRequired(routeId);
src/TreasuryRouter.sol:343:        _sendETH(route.destination, msg.value);
src/TreasuryRouter.sol:345:        emit ETHRouted(routeId, route.destination, msg.value, msg.sender);
src/TreasuryRouter.sol:356:        if (route.asset == NATIVE_ETH) {
src/TreasuryRouter.sol:365:    function routeETHBySplit(
src/TreasuryRouter.sol:377:        (address[] memory destinations, uint256[] memory splitAmounts,) =
src/TreasuryRouter.sol:378:            _previewSplit(NATIVE_ETH, msg.value, routeIds);
src/TreasuryRouter.sol:379:        amounts = splitAmounts;
src/TreasuryRouter.sol:383:                _sendETH(destinations[i], amounts[i]);
src/TreasuryRouter.sol:384:                emit ETHRouted(routeIds[i], destinations[i], amounts[i], msg.sender);
src/TreasuryRouter.sol:388:        emit ETHSplitRouted(keccak256(abi.encode(routeIds)), msg.value, routeIds.length, msg.sender);
src/TreasuryRouter.sol:403:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/TreasuryRouter.sol:407:        (address[] memory destinations, uint256[] memory splitAmounts,) =
src/TreasuryRouter.sol:409:        amounts = splitAmounts;
src/TreasuryRouter.sol:426:    function rescueETH(
src/TreasuryRouter.sol:436:            revert InsufficientBalance(NATIVE_ETH, available, amount);
src/TreasuryRouter.sol:439:        _sendETH(to, amount);
src/TreasuryRouter.sol:441:        emit AssetRescued(NATIVE_ETH, to, amount, msg.sender);
src/TreasuryRouter.sol:444:    function rescueERC20(
src/TreasuryRouter.sol:449:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/TreasuryRouter.sol:537:            if (route.bps == 0) {
src/TreasuryRouter.sol:538:                revert InvalidBps(route.bps);
src/TreasuryRouter.sol:542:            totalBpsAccumulator += route.bps;
src/TreasuryRouter.sol:545:        if (totalBpsAccumulator != BPS_DENOMINATOR) {
src/TreasuryRouter.sol:555:                uint256 amount = (totalAmount * _routes[routeIds[i]].bps) / BPS_DENOMINATOR;
src/TreasuryRouter.sol:561:        totalBps = BPS_DENOMINATOR;
src/TreasuryRouter.sol:629:        if (asset != NATIVE_ETH && asset.code.length == 0) {
src/TreasuryRouter.sol:635:        uint256 bps
src/TreasuryRouter.sol:637:        if (bps > BPS_DENOMINATOR) {
src/TreasuryRouter.sol:638:            revert InvalidBps(bps);
src/TreasuryRouter.sol:650:    function _sendETH(
src/TreasuryRouter.sol:657:            revert ETHTransferFailed(to, amount);
src/YieldPool.sol:10:/// @title YieldPool
src/YieldPool.sol:11:/// @notice Funded yield custody and accounting layer for NST Lattice protocol value.
src/YieldPool.sol:12:/// @dev Does not create, promise, or calculate yield. Claims are limited to funded reserves.
src/YieldPool.sol:13:contract YieldPool is AccessControl, Pausable, ReentrancyGuard {
src/YieldPool.sol:20:    address public constant NATIVE_ETH = address(0);
src/YieldPool.sol:107:    event ETHRescued(address indexed to, uint256 amount, address indexed actor);
src/YieldPool.sol:129:    error ETHTransferFailed();
src/YieldPool.sol:142:        address rescueManager
src/YieldPool.sol:148:                || claimManager == address(0) || rescueManager == address(0)
src/YieldPool.sol:158:        _grantRole(RESCUE_MANAGER_ROLE, rescueManager);
src/YieldPool.sol:166:        _depositETH(msg.sender, msg.value, bytes32(0));
src/YieldPool.sol:189:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/YieldPool.sol:201:    function depositETH(
src/YieldPool.sol:206:        _depositETH(msg.sender, amount, metadataHash);
src/YieldPool.sol:334:    function rescueETH(
src/YieldPool.sol:341:        uint256 available = availableBalance(NATIVE_ETH);
src/YieldPool.sol:343:            revert ReservedFundsProtected(NATIVE_ETH, amount, available);
src/YieldPool.sol:346:        _sendETH(to, amount);
src/YieldPool.sol:348:        emit ETHRescued(to, amount, msg.sender);
src/YieldPool.sol:351:    function rescueERC20(
src/YieldPool.sol:356:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
src/YieldPool.sol:378:        return asset == NATIVE_ETH || _allowedAssets[asset];
src/YieldPool.sol:404:        if (asset == NATIVE_ETH) {
src/YieldPool.sol:459:    function _depositETH(
src/YieldPool.sol:468:        totalDeposited[NATIVE_ETH] += amount;
src/YieldPool.sol:470:        emit Deposited(NATIVE_ETH, from, amount, metadataHash);
src/YieldPool.sol:503:        if (asset == NATIVE_ETH) {
src/YieldPool.sol:504:            _sendETH(to, amount);
src/YieldPool.sol:511:    function _sendETH(
src/YieldPool.sol:516:        if (!success) revert ETHTransferFailed();
src/YieldPool.sol:522:        if (asset == NATIVE_ETH) revert InvalidAsset(asset);
script/DeployLocalMockRouter.s.sol:8:contract LocalMockWETH is ERC20 {
script/DeployLocalMockRouter.s.sol:10:    error ETHTransferFailed();
script/DeployLocalMockRouter.s.sol:15:    constructor() ERC20("Local Mock Wrapped Ether", "WETH") { }
script/DeployLocalMockRouter.s.sol:28:    function withdraw(
script/DeployLocalMockRouter.s.sol:34:        if (!ok) revert ETHTransferFailed();
script/DeployLocalMockRouter.s.sol:40:contract LocalMockUniswapV2Router {
script/DeployLocalMockRouter.s.sol:45:    error ETHTransferFailed();
script/DeployLocalMockRouter.s.sol:50:    event MockSwapExactETHForTokens(
script/DeployLocalMockRouter.s.sol:59:    event ETHSwept(address indexed to, uint256 amount);
script/DeployLocalMockRouter.s.sol:79:    function WETH() external view returns (address) {
script/DeployLocalMockRouter.s.sol:83:    function swapExactETHForTokensSupportingFeeOnTransferTokens(
script/DeployLocalMockRouter.s.sol:95:        emit MockSwapExactETHForTokens(msg.sender, path[1], to, msg.value, amountOutMin, deadline);
script/DeployLocalMockRouter.s.sol:98:    function sweepETH(
script/DeployLocalMockRouter.s.sol:105:        if (!ok) revert ETHTransferFailed();
script/DeployLocalMockRouter.s.sol:107:        emit ETHSwept(to, amount);
script/DeployLocalMockRouter.s.sol:111:contract DeployLocalMockRouter is Script {
script/DeployLocalMockRouter.s.sol:115:        LocalMockWETH weth;
script/DeployLocalMockRouter.s.sol:116:        LocalMockUniswapV2Router router;
script/DeployLocalMockRouter.s.sol:129:        deployed.weth = new LocalMockWETH();
script/DeployLocalMockRouter.s.sol:130:        deployed.router = new LocalMockUniswapV2Router(operator, address(deployed.weth));
script/DeployLocalMockRouter.s.sol:134:        _assertDeployed("LocalMockWETH", address(deployed.weth));
script/DeployLocalMockRouter.s.sol:135:        _assertDeployed("LocalMockUniswapV2Router", address(deployed.router));
script/DeployLocalMockRouter.s.sol:139:        console2.log("LOCAL_WETH=", address(deployed.weth));
script/DeployLocalMockRouter.s.sol:140:        console2.log("ROUTER=", address(deployed.router));
script/DeployLocalMockRouter.s.sol:154:        string memory objectKey = "localMockRouter";
script/DeployLocalMockRouter.s.sol:160:        string memory json = vm.serializeAddress(objectKey, "router", address(deployed.router));
script/DeployLocalMockRouter.s.sol:164:        vm.writeJson(json, string.concat("deployments/local-mock-router-", suffix));
script/DeployLocalMockRouter.s.sol:165:        vm.writeJson(json, string.concat("frontend/contracts/local-mock-router-", suffix));
script/DeployLocalMockRouter.s.sol:168:            "# Generated by script/DeployLocalMockRouter.s.sol\n",
script/DeployLocalMockRouter.s.sol:170:            "LOCAL_WETH=",
script/DeployLocalMockRouter.s.sol:174:            vm.toString(address(deployed.router)),
script/DeployLocalMockRouter.s.sol:178:        vm.writeFile(".env.local-router.generated", envOut);
script/DeployNSTLatticeCore.s.sol:8:import { CFTv2 } from "../src/CFTv2.sol";
script/DeployNSTLatticeCore.s.sol:9:import { RewardEscrow } from "../src/RewardEscrow.sol";
script/DeployNSTLatticeCore.s.sol:12:import { TreasuryRouter } from "../src/TreasuryRouter.sol";
script/DeployNSTLatticeCore.s.sol:13:import { YieldPool } from "../src/YieldPool.sol";
script/DeployNSTLatticeCore.s.sol:32:    error InvalidRouter(address router);
script/DeployNSTLatticeCore.s.sol:38:    string internal constant CFT_NAME = "Canada Forever Token";
script/DeployNSTLatticeCore.s.sol:39:    string internal constant CFT_SYMBOL = "CFT";
script/DeployNSTLatticeCore.s.sol:51:        address treasuryManager;
script/DeployNSTLatticeCore.s.sol:59:        address treasuryOperator;
script/DeployNSTLatticeCore.s.sol:64:        address rescueManager;
script/DeployNSTLatticeCore.s.sol:66:        address founderTreasury;
script/DeployNSTLatticeCore.s.sol:67:        address firstNationsTreasury;
script/DeployNSTLatticeCore.s.sol:68:        address virilityTreasury;
script/DeployNSTLatticeCore.s.sol:69:        address yieldPool;
script/DeployNSTLatticeCore.s.sol:70:        address buildingTreasury;
script/DeployNSTLatticeCore.s.sol:71:        address router;
script/DeployNSTLatticeCore.s.sol:77:        TreasuryRouter treasuryRouter;
script/DeployNSTLatticeCore.s.sol:78:        YieldPool yieldPool;
script/DeployNSTLatticeCore.s.sol:79:        CFTv2 cft;
script/DeployNSTLatticeCore.s.sol:81:        RewardEscrow rewardEscrow;
script/DeployNSTLatticeCore.s.sol:123:        cfg.treasuryManager = vm.envAddress("TREASURY_MANAGER");
script/DeployNSTLatticeCore.s.sol:132:        cfg.treasuryOperator = vm.envAddress("TREASURY_OPERATOR");
script/DeployNSTLatticeCore.s.sol:137:        cfg.rescueManager = vm.envAddress("RESCUE_MANAGER");
script/DeployNSTLatticeCore.s.sol:140:        cfg.founderTreasury = vm.envAddress("FOUNDER_TREASURY");
script/DeployNSTLatticeCore.s.sol:141:        cfg.firstNationsTreasury = vm.envAddress("FIRST_NATIONS_TREASURY");
script/DeployNSTLatticeCore.s.sol:142:        cfg.virilityTreasury = vm.envAddress("VIRILITY_TREASURY");
script/DeployNSTLatticeCore.s.sol:143:        cfg.yieldPool = vm.envOr("YIELD_POOL", address(0));
script/DeployNSTLatticeCore.s.sol:144:        cfg.buildingTreasury = vm.envAddress("BUILDING_TREASURY");
script/DeployNSTLatticeCore.s.sol:146:        cfg.router = vm.envAddress("ROUTER");
script/DeployNSTLatticeCore.s.sol:161:        _requireNonZero(cfg.treasuryManager, "TREASURY_MANAGER");
script/DeployNSTLatticeCore.s.sol:166:        _requireNonZero(cfg.founderTreasury, "FOUNDER_TREASURY");
script/DeployNSTLatticeCore.s.sol:167:        _requireNonZero(cfg.firstNationsTreasury, "FIRST_NATIONS_TREASURY");
script/DeployNSTLatticeCore.s.sol:168:        _requireNonZero(cfg.virilityTreasury, "VIRILITY_TREASURY");
script/DeployNSTLatticeCore.s.sol:169:        _requireNonZero(cfg.buildingTreasury, "BUILDING_TREASURY");
script/DeployNSTLatticeCore.s.sol:170:        _requireNonZero(cfg.router, "ROUTER");
script/DeployNSTLatticeCore.s.sol:177:        _requireNonZero(cfg.treasuryOperator, "TREASURY_OPERATOR");
script/DeployNSTLatticeCore.s.sol:182:        _requireNonZero(cfg.rescueManager, "RESCUE_MANAGER");
script/DeployNSTLatticeCore.s.sol:184:        if (cfg.router.code.length == 0) revert InvalidRouter(cfg.router);
script/DeployNSTLatticeCore.s.sol:205:        deployed.treasuryRouter =
script/DeployNSTLatticeCore.s.sol:206:            new TreasuryRouter(operator, operator, operator, operator, operator, operator);
script/DeployNSTLatticeCore.s.sol:208:        deployed.yieldPool =
script/DeployNSTLatticeCore.s.sol:209:            new YieldPool(operator, operator, operator, operator, operator, operator);
script/DeployNSTLatticeCore.s.sol:211:        _setSystemExemptIfNeeded(deployed.shield, cfg.founderTreasury);
script/DeployNSTLatticeCore.s.sol:212:        _setSystemExemptIfNeeded(deployed.shield, cfg.firstNationsTreasury);
script/DeployNSTLatticeCore.s.sol:213:        _setSystemExemptIfNeeded(deployed.shield, cfg.virilityTreasury);
script/DeployNSTLatticeCore.s.sol:214:        _setSystemExemptIfNeeded(deployed.shield, address(deployed.yieldPool));
script/DeployNSTLatticeCore.s.sol:215:        _setSystemExemptIfNeeded(deployed.shield, cfg.buildingTreasury);
script/DeployNSTLatticeCore.s.sol:217:        deployed.cft = new CFTv2(
script/DeployNSTLatticeCore.s.sol:222:            cfg.founderTreasury,
script/DeployNSTLatticeCore.s.sol:223:            cfg.firstNationsTreasury,
script/DeployNSTLatticeCore.s.sol:224:            cfg.virilityTreasury,
script/DeployNSTLatticeCore.s.sol:225:            address(deployed.yieldPool),
script/DeployNSTLatticeCore.s.sol:226:            cfg.buildingTreasury,
script/DeployNSTLatticeCore.s.sol:227:            CFT_NAME,
script/DeployNSTLatticeCore.s.sol:228:            CFT_SYMBOL
script/DeployNSTLatticeCore.s.sol:231:        deployed.yieldPool.setAssetAllowed(address(deployed.cft), true);
script/DeployNSTLatticeCore.s.sol:236:            cfg.founderTreasury,
script/DeployNSTLatticeCore.s.sol:238:            cfg.router,
script/DeployNSTLatticeCore.s.sol:240:            address(deployed.yieldPool),
script/DeployNSTLatticeCore.s.sol:250:        deployed.rewardEscrow = new RewardEscrow(
script/DeployNSTLatticeCore.s.sol:260:            address(deployed.rewardEscrow)
script/DeployNSTLatticeCore.s.sol:274:        bytes32 grantCreatorRole = deployed.rewardEscrow.GRANT_CREATOR_ROLE();
script/DeployNSTLatticeCore.s.sol:275:        deployed.rewardEscrow.grantRole(grantCreatorRole, address(deployed.referral));
script/DeployNSTLatticeCore.s.sol:278:        deployed.cft.setDirectMinter(address(deployed.rewardEscrow), true);
script/DeployNSTLatticeCore.s.sol:288:        _handoffCFT(deployed.cft, cfg, operator);
script/DeployNSTLatticeCore.s.sol:289:        _handoffRewardEscrow(deployed.rewardEscrow, cfg, operator);
script/DeployNSTLatticeCore.s.sol:292:        _handoffTreasuryRouter(deployed.treasuryRouter, cfg, operator);
script/DeployNSTLatticeCore.s.sol:293:        _handoffYieldPool(deployed.yieldPool, cfg, operator);
script/DeployNSTLatticeCore.s.sol:335:        _grantRoleIfMissing(target, nst.TREASURY_MANAGER_ROLE(), cfg.treasuryManager);
script/DeployNSTLatticeCore.s.sol:344:            target, nst.TREASURY_MANAGER_ROLE(), operator, cfg.treasuryManager
script/DeployNSTLatticeCore.s.sol:350:    function _handoffCFT(
script/DeployNSTLatticeCore.s.sol:351:        CFTv2 cft,
script/DeployNSTLatticeCore.s.sol:366:    function _handoffRewardEscrow(
script/DeployNSTLatticeCore.s.sol:367:        RewardEscrow rewardEscrow,
script/DeployNSTLatticeCore.s.sol:371:        IAccessControlLike target = IAccessControlLike(address(rewardEscrow));
script/DeployNSTLatticeCore.s.sol:373:        _grantRoleIfMissing(target, rewardEscrow.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:374:        _grantRoleIfMissing(target, rewardEscrow.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:375:        _grantRoleIfMissing(target, rewardEscrow.CONFIG_MANAGER_ROLE(), cfg.configManager);
script/DeployNSTLatticeCore.s.sol:376:        _grantRoleIfMissing(target, rewardEscrow.GRANT_CREATOR_ROLE(), cfg.initialGrantCreator);
script/DeployNSTLatticeCore.s.sol:378:        _revokeBootstrapIfDifferent(target, rewardEscrow.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:380:            target, rewardEscrow.CONFIG_MANAGER_ROLE(), operator, cfg.configManager
script/DeployNSTLatticeCore.s.sol:383:            target, rewardEscrow.GRANT_CREATOR_ROLE(), operator, cfg.initialGrantCreator
script/DeployNSTLatticeCore.s.sol:386:            target, rewardEscrow.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:479:    function _handoffTreasuryRouter(
script/DeployNSTLatticeCore.s.sol:480:        TreasuryRouter treasuryRouter,
script/DeployNSTLatticeCore.s.sol:484:        IAccessControlLike target = IAccessControlLike(address(treasuryRouter));
script/DeployNSTLatticeCore.s.sol:486:        _grantRoleIfMissing(target, treasuryRouter.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:487:        _grantRoleIfMissing(target, treasuryRouter.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:488:        _grantRoleIfMissing(target, treasuryRouter.ROUTE_MANAGER_ROLE(), cfg.routeManager);
script/DeployNSTLatticeCore.s.sol:489:        _grantRoleIfMissing(target, treasuryRouter.TREASURY_OPERATOR_ROLE(), cfg.treasuryOperator);
script/DeployNSTLatticeCore.s.sol:490:        _grantRoleIfMissing(target, treasuryRouter.ASSET_MANAGER_ROLE(), cfg.assetManager);
script/DeployNSTLatticeCore.s.sol:491:        _grantRoleIfMissing(target, treasuryRouter.EMERGENCY_MANAGER_ROLE(), cfg.emergencyManager);
script/DeployNSTLatticeCore.s.sol:493:        _revokeBootstrapIfDifferent(target, treasuryRouter.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:495:            target, treasuryRouter.ROUTE_MANAGER_ROLE(), operator, cfg.routeManager
script/DeployNSTLatticeCore.s.sol:498:            target, treasuryRouter.TREASURY_OPERATOR_ROLE(), operator, cfg.treasuryOperator
script/DeployNSTLatticeCore.s.sol:501:            target, treasuryRouter.ASSET_MANAGER_ROLE(), operator, cfg.assetManager
script/DeployNSTLatticeCore.s.sol:504:            target, treasuryRouter.EMERGENCY_MANAGER_ROLE(), operator, cfg.emergencyManager
script/DeployNSTLatticeCore.s.sol:507:            target, treasuryRouter.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:511:    function _handoffYieldPool(
script/DeployNSTLatticeCore.s.sol:512:        YieldPool yieldPool,
script/DeployNSTLatticeCore.s.sol:516:        IAccessControlLike target = IAccessControlLike(address(yieldPool));
script/DeployNSTLatticeCore.s.sol:518:        _grantRoleIfMissing(target, yieldPool.DEFAULT_ADMIN_ROLE(), cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:519:        _grantRoleIfMissing(target, yieldPool.PAUSER_ROLE(), cfg.pauser);
script/DeployNSTLatticeCore.s.sol:520:        _grantRoleIfMissing(target, yieldPool.ASSET_MANAGER_ROLE(), cfg.assetManager);
script/DeployNSTLatticeCore.s.sol:521:        _grantRoleIfMissing(target, yieldPool.GRANT_MANAGER_ROLE(), cfg.grantManager);
script/DeployNSTLatticeCore.s.sol:522:        _grantRoleIfMissing(target, yieldPool.CLAIM_MANAGER_ROLE(), cfg.claimManager);
script/DeployNSTLatticeCore.s.sol:523:        _grantRoleIfMissing(target, yieldPool.RESCUE_MANAGER_ROLE(), cfg.rescueManager);
script/DeployNSTLatticeCore.s.sol:525:        _revokeBootstrapIfDifferent(target, yieldPool.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:527:            target, yieldPool.ASSET_MANAGER_ROLE(), operator, cfg.assetManager
script/DeployNSTLatticeCore.s.sol:530:            target, yieldPool.GRANT_MANAGER_ROLE(), operator, cfg.grantManager
script/DeployNSTLatticeCore.s.sol:533:            target, yieldPool.CLAIM_MANAGER_ROLE(), operator, cfg.claimManager
script/DeployNSTLatticeCore.s.sol:536:            target, yieldPool.RESCUE_MANAGER_ROLE(), operator, cfg.rescueManager
script/DeployNSTLatticeCore.s.sol:539:            target, yieldPool.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:563:        vm.serializeAddress(objectKey, "treasuryManager", cfg.treasuryManager);
script/DeployNSTLatticeCore.s.sol:571:        vm.serializeAddress(objectKey, "treasuryOperator", cfg.treasuryOperator);
script/DeployNSTLatticeCore.s.sol:576:        vm.serializeAddress(objectKey, "rescueManager", cfg.rescueManager);
script/DeployNSTLatticeCore.s.sol:578:        vm.serializeAddress(objectKey, "router", cfg.router);
script/DeployNSTLatticeCore.s.sol:580:        vm.serializeAddress(objectKey, "founderTreasury", cfg.founderTreasury);
script/DeployNSTLatticeCore.s.sol:581:        vm.serializeAddress(objectKey, "firstNationsTreasury", cfg.firstNationsTreasury);
script/DeployNSTLatticeCore.s.sol:582:        vm.serializeAddress(objectKey, "virilityTreasury", cfg.virilityTreasury);
script/DeployNSTLatticeCore.s.sol:583:        vm.serializeAddress(objectKey, "configuredYieldPool", cfg.yieldPool);
script/DeployNSTLatticeCore.s.sol:584:        vm.serializeAddress(objectKey, "buildingTreasury", cfg.buildingTreasury);
script/DeployNSTLatticeCore.s.sol:588:        vm.serializeAddress(objectKey, "treasuryRouter", address(deployed.treasuryRouter));
script/DeployNSTLatticeCore.s.sol:589:        vm.serializeAddress(objectKey, "yieldPool", address(deployed.yieldPool));
script/DeployNSTLatticeCore.s.sol:592:        vm.serializeAddress(objectKey, "rewardEscrow", address(deployed.rewardEscrow));
test/integration/ReferralMintFlow.t.sol:9:import { CFTv2 } from "../../src/CFTv2.sol";
test/integration/ReferralMintFlow.t.sol:10:import { RewardEscrow } from "../../src/RewardEscrow.sol";
test/integration/ReferralMintFlow.t.sol:27:contract MockRouterReferralFlow {
test/integration/ReferralMintFlow.t.sol:38:    function WETH() external view returns (address) {
test/integration/ReferralMintFlow.t.sol:42:    function swapExactETHForTokensSupportingFeeOnTransferTokens(
test/integration/ReferralMintFlow.t.sol:56:    CFTv2 internal cft;
test/integration/ReferralMintFlow.t.sol:57:    RewardEscrow internal rewardEscrow;
test/integration/ReferralMintFlow.t.sol:61:    MockRouterReferralFlow internal router;
test/integration/ReferralMintFlow.t.sol:71:    address internal founderTreasury;
test/integration/ReferralMintFlow.t.sol:72:    address internal firstNationsTreasury;
test/integration/ReferralMintFlow.t.sol:73:    address internal virilityTreasury;
test/integration/ReferralMintFlow.t.sol:74:    address internal yieldPool;
test/integration/ReferralMintFlow.t.sol:75:    address internal buildingTreasury;
test/integration/ReferralMintFlow.t.sol:80:    address internal treasuryManager;
test/integration/ReferralMintFlow.t.sol:100:        founderTreasury = makeAddr("founderTreasury");
test/integration/ReferralMintFlow.t.sol:101:        firstNationsTreasury = makeAddr("firstNationsTreasury");
test/integration/ReferralMintFlow.t.sol:102:        virilityTreasury = makeAddr("virilityTreasury");
test/integration/ReferralMintFlow.t.sol:103:        yieldPool = makeAddr("yieldPool");
test/integration/ReferralMintFlow.t.sol:104:        buildingTreasury = makeAddr("buildingTreasury");
test/integration/ReferralMintFlow.t.sol:109:        treasuryManager = makeAddr("treasuryManager");
test/integration/ReferralMintFlow.t.sol:127:        weth = new MockERC20ReferralFlow("Wrapped Ether", "WETH");
test/integration/ReferralMintFlow.t.sol:128:        router = new MockRouterReferralFlow(address(weth));
test/integration/ReferralMintFlow.t.sol:130:        cft = new CFTv2(
test/integration/ReferralMintFlow.t.sol:135:            founderTreasury,
test/integration/ReferralMintFlow.t.sol:136:            firstNationsTreasury,
test/integration/ReferralMintFlow.t.sol:137:            virilityTreasury,
test/integration/ReferralMintFlow.t.sol:138:            yieldPool,
test/integration/ReferralMintFlow.t.sol:139:            buildingTreasury,
test/integration/ReferralMintFlow.t.sol:141:            "CFT"
test/integration/ReferralMintFlow.t.sol:144:        _setSystemExempt(founderTreasury, true);
test/integration/ReferralMintFlow.t.sol:145:        _setSystemExempt(firstNationsTreasury, true);
test/integration/ReferralMintFlow.t.sol:146:        _setSystemExempt(virilityTreasury, true);
test/integration/ReferralMintFlow.t.sol:147:        _setSystemExempt(yieldPool, true);
test/integration/ReferralMintFlow.t.sol:148:        _setSystemExempt(buildingTreasury, true);
test/integration/ReferralMintFlow.t.sol:153:            founderTreasury,
test/integration/ReferralMintFlow.t.sol:155:            address(router),
test/integration/ReferralMintFlow.t.sol:157:            yieldPool,
test/integration/ReferralMintFlow.t.sol:161:            treasuryManager,
test/integration/ReferralMintFlow.t.sol:170:        rewardEscrow = new RewardEscrow(
test/integration/ReferralMintFlow.t.sol:175:            admin, pauser, configManager, address(shield), address(cft), address(rewardEscrow)
test/integration/ReferralMintFlow.t.sol:178:        bytes32 grantCreatorRole = rewardEscrow.GRANT_CREATOR_ROLE();
test/integration/ReferralMintFlow.t.sol:180:        rewardEscrow.grantRole(grantCreatorRole, address(referral));
test/integration/ReferralMintFlow.t.sol:186:        cft.setDirectMinter(address(rewardEscrow), true);
test/integration/ReferralMintFlow.t.sol:281:        assertEq(referral.escrowPairsCreated(sponsor), 0);
test/integration/ReferralMintFlow.t.sol:285:    function test_flow_second_completed_pair_creates_escrow_and_claims() public {
test/integration/ReferralMintFlow.t.sol:296:        assertEq(referral.escrowPairsCreated(sponsor), 1);
test/integration/ReferralMintFlow.t.sol:298:        assertEq(rewardEscrow.nextGrantId(), 1);
test/integration/ReferralMintFlow.t.sol:301:            rewardEscrow.getGrant(1);
test/integration/ReferralMintFlow.t.sol:311:        uint256 claimedAmount = rewardEscrow.claim(1);
test/integration/ReferralMintFlow.t.sol:315:        assertTrue(rewardEscrow.isClaimed(1));
test/integration/ReferralMintFlow.t.sol:336:    function test_flow_banned_sponsor_cannot_claim_escrow_reward() public {
test/integration/ReferralMintFlow.t.sol:344:        (,, uint64 unlockAt,) = rewardEscrow.getGrant(1);
test/integration/ReferralMintFlow.t.sol:351:        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.BannedAccount.selector, sponsor));
test/integration/ReferralMintFlow.t.sol:352:        rewardEscrow.claim(1);
test/integration/ReferralMintFlow.t.sol:355:        assertFalse(rewardEscrow.isClaimed(1));
test/integration/VaultMembershipFlow.t.sol:32:contract MockRouterVaultMembershipFlow {
test/integration/VaultMembershipFlow.t.sol:33:    address public immutable WETH;
test/integration/VaultMembershipFlow.t.sol:38:        WETH = weth_;
test/integration/VaultMembershipFlow.t.sol:43:    function swapExactETHForTokensSupportingFeeOnTransferTokens(
test/integration/VaultMembershipFlow.t.sol:68:    MockRouterVaultMembershipFlow internal router;
test/integration/VaultMembershipFlow.t.sol:77:    address internal founderTreasury;
test/integration/VaultMembershipFlow.t.sol:78:    address internal yieldPool;
test/integration/VaultMembershipFlow.t.sol:83:    address internal treasuryManager;
test/integration/VaultMembershipFlow.t.sol:104:        founderTreasury = makeAddr("founderTreasury");
test/integration/VaultMembershipFlow.t.sol:105:        yieldPool = makeAddr("yieldPool");
test/integration/VaultMembershipFlow.t.sol:110:        treasuryManager = makeAddr("treasuryManager");
test/integration/VaultMembershipFlow.t.sol:128:        weth = new MockERC20VaultMembershipFlow("Wrapped Ether", "WETH");
test/integration/VaultMembershipFlow.t.sol:129:        cft = new MockERC20VaultMembershipFlow("Canada Forever Token", "CFT");
test/integration/VaultMembershipFlow.t.sol:130:        router = new MockRouterVaultMembershipFlow(address(weth));
test/integration/VaultMembershipFlow.t.sol:135:            founderTreasury,
test/integration/VaultMembershipFlow.t.sol:137:            address(router),
test/integration/VaultMembershipFlow.t.sol:139:            yieldPool,
test/integration/VaultMembershipFlow.t.sol:143:            treasuryManager,
test/integration/VettedMintFlow.t.sol:24:contract MockRouterIntegration {
test/integration/VettedMintFlow.t.sol:35:    function WETH() external view returns (address) {
test/integration/VettedMintFlow.t.sol:39:    function swapExactETHForTokensSupportingFeeOnTransferTokens(
test/integration/VettedMintFlow.t.sol:52:    MockRouterIntegration internal router;
test/integration/VettedMintFlow.t.sol:61:    address internal founderTreasury;
test/integration/VettedMintFlow.t.sol:62:    address internal yieldPool;
test/integration/VettedMintFlow.t.sol:67:    address internal treasuryManager;
test/integration/VettedMintFlow.t.sol:81:        founderTreasury = makeAddr("founderTreasury");
test/integration/VettedMintFlow.t.sol:82:        yieldPool = makeAddr("yieldPool");
test/integration/VettedMintFlow.t.sol:87:        treasuryManager = makeAddr("treasuryManager");
test/integration/VettedMintFlow.t.sol:100:        weth = new MockERC20Integration("Wrapped Ether", "WETH");
test/integration/VettedMintFlow.t.sol:101:        cft = new MockERC20Integration("Canada Forever Token", "CFT");
test/integration/VettedMintFlow.t.sol:102:        router = new MockRouterIntegration(address(weth));
test/integration/VettedMintFlow.t.sol:107:            founderTreasury,
test/integration/VettedMintFlow.t.sol:109:            address(router),
test/integration/VettedMintFlow.t.sol:111:            yieldPool,
test/integration/VettedMintFlow.t.sol:115:            treasuryManager,
test/integration/VettedMintFlow.t.sol:159:        uint256 founderBefore = founderTreasury.balance;
test/integration/VettedMintFlow.t.sol:172:        assertEq(founderTreasury.balance - founderBefore, nst.founderSharePerMint());
test/integration/VettedMintFlow.t.sol:173:        assertEq(nst.pendingYieldETH(), nst.yieldSharePerMint());
test/integration/VettedMintFlow.t.sol:174:        assertEq(address(nst).balance, nst.yieldSharePerMint());
test/unit/CFTv2.t.sol:6:import { CFTv2 } from "../../src/CFTv2.sol";
test/unit/CFTv2.t.sol:8:contract MockShieldRegistryCFT {
test/unit/CFTv2.t.sol:53:contract CFTv2Test is Test {
test/unit/CFTv2.t.sol:60:    CFTv2 internal cft;
test/unit/CFTv2.t.sol:61:    MockShieldRegistryCFT internal shield;
test/unit/CFTv2.t.sol:67:    address internal founderTreasury;
test/unit/CFTv2.t.sol:68:    address internal firstNationsTreasury;
test/unit/CFTv2.t.sol:69:    address internal virilityTreasury;
test/unit/CFTv2.t.sol:70:    address internal yieldPool;
test/unit/CFTv2.t.sol:71:    address internal buildingTreasury;
test/unit/CFTv2.t.sol:74:    address internal treasuryMinter;
test/unit/CFTv2.t.sol:86:        founderTreasury = makeAddr("founderTreasury");
test/unit/CFTv2.t.sol:87:        firstNationsTreasury = makeAddr("firstNationsTreasury");
test/unit/CFTv2.t.sol:88:        virilityTreasury = makeAddr("virilityTreasury");
test/unit/CFTv2.t.sol:89:        yieldPool = makeAddr("yieldPool");
test/unit/CFTv2.t.sol:90:        buildingTreasury = makeAddr("buildingTreasury");
test/unit/CFTv2.t.sol:93:        treasuryMinter = makeAddr("treasuryMinter");
test/unit/CFTv2.t.sol:100:        shield = new MockShieldRegistryCFT();
test/unit/CFTv2.t.sol:102:        shield.setSystemExempt(founderTreasury, true);
test/unit/CFTv2.t.sol:103:        shield.setSystemExempt(firstNationsTreasury, true);
test/unit/CFTv2.t.sol:104:        shield.setSystemExempt(virilityTreasury, true);
test/unit/CFTv2.t.sol:105:        shield.setSystemExempt(yieldPool, true);
test/unit/CFTv2.t.sol:106:        shield.setSystemExempt(buildingTreasury, true);
test/unit/CFTv2.t.sol:116:    ) internal returns (CFTv2 deployed) {
test/unit/CFTv2.t.sol:117:        deployed = new CFTv2(
test/unit/CFTv2.t.sol:122:            founderTreasury,
test/unit/CFTv2.t.sol:123:            firstNationsTreasury,
test/unit/CFTv2.t.sol:124:            virilityTreasury,
test/unit/CFTv2.t.sol:125:            yieldPool,
test/unit/CFTv2.t.sol:126:            buildingTreasury,
test/unit/CFTv2.t.sol:128:            "CFT"
test/unit/CFTv2.t.sol:140:    function _setTreasuryMinter(
test/unit/CFTv2.t.sol:145:        cft.setTreasuryMinter(account, allowed);
test/unit/CFTv2.t.sol:175:        assertEq(cft.FOUNDER_TREASURY(), founderTreasury);
test/unit/CFTv2.t.sol:176:        assertEq(cft.FIRST_NATIONS_TREASURY(), firstNationsTreasury);
test/unit/CFTv2.t.sol:177:        assertEq(cft.VIRILITY_TREASURY(), virilityTreasury);
test/unit/CFTv2.t.sol:178:        assertEq(cft.YIELD_POOL(), yieldPool);
test/unit/CFTv2.t.sol:179:        assertEq(cft.BUILDING_TREASURY(), buildingTreasury);
test/unit/CFTv2.t.sol:182:        assertEq(cft.balanceOf(founderTreasury), FOUNDER_GENESIS);
test/unit/CFTv2.t.sol:183:        assertEq(cft.balanceOf(firstNationsTreasury), FIRST_NATIONS_GENESIS);
test/unit/CFTv2.t.sol:184:        assertEq(cft.balanceOf(virilityTreasury), VIRILITY_GENESIS);
test/unit/CFTv2.t.sol:185:        assertEq(cft.balanceOf(yieldPool), YIELD_POOL_GENESIS);
test/unit/CFTv2.t.sol:186:        assertEq(cft.balanceOf(buildingTreasury), BUILDING_TREASURY_GENESIS);
test/unit/CFTv2.t.sol:190:        MockShieldRegistryCFT freshShield = new MockShieldRegistryCFT();
test/unit/CFTv2.t.sol:192:        CFTv2 fresh = _deployToken(address(freshShield));
test/unit/CFTv2.t.sol:195:        assertEq(fresh.balanceOf(founderTreasury), FOUNDER_GENESIS);
test/unit/CFTv2.t.sol:196:        assertEq(fresh.balanceOf(firstNationsTreasury), FIRST_NATIONS_GENESIS);
test/unit/CFTv2.t.sol:197:        assertEq(fresh.balanceOf(virilityTreasury), VIRILITY_GENESIS);
test/unit/CFTv2.t.sol:198:        assertEq(fresh.balanceOf(yieldPool), YIELD_POOL_GENESIS);
test/unit/CFTv2.t.sol:199:        assertEq(fresh.balanceOf(buildingTreasury), BUILDING_TREASURY_GENESIS);
test/unit/CFTv2.t.sol:203:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:204:        new CFTv2(
test/unit/CFTv2.t.sol:209:            founderTreasury,
test/unit/CFTv2.t.sol:210:            firstNationsTreasury,
test/unit/CFTv2.t.sol:211:            virilityTreasury,
test/unit/CFTv2.t.sol:212:            yieldPool,
test/unit/CFTv2.t.sol:213:            buildingTreasury,
test/unit/CFTv2.t.sol:215:            "CFT"
test/unit/CFTv2.t.sol:218:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:219:        new CFTv2(
test/unit/CFTv2.t.sol:224:            founderTreasury,
test/unit/CFTv2.t.sol:225:            firstNationsTreasury,
test/unit/CFTv2.t.sol:226:            virilityTreasury,
test/unit/CFTv2.t.sol:227:            yieldPool,
test/unit/CFTv2.t.sol:228:            buildingTreasury,
test/unit/CFTv2.t.sol:230:            "CFT"
test/unit/CFTv2.t.sol:235:        vm.expectRevert(CFTv2.InvalidRoleHolder.selector);
test/unit/CFTv2.t.sol:236:        new CFTv2(
test/unit/CFTv2.t.sol:241:            founderTreasury,
test/unit/CFTv2.t.sol:242:            firstNationsTreasury,
test/unit/CFTv2.t.sol:243:            virilityTreasury,
test/unit/CFTv2.t.sol:244:            yieldPool,
test/unit/CFTv2.t.sol:245:            buildingTreasury,
test/unit/CFTv2.t.sol:247:            "CFT"
test/unit/CFTv2.t.sol:254:        vm.expectRevert(abi.encodeWithSelector(CFTv2.InvalidDependency.selector, fake));
test/unit/CFTv2.t.sol:255:        new CFTv2(
test/unit/CFTv2.t.sol:260:            founderTreasury,
test/unit/CFTv2.t.sol:261:            firstNationsTreasury,
test/unit/CFTv2.t.sol:262:            virilityTreasury,
test/unit/CFTv2.t.sol:263:            yieldPool,
test/unit/CFTv2.t.sol:264:            buildingTreasury,
test/unit/CFTv2.t.sol:266:            "CFT"
test/unit/CFTv2.t.sol:272:        assertTrue(cft.isTransferParticipantAllowed(founderTreasury));
test/unit/CFTv2.t.sol:286:        cft.setTreasuryMinter(treasuryMinter, true);
test/unit/CFTv2.t.sol:287:        assertTrue(cft.hasRole(cft.TREASURY_MINT_ROLE(), treasuryMinter));
test/unit/CFTv2.t.sol:299:        cft.setTreasuryMinter(outsider, true);
test/unit/CFTv2.t.sol:308:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:312:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:313:        cft.setTreasuryMinter(address(0), true);
test/unit/CFTv2.t.sol:316:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:320:    function test_preview_treasury_split() public view {
test/unit/CFTv2.t.sol:322:            uint256 founderAmount,
test/unit/CFTv2.t.sol:325:            uint256 yieldPoolAmount,
test/unit/CFTv2.t.sol:326:            uint256 buildingTreasuryAmount
test/unit/CFTv2.t.sol:327:        ) = cft.previewTreasurySplit(1000 ether);
test/unit/CFTv2.t.sol:329:        assertEq(founderAmount, 200 ether);
test/unit/CFTv2.t.sol:332:        assertEq(yieldPoolAmount, 50 ether);
test/unit/CFTv2.t.sol:333:        assertEq(buildingTreasuryAmount, 500 ether);
test/unit/CFTv2.t.sol:336:    function test_preview_treasury_split_reverts_on_zero_amount() public {
test/unit/CFTv2.t.sol:337:        vm.expectRevert(CFTv2.InvalidAmount.selector);
test/unit/CFTv2.t.sol:338:        cft.previewTreasurySplit(0);
test/unit/CFTv2.t.sol:355:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
test/unit/CFTv2.t.sol:363:        vm.expectRevert(CFTv2.InvalidAmount.selector);
test/unit/CFTv2.t.sol:367:    function test_treasury_split_mint_success() public {
test/unit/CFTv2.t.sol:368:        _setTreasuryMinter(treasuryMinter, true);
test/unit/CFTv2.t.sol:370:        uint256 founderBefore = cft.balanceOf(founderTreasury);
test/unit/CFTv2.t.sol:371:        uint256 firstNationsBefore = cft.balanceOf(firstNationsTreasury);
test/unit/CFTv2.t.sol:372:        uint256 virilityBefore = cft.balanceOf(virilityTreasury);
test/unit/CFTv2.t.sol:373:        uint256 yieldBefore = cft.balanceOf(yieldPool);
test/unit/CFTv2.t.sol:374:        uint256 buildingBefore = cft.balanceOf(buildingTreasury);
test/unit/CFTv2.t.sol:376:        vm.prank(treasuryMinter);
test/unit/CFTv2.t.sol:378:            uint256 founderAmount,
test/unit/CFTv2.t.sol:381:            uint256 yieldPoolAmount,
test/unit/CFTv2.t.sol:382:            uint256 buildingTreasuryAmount
test/unit/CFTv2.t.sol:383:        ) = cft.mintTreasurySplit(1000 ether);
test/unit/CFTv2.t.sol:385:        assertEq(founderAmount, 200 ether);
test/unit/CFTv2.t.sol:388:        assertEq(yieldPoolAmount, 50 ether);
test/unit/CFTv2.t.sol:389:        assertEq(buildingTreasuryAmount, 500 ether);
test/unit/CFTv2.t.sol:391:        assertEq(cft.balanceOf(founderTreasury), founderBefore + founderAmount);
test/unit/CFTv2.t.sol:392:        assertEq(cft.balanceOf(firstNationsTreasury), firstNationsBefore + firstNationsAmount);
test/unit/CFTv2.t.sol:393:        assertEq(cft.balanceOf(virilityTreasury), virilityBefore + virilityAmount);
test/unit/CFTv2.t.sol:394:        assertEq(cft.balanceOf(yieldPool), yieldBefore + yieldPoolAmount);
test/unit/CFTv2.t.sol:395:        assertEq(cft.balanceOf(buildingTreasury), buildingBefore + buildingTreasuryAmount);
test/unit/CFTv2.t.sol:398:    function test_treasury_split_mint_reverts_on_zero_amount() public {
test/unit/CFTv2.t.sol:399:        _setTreasuryMinter(treasuryMinter, true);
test/unit/CFTv2.t.sol:401:        vm.prank(treasuryMinter);
test/unit/CFTv2.t.sol:402:        vm.expectRevert(CFTv2.InvalidAmount.selector);
test/unit/CFTv2.t.sol:403:        cft.mintTreasurySplit(0);
test/unit/CFTv2.t.sol:420:        vm.expectRevert(CFTv2.InvalidAmount.selector);
test/unit/CFTv2.t.sol:439:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:458:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
test/unit/CFTv2.t.sol:467:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, alice));
test/unit/CFTv2.t.sol:492:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
test/unit/CFTv2.t.sol:503:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
test/unit/NSTSBT.t.sol:54:interface IERC20ForMockRouter {
test/unit/NSTSBT.t.sol:61:contract MockRouter {
test/unit/NSTSBT.t.sol:83:    function WETH() external view returns (address) {
test/unit/NSTSBT.t.sol:103:    function swapExactETHForTokensSupportingFeeOnTransferTokens(
test/unit/NSTSBT.t.sol:121:            bool ok = IERC20ForMockRouter(outputToken).transfer(to, amountOutMin);
test/unit/NSTSBT.t.sol:127:contract RevertingETHReceiver {
test/unit/NSTSBT.t.sol:129:        revert("ETH_REJECTED");
test/unit/NSTSBT.t.sol:133:interface IERC20ForMockYieldPool {
test/unit/NSTSBT.t.sol:144:contract MockYieldPoolForNSTSBT {
test/unit/NSTSBT.t.sol:160:        uint256 beforeBalance = IERC20ForMockYieldPool(asset).balanceOf(address(this));
test/unit/NSTSBT.t.sol:161:        bool ok = IERC20ForMockYieldPool(asset).transferFrom(msg.sender, address(this), amount);
test/unit/NSTSBT.t.sol:164:        received = IERC20ForMockYieldPool(asset).balanceOf(address(this)) - beforeBalance;
test/unit/NSTSBT.t.sol:184:    MockRouter internal router;
test/unit/NSTSBT.t.sol:188:    address internal founder;
test/unit/NSTSBT.t.sol:189:    address internal yieldPool;
test/unit/NSTSBT.t.sol:190:    MockYieldPoolForNSTSBT internal yieldPoolMock;
test/unit/NSTSBT.t.sol:194:    address internal treasuryManager;
test/unit/NSTSBT.t.sol:204:        founder = makeAddr("founder");
test/unit/NSTSBT.t.sol:205:        yieldPoolMock = new MockYieldPoolForNSTSBT();
test/unit/NSTSBT.t.sol:206:        yieldPool = address(yieldPoolMock);
test/unit/NSTSBT.t.sol:210:        treasuryManager = makeAddr("treasuryManager");
test/unit/NSTSBT.t.sol:218:        weth = new MockERC20("Wrapped Ether", "WETH");
test/unit/NSTSBT.t.sol:219:        cft = new MockERC20("Canada Forever Token", "CFT");
test/unit/NSTSBT.t.sol:220:        router = new MockRouter(address(weth));
test/unit/NSTSBT.t.sol:221:        router.setOutputToken(address(cft));
test/unit/NSTSBT.t.sol:222:        cft.mint(address(router), 100 ether);
test/unit/NSTSBT.t.sol:225:        nst = _deployNST(founder);
test/unit/NSTSBT.t.sol:234:        address founderWallet
test/unit/NSTSBT.t.sol:239:            founderWallet,
test/unit/NSTSBT.t.sol:241:            address(router),
test/unit/NSTSBT.t.sol:243:            yieldPool,
test/unit/NSTSBT.t.sol:247:            treasuryManager,
test/unit/NSTSBT.t.sol:257:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:258:        nst.proposeYieldSwapMinOut(newMinOut);
test/unit/NSTSBT.t.sol:262:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:263:        nst.applyYieldSwapMinOut();
test/unit/NSTSBT.t.sol:278:        assertTrue(nst.hasRole(nst.TREASURY_MANAGER_ROLE(), treasuryManager));
test/unit/NSTSBT.t.sol:282:        assertEq(nst.FOUNDER_WALLET(), founder);
test/unit/NSTSBT.t.sol:284:        assertEq(nst.CFT(), address(cft));
test/unit/NSTSBT.t.sol:285:        assertEq(nst.YIELD_POOL(), yieldPool);
test/unit/NSTSBT.t.sol:286:        assertEq(address(nst.ROUTER()), address(router));
test/unit/NSTSBT.t.sol:287:        assertEq(nst.WETH(), address(weth));
test/unit/NSTSBT.t.sol:305:            founder,
test/unit/NSTSBT.t.sol:307:            address(router),
test/unit/NSTSBT.t.sol:309:            yieldPool,
test/unit/NSTSBT.t.sol:313:            treasuryManager,
test/unit/NSTSBT.t.sol:329:            founder,
test/unit/NSTSBT.t.sol:331:            address(router),
test/unit/NSTSBT.t.sol:333:            yieldPool,
test/unit/NSTSBT.t.sol:337:            treasuryManager,
test/unit/NSTSBT.t.sol:349:            founder,
test/unit/NSTSBT.t.sol:351:            address(router),
test/unit/NSTSBT.t.sol:353:            yieldPool,
test/unit/NSTSBT.t.sol:357:            treasuryManager,
test/unit/NSTSBT.t.sol:387:    function test_mint_success_with_yield_deferred_when_min_out_zero() public {
test/unit/NSTSBT.t.sol:390:        uint256 founderBefore = founder.balance;
test/unit/NSTSBT.t.sol:400:        assertEq(founder.balance - founderBefore, FOUNDER_SHARE);
test/unit/NSTSBT.t.sol:401:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:403:        assertEq(nst.sweepableETH(), 0);
test/unit/NSTSBT.t.sol:431:        uint256 founderBefore = founder.balance;
test/unit/NSTSBT.t.sol:436:        assertEq(founder.balance - founderBefore, FOUNDER_SHARE);
test/unit/NSTSBT.t.sol:437:        assertEq(nst.pendingYieldETH(), 0);
test/unit/NSTSBT.t.sol:440:        assertEq(router.lastAmountIn(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:441:        assertEq(router.lastMinOut(), 123);
test/unit/NSTSBT.t.sol:442:        assertEq(router.lastTo(), address(nst));
test/unit/NSTSBT.t.sol:443:        assertEq(cft.balanceOf(yieldPool), router.lastMinOut());
test/unit/NSTSBT.t.sol:444:        assertEq(yieldPoolMock.totalDeposited(address(cft)), router.lastMinOut());
test/unit/NSTSBT.t.sol:445:        assertEq(yieldPoolMock.lastFrom(), address(nst));
test/unit/NSTSBT.t.sol:446:        assertEq(router.lastPathLength(), 2);
test/unit/NSTSBT.t.sol:447:        assertEq(router.lastPath(0), address(weth));
test/unit/NSTSBT.t.sol:448:        assertEq(router.lastPath(1), address(cft));
test/unit/NSTSBT.t.sol:451:    function test_mint_when_live_swap_fails_defers_yield() public {
test/unit/NSTSBT.t.sol:453:        router.setShouldRevert(true);
test/unit/NSTSBT.t.sol:460:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:462:        assertEq(router.lastAmountIn(), 0);
test/unit/NSTSBT.t.sol:465:    function test_process_pending_yield_eth_success() public {
test/unit/NSTSBT.t.sol:468:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:474:        nst.processPendingYieldETH(YIELD_SHARE);
test/unit/NSTSBT.t.sol:476:        assertEq(nst.pendingYieldETH(), 0);
test/unit/NSTSBT.t.sol:478:        assertEq(router.lastAmountIn(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:479:        assertEq(router.lastMinOut(), 777);
test/unit/NSTSBT.t.sol:482:    function test_process_pending_yield_eth_reverts_when_disabled() public {
test/unit/NSTSBT.t.sol:486:        vm.expectRevert(NSTSBT.YieldSwapDisabled.selector);
test/unit/NSTSBT.t.sol:487:        nst.processPendingYieldETH(YIELD_SHARE);
test/unit/NSTSBT.t.sol:490:    function test_process_pending_yield_eth_reverts_when_amount_zero() public {
test/unit/NSTSBT.t.sol:496:        nst.processPendingYieldETH(0);
test/unit/NSTSBT.t.sol:499:    function test_process_pending_yield_eth_reverts_when_amount_exceeds_pending() public {
test/unit/NSTSBT.t.sol:509:        nst.processPendingYieldETH(YIELD_SHARE + 1);
test/unit/NSTSBT.t.sol:512:    function test_process_pending_yield_eth_reverts_when_retry_swap_fails() public {
test/unit/NSTSBT.t.sol:515:        router.setShouldRevert(true);
test/unit/NSTSBT.t.sol:519:        nst.processPendingYieldETH(YIELD_SHARE);
test/unit/NSTSBT.t.sol:521:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:616:    function test_yield_swap_min_out_timelock() public {
test/unit/NSTSBT.t.sol:617:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:618:        nst.proposeYieldSwapMinOut(500);
test/unit/NSTSBT.t.sol:620:        (uint256 value, uint256 executeAfter) = nst.pendingYieldSwapMinOutState();
test/unit/NSTSBT.t.sol:624:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:628:        nst.applyYieldSwapMinOut();
test/unit/NSTSBT.t.sol:632:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:633:        nst.applyYieldSwapMinOut();
test/unit/NSTSBT.t.sol:635:        assertEq(nst.yieldSwapMinOut(), 500);
test/unit/NSTSBT.t.sol:637:        (uint256 clearedValue, uint256 clearedExecuteAfter) = nst.pendingYieldSwapMinOutState();
test/unit/NSTSBT.t.sol:642:    function test_cancel_yield_swap_min_out_proposal() public {
test/unit/NSTSBT.t.sol:643:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:644:        nst.proposeYieldSwapMinOut(500);
test/unit/NSTSBT.t.sol:646:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:647:        nst.cancelYieldSwapMinOutProposal();
test/unit/NSTSBT.t.sol:649:        (uint256 value, uint256 executeAfter) = nst.pendingYieldSwapMinOutState();
test/unit/NSTSBT.t.sol:653:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:655:        nst.applyYieldSwapMinOut();
test/unit/NSTSBT.t.sol:658:    function test_sweep_eth_cannot_sweep_reserved_pending_yield() public {
test/unit/NSTSBT.t.sol:661:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:663:        nst.sweepETH(payable(bob), 1 wei);
test/unit/NSTSBT.t.sol:666:    function test_sweep_eth_allows_unreserved_eth() public {
test/unit/NSTSBT.t.sol:670:        vm.deal(address(nst), nst.pendingYieldETH() + forcedExtra);
test/unit/NSTSBT.t.sol:672:        assertEq(nst.sweepableETH(), forcedExtra);
test/unit/NSTSBT.t.sol:676:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:677:        nst.sweepETH(payable(bob), forcedExtra);
test/unit/NSTSBT.t.sol:680:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:681:        assertEq(nst.sweepableETH(), 0);
test/unit/NSTSBT.t.sol:684:    function test_rescue_erc20() public {
test/unit/NSTSBT.t.sol:690:        vm.prank(treasuryManager);
test/unit/NSTSBT.t.sol:691:        nst.rescueERC20(address(cft), bob, amount);
test/unit/NSTSBT.t.sol:733:        vm.expectRevert(NSTSBT.FounderTokenProtected.selector);
test/unit/NSTSBT.t.sol:756:    function test_founder_payout_failure_reverts_mint() public {
test/unit/NSTSBT.t.sol:757:        RevertingETHReceiver badFounder = new RevertingETHReceiver();
test/unit/NSTSBT.t.sol:762:            address(badFounder),
test/unit/NSTSBT.t.sol:764:            address(router),
test/unit/NSTSBT.t.sol:766:            yieldPool,
test/unit/NSTSBT.t.sol:770:            treasuryManager,
test/unit/NSTSBT.t.sol:779:        vm.expectRevert(NSTSBT.ETHTransferFailed.selector);
test/unit/ReferralController.t.sol:67:contract MockCFTMintable {
test/unit/ReferralController.t.sol:80:contract MockRewardEscrow {
test/unit/ReferralController.t.sol:103:    MockCFTMintable internal cft;
test/unit/ReferralController.t.sol:104:    MockRewardEscrow internal escrow;
test/unit/ReferralController.t.sol:130:        cft = new MockCFTMintable();
test/unit/ReferralController.t.sol:131:        escrow = new MockRewardEscrow();
test/unit/ReferralController.t.sol:135:        referral = _deploy(address(cft), address(escrow));
test/unit/ReferralController.t.sol:140:        address rewardEscrow
test/unit/ReferralController.t.sol:143:            admin, pauser, configManager, address(shield), rewardToken, rewardEscrow
test/unit/ReferralController.t.sol:182:        assertEq(address(referral.rewardEscrow()), address(escrow));
test/unit/ReferralController.t.sol:192:            address(0), pauser, configManager, address(shield), address(cft), address(escrow)
test/unit/ReferralController.t.sol:197:            admin, pauser, configManager, address(0), address(cft), address(escrow)
test/unit/ReferralController.t.sol:204:            admin, address(0), configManager, address(shield), address(cft), address(escrow)
test/unit/ReferralController.t.sol:212:        new ReferralController(admin, pauser, configManager, fake, address(cft), address(escrow));
test/unit/ReferralController.t.sol:325:        assertEq(referral.escrowPairsCreated(sponsor), 0);
test/unit/ReferralController.t.sol:328:        assertEq(escrow.nextGrantId(), 0);
test/unit/ReferralController.t.sol:333:        assertFalse(referral.nextPairWillBeEscrowed(sponsor));
test/unit/ReferralController.t.sol:342:        assertEq(referral.escrowPairsCreated(sponsor), 0);
test/unit/ReferralController.t.sol:346:        assertEq(escrow.nextGrantId(), 0);
test/unit/ReferralController.t.sol:350:        assertTrue(referral.nextPairWillBeEscrowed(sponsor));
test/unit/ReferralController.t.sol:353:    function test_fourth_successful_referral_creates_escrow_grant() public {
test/unit/ReferralController.t.sol:364:        assertEq(referral.escrowPairsCreated(sponsor), 1);
test/unit/ReferralController.t.sol:367:        assertEq(escrow.nextGrantId(), 1);
test/unit/ReferralController.t.sol:369:        (address beneficiary, uint256 amount, uint64 unlockAt) = escrow.grants(1);
test/unit/ReferralController.t.sol:400:        ReferralController noToken = _deploy(address(0), address(escrow));
test/unit/ReferralController.t.sol:417:    function test_record_successful_mint_reverts_when_reward_escrow_not_configured() public {
test/unit/ReferralController.t.sol:418:        ReferralController noEscrow = _deploy(address(cft), address(0));
test/unit/ReferralController.t.sol:422:        noEscrow.bindSponsor(sponsor);
test/unit/ReferralController.t.sol:424:        noEscrow.recordSuccessfulMint(invitee1);
test/unit/ReferralController.t.sol:428:        noEscrow.bindSponsor(sponsor);
test/unit/ReferralController.t.sol:430:        noEscrow.recordSuccessfulMint(invitee2);
test/unit/ReferralController.t.sol:434:        noEscrow.bindSponsor(sponsor);
test/unit/ReferralController.t.sol:436:        noEscrow.recordSuccessfulMint(invitee3);
test/unit/ReferralController.t.sol:440:        noEscrow.bindSponsor(sponsor);
test/unit/ReferralController.t.sol:443:        vm.expectRevert(ReferralController.RewardEscrowNotConfigured.selector);
test/unit/ReferralController.t.sol:444:        noEscrow.recordSuccessfulMint(invitee4);
test/unit/ReferralController.t.sol:447:    function test_set_reward_token_and_reward_escrow() public {
test/unit/ReferralController.t.sol:449:        MockCFTMintable newToken = new MockCFTMintable();
test/unit/ReferralController.t.sol:450:        MockRewardEscrow newEscrow = new MockRewardEscrow();
test/unit/ReferralController.t.sol:456:        noConfig.setRewardEscrow(address(newEscrow));
test/unit/ReferralController.t.sol:459:        assertEq(address(noConfig.rewardEscrow()), address(newEscrow));
test/unit/ReferralController.t.sol:462:    function test_set_reward_token_and_reward_escrow_revert_for_non_role() public {
test/unit/ReferralController.t.sol:463:        MockCFTMintable newToken = new MockCFTMintable();
test/unit/ReferralController.t.sol:464:        MockRewardEscrow newEscrow = new MockRewardEscrow();
test/unit/ReferralController.t.sol:472:        referral.setRewardEscrow(address(newEscrow));
test/unit/ReferralController.t.sol:521:            uint256 escrowPairsIssued,
test/unit/ReferralController.t.sol:523:            bool nextPairIsEscrowed
test/unit/ReferralController.t.sol:529:        assertEq(escrowPairsIssued, 0);
test/unit/ReferralController.t.sol:531:        assertTrue(nextPairIsEscrowed);
test/unit/RewardEscrow.t.sol:7:import { RewardEscrow } from "../../src/RewardEscrow.sol";
test/unit/RewardEscrow.t.sol:9:contract MockShieldRegistryEscrow {
test/unit/RewardEscrow.t.sol:54:contract RewardEscrowTest is Test {
test/unit/RewardEscrow.t.sol:55:    RewardEscrow internal escrow;
test/unit/RewardEscrow.t.sol:56:    MockShieldRegistryEscrow internal shield;
test/unit/RewardEscrow.t.sol:79:        shield = new MockShieldRegistryEscrow();
test/unit/RewardEscrow.t.sol:80:        rewardToken = new MockMintableERC20("Canada Forever Token", "CFT");
test/unit/RewardEscrow.t.sol:86:        escrow = _deployEscrow(address(rewardToken));
test/unit/RewardEscrow.t.sol:89:    function _deployEscrow(
test/unit/RewardEscrow.t.sol:91:    ) internal returns (RewardEscrow deployed) {
test/unit/RewardEscrow.t.sol:92:        deployed = new RewardEscrow(
test/unit/RewardEscrow.t.sol:103:        grantId = escrow.createGrant(beneficiary, amount, unlockAt);
test/unit/RewardEscrow.t.sol:107:        assertTrue(escrow.hasRole(escrow.DEFAULT_ADMIN_ROLE(), admin));
test/unit/RewardEscrow.t.sol:108:        assertTrue(escrow.hasRole(escrow.PAUSER_ROLE(), pauser));
test/unit/RewardEscrow.t.sol:109:        assertTrue(escrow.hasRole(escrow.CONFIG_MANAGER_ROLE(), configManager));
test/unit/RewardEscrow.t.sol:110:        assertTrue(escrow.hasRole(escrow.GRANT_CREATOR_ROLE(), grantCreator));
test/unit/RewardEscrow.t.sol:112:        assertEq(address(escrow.SHIELD_REGISTRY()), address(shield));
test/unit/RewardEscrow.t.sol:113:        assertEq(address(escrow.rewardToken()), address(rewardToken));
test/unit/RewardEscrow.t.sol:114:        assertEq(escrow.nextGrantId(), 0);
test/unit/RewardEscrow.t.sol:118:        vm.expectRevert(RewardEscrow.ZeroAddress.selector);
test/unit/RewardEscrow.t.sol:119:        new RewardEscrow(
test/unit/RewardEscrow.t.sol:123:        vm.expectRevert(RewardEscrow.ZeroAddress.selector);
test/unit/RewardEscrow.t.sol:124:        new RewardEscrow(
test/unit/RewardEscrow.t.sol:130:        vm.expectRevert(RewardEscrow.InvalidRoleHolder.selector);
test/unit/RewardEscrow.t.sol:131:        new RewardEscrow(
test/unit/RewardEscrow.t.sol:139:        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.InvalidDependency.selector, fake));
test/unit/RewardEscrow.t.sol:140:        new RewardEscrow(admin, pauser, configManager, grantCreator, fake, address(rewardToken));
test/unit/RewardEscrow.t.sol:150:        assertEq(escrow.nextGrantId(), 1);
test/unit/RewardEscrow.t.sol:151:        assertEq(escrow.beneficiaryOf(grantId), alice);
test/unit/RewardEscrow.t.sol:152:        assertEq(escrow.amountOf(grantId), amount);
test/unit/RewardEscrow.t.sol:153:        assertEq(escrow.unlockAtOf(grantId), unlockAt);
test/unit/RewardEscrow.t.sol:154:        assertFalse(escrow.isClaimed(grantId));
test/unit/RewardEscrow.t.sol:157:            escrow.getGrant(grantId);
test/unit/RewardEscrow.t.sol:168:            abi.encodeWithSelector(RewardEscrow.InvalidBeneficiary.selector, address(0))
test/unit/RewardEscrow.t.sol:170:        escrow.createGrant(address(0), 500 ether, uint64(block.timestamp + 1 days));
test/unit/RewardEscrow.t.sol:175:        vm.expectRevert(RewardEscrow.InvalidAmount.selector);
test/unit/RewardEscrow.t.sol:176:        escrow.createGrant(alice, 0, uint64(block.timestamp + 1 days));
test/unit/RewardEscrow.t.sol:183:        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.BannedAccount.selector, alice));
test/unit/RewardEscrow.t.sol:184:        escrow.createGrant(alice, 500 ether, uint64(block.timestamp + 1 days));
test/unit/RewardEscrow.t.sol:192:            abi.encodeWithSelector(RewardEscrow.BeneficiaryNotActiveMember.selector, alice)
test/unit/RewardEscrow.t.sol:194:        escrow.createGrant(alice, 500 ether, uint64(block.timestamp + 1 days));
test/unit/RewardEscrow.t.sol:202:            abi.encodeWithSelector(RewardEscrow.InvalidUnlockAt.selector, currentTs, currentTs)
test/unit/RewardEscrow.t.sol:204:        escrow.createGrant(alice, 500 ether, currentTs);
test/unit/RewardEscrow.t.sol:216:        uint256 claimedAmount = escrow.claim(grantId);
test/unit/RewardEscrow.t.sol:220:        assertEq(escrow.isClaimed(grantId), true);
test/unit/RewardEscrow.t.sol:221:        assertEq(escrow.isClaimable(grantId), false);
test/unit/RewardEscrow.t.sol:229:            abi.encodeWithSelector(RewardEscrow.NotBeneficiary.selector, alice, outsider)
test/unit/RewardEscrow.t.sol:231:        escrow.claim(grantId);
test/unit/RewardEscrow.t.sol:241:                RewardEscrow.GrantNotMature.selector, unlockAt, uint64(block.timestamp)
test/unit/RewardEscrow.t.sol:244:        escrow.claim(grantId);
test/unit/RewardEscrow.t.sol:254:        escrow.claim(grantId);
test/unit/RewardEscrow.t.sol:257:        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.GrantAlreadyClaimed.selector, grantId));
test/unit/RewardEscrow.t.sol:258:        escrow.claim(grantId);
test/unit/RewardEscrow.t.sol:269:        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.BannedAccount.selector, alice));
test/unit/RewardEscrow.t.sol:270:        escrow.claim(grantId);
test/unit/RewardEscrow.t.sol:282:            abi.encodeWithSelector(RewardEscrow.BeneficiaryNotActiveMember.selector, alice)
test/unit/RewardEscrow.t.sol:284:        escrow.claim(grantId);
test/unit/RewardEscrow.t.sol:288:        RewardEscrow noTokenEscrow = _deployEscrow(address(0));
test/unit/RewardEscrow.t.sol:292:            noTokenEscrow.createGrant(alice, 500 ether, uint64(block.timestamp + 1 days));
test/unit/RewardEscrow.t.sol:297:        vm.expectRevert(RewardEscrow.RewardTokenNotConfigured.selector);
test/unit/RewardEscrow.t.sol:298:        noTokenEscrow.claim(grantId);
test/unit/RewardEscrow.t.sol:314:        uint256 totalClaimed = escrow.batchClaim(grantIds);
test/unit/RewardEscrow.t.sol:318:        assertTrue(escrow.isClaimed(grantId1));
test/unit/RewardEscrow.t.sol:319:        assertTrue(escrow.isClaimed(grantId2));
test/unit/RewardEscrow.t.sol:326:        vm.expectRevert(RewardEscrow.EmptyArray.selector);
test/unit/RewardEscrow.t.sol:327:        escrow.batchClaim(grantIds);
test/unit/RewardEscrow.t.sol:341:            abi.encodeWithSelector(RewardEscrow.BeneficiaryNotActiveMember.selector, outsider)
test/unit/RewardEscrow.t.sol:343:        escrow.batchClaim(grantIds);
test/unit/RewardEscrow.t.sol:361:            abi.encodeWithSelector(RewardEscrow.GrantNotMature.selector, unlockAt2, unlockAt1)
test/unit/RewardEscrow.t.sol:363:        escrow.batchClaim(grantIds);
test/unit/RewardEscrow.t.sol:366:    function test_set_reward_token_and_rescue_erc20() public {
test/unit/RewardEscrow.t.sol:367:        RewardEscrow noTokenEscrow = _deployEscrow(address(0));
test/unit/RewardEscrow.t.sol:371:        noTokenEscrow.setRewardToken(address(newRewardToken));
test/unit/RewardEscrow.t.sol:373:        assertEq(address(noTokenEscrow.rewardToken()), address(newRewardToken));
test/unit/RewardEscrow.t.sol:375:        miscToken.mint(address(noTokenEscrow), 123 ether);
test/unit/RewardEscrow.t.sol:378:        noTokenEscrow.rescueERC20(address(miscToken), bob, 123 ether);
test/unit/RewardEscrow.t.sol:381:        assertEq(miscToken.balanceOf(address(noTokenEscrow)), 0);
test/unit/RewardEscrow.t.sol:384:    function test_set_reward_token_and_rescue_revert_for_non_role() public {
test/unit/RewardEscrow.t.sol:389:        escrow.setRewardToken(address(newRewardToken));
test/unit/RewardEscrow.t.sol:393:        escrow.rescueERC20(address(miscToken), bob, 1 ether);
test/unit/RewardEscrow.t.sol:400:        escrow.pause();
test/unit/RewardEscrow.t.sol:404:        escrow.createGrant(alice, 500 ether, unlockAt);
test/unit/RewardEscrow.t.sol:407:        escrow.unpause();
test/unit/RewardEscrow.t.sol:412:        escrow.pause();
test/unit/RewardEscrow.t.sol:418:        escrow.claim(grantId);
test/unit/RewardEscrow.t.sol:422:        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.GrantNotFound.selector, 999));
test/unit/RewardEscrow.t.sol:423:        escrow.beneficiaryOf(999);
test/unit/RewardEscrow.t.sol:425:        vm.expectRevert(abi.encodeWithSelector(RewardEscrow.GrantNotFound.selector, 999));
test/unit/RewardEscrow.t.sol:426:        escrow.getGrant(999);
test/unit/RewardEscrow.t.sol:433:        assertFalse(escrow.isClaimable(grantId));
test/unit/RewardEscrow.t.sol:436:        assertTrue(escrow.isClaimable(grantId));
test/unit/RewardEscrow.t.sol:439:        assertFalse(escrow.isClaimable(grantId));
test/unit/TreasuryRouter.t.sol:5:import { TreasuryRouter } from "../../src/TreasuryRouter.sol";
test/unit/TreasuryRouter.t.sol:7:contract MockTreasuryERC20 {
test/unit/TreasuryRouter.t.sol:93:contract TreasuryRouterTest is Test {
test/unit/TreasuryRouter.t.sol:94:    TreasuryRouter internal router;
test/unit/TreasuryRouter.t.sol:95:    MockTreasuryERC20 internal token;
test/unit/TreasuryRouter.t.sol:100:    address internal treasuryOperator;
test/unit/TreasuryRouter.t.sol:106:    address internal rescueRecipient;
test/unit/TreasuryRouter.t.sol:108:    bytes32 internal constant ETH_ROUTE = keccak256("ETH_ROUTE");
test/unit/TreasuryRouter.t.sol:119:        treasuryOperator = makeAddr("treasuryOperator");
test/unit/TreasuryRouter.t.sol:125:        rescueRecipient = makeAddr("rescueRecipient");
test/unit/TreasuryRouter.t.sol:127:        router = new TreasuryRouter(
test/unit/TreasuryRouter.t.sol:128:            admin, pauser, routeManager, treasuryOperator, assetManager, emergencyManager
test/unit/TreasuryRouter.t.sol:131:        token = new MockTreasuryERC20("Mock Treasury Token", "MTT");
test/unit/TreasuryRouter.t.sol:133:        vm.deal(treasuryOperator, 100 ether);
test/unit/TreasuryRouter.t.sol:138:        assertTrue(router.hasRole(router.DEFAULT_ADMIN_ROLE(), admin));
test/unit/TreasuryRouter.t.sol:139:        assertTrue(router.hasRole(router.PAUSER_ROLE(), pauser));
test/unit/TreasuryRouter.t.sol:140:        assertTrue(router.hasRole(router.ROUTE_MANAGER_ROLE(), routeManager));
test/unit/TreasuryRouter.t.sol:141:        assertTrue(router.hasRole(router.TREASURY_OPERATOR_ROLE(), treasuryOperator));
test/unit/TreasuryRouter.t.sol:142:        assertTrue(router.hasRole(router.ASSET_MANAGER_ROLE(), assetManager));
test/unit/TreasuryRouter.t.sol:143:        assertTrue(router.hasRole(router.EMERGENCY_MANAGER_ROLE(), emergencyManager));
test/unit/TreasuryRouter.t.sol:145:        assertEq(router.NATIVE_ETH(), address(0));
test/unit/TreasuryRouter.t.sol:146:        assertEq(router.BPS_DENOMINATOR(), 10_000);
test/unit/TreasuryRouter.t.sol:147:        assertEq(router.MAX_SPLIT_ROUTES(), 50);
test/unit/TreasuryRouter.t.sol:148:        assertEq(router.routeCount(), 0);
test/unit/TreasuryRouter.t.sol:152:        vm.expectRevert(TreasuryRouter.ZeroAddress.selector);
test/unit/TreasuryRouter.t.sol:154:        new TreasuryRouter(
test/unit/TreasuryRouter.t.sol:155:            address(0), pauser, routeManager, treasuryOperator, assetManager, emergencyManager
test/unit/TreasuryRouter.t.sol:160:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:162:        TreasuryRouter.Route memory route = router.getRoute(ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:164:        assertTrue(router.routeExists(ETH_ROUTE));
test/unit/TreasuryRouter.t.sol:165:        assertEq(router.routeCount(), 1);
test/unit/TreasuryRouter.t.sol:166:        assertEq(router.routeIdAt(0), ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:167:        assertEq(route.routeId, ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:170:        assertEq(route.bps, 10_000);
test/unit/TreasuryRouter.t.sol:173:        assertEq(uint256(route.routeType), uint256(TreasuryRouter.RouteType.EthRoute));
test/unit/TreasuryRouter.t.sol:180:        router.createRoute(
test/unit/TreasuryRouter.t.sol:181:            ETH_ROUTE,
test/unit/TreasuryRouter.t.sol:186:            TreasuryRouter.RouteType.EthRoute,
test/unit/TreasuryRouter.t.sol:192:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:196:            abi.encodeWithSelector(TreasuryRouter.RouteAlreadyExists.selector, ETH_ROUTE)
test/unit/TreasuryRouter.t.sol:199:        router.createRoute(
test/unit/TreasuryRouter.t.sol:200:            ETH_ROUTE,
test/unit/TreasuryRouter.t.sol:205:            TreasuryRouter.RouteType.EthRoute,
test/unit/TreasuryRouter.t.sol:212:        vm.expectRevert(TreasuryRouter.ZeroRouteId.selector);
test/unit/TreasuryRouter.t.sol:214:        router.createRoute(
test/unit/TreasuryRouter.t.sol:220:            TreasuryRouter.RouteType.EthRoute,
test/unit/TreasuryRouter.t.sol:227:        vm.expectRevert(TreasuryRouter.ZeroAddress.selector);
test/unit/TreasuryRouter.t.sol:229:        router.createRoute(
test/unit/TreasuryRouter.t.sol:230:            ETH_ROUTE,
test/unit/TreasuryRouter.t.sol:235:            TreasuryRouter.RouteType.EthRoute,
test/unit/TreasuryRouter.t.sol:244:        vm.expectRevert(abi.encodeWithSelector(TreasuryRouter.InvalidAsset.selector, fakeAsset));
test/unit/TreasuryRouter.t.sol:246:        router.createRoute(
test/unit/TreasuryRouter.t.sol:252:            TreasuryRouter.RouteType.Erc20Route,
test/unit/TreasuryRouter.t.sol:258:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:263:        router.updateRouteDestination(ETH_ROUTE, newRecipient);
test/unit/TreasuryRouter.t.sol:265:        TreasuryRouter.Route memory route = router.getRoute(ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:271:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:274:        router.lockRoute(ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:277:        vm.expectRevert(abi.encodeWithSelector(TreasuryRouter.RouteLockedError.selector, ETH_ROUTE));
test/unit/TreasuryRouter.t.sol:279:        router.updateRouteDestination(ETH_ROUTE, makeAddr("blockedRecipient"));
test/unit/TreasuryRouter.t.sol:283:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:286:        router.setRouteEnabled(ETH_ROUTE, false);
test/unit/TreasuryRouter.t.sol:288:        vm.prank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:289:        vm.expectRevert(abi.encodeWithSelector(TreasuryRouter.RouteDisabled.selector, ETH_ROUTE));
test/unit/TreasuryRouter.t.sol:291:        router.routeETH{ value: 1 ether }(ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:295:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:299:        vm.prank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:300:        router.routeETH{ value: 1 ether }(ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:306:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:308:        vm.prank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:309:        vm.expectRevert(TreasuryRouter.ZeroAmount.selector);
test/unit/TreasuryRouter.t.sol:311:        router.routeETH{ value: 0 }(ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:317:        vm.prank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:319:            abi.encodeWithSelector(TreasuryRouter.ETHRouteRequired.selector, ERC20_ROUTE)
test/unit/TreasuryRouter.t.sol:322:        router.routeETH{ value: 1 ether }(ERC20_ROUTE);
test/unit/TreasuryRouter.t.sol:328:        token.mint(treasuryOperator, 500 ether);
test/unit/TreasuryRouter.t.sol:330:        vm.startPrank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:331:        token.approve(address(router), 500 ether);
test/unit/TreasuryRouter.t.sol:332:        router.routeERC20(ERC20_ROUTE, 200 ether);
test/unit/TreasuryRouter.t.sol:336:        assertEq(token.balanceOf(treasuryOperator), 300 ether);
test/unit/TreasuryRouter.t.sol:340:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:342:        token.mint(treasuryOperator, 100 ether);
test/unit/TreasuryRouter.t.sol:344:        vm.startPrank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:345:        token.approve(address(router), 100 ether);
test/unit/TreasuryRouter.t.sol:347:            abi.encodeWithSelector(TreasuryRouter.ERC20RouteRequired.selector, ETH_ROUTE)
test/unit/TreasuryRouter.t.sol:349:        router.routeERC20(ETH_ROUTE, 10 ether);
test/unit/TreasuryRouter.t.sol:353:    function test_route_eth_by_split_success_with_remainder() public {
test/unit/TreasuryRouter.t.sol:369:        vm.prank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:370:        uint256[] memory routedAmounts = router.routeETHBySplit{ value: amount }(ids);
test/unit/TreasuryRouter.t.sol:380:    function test_route_eth_by_split_reverts_when_total_bps_is_not_full() public {
test/unit/TreasuryRouter.t.sol:385:        vm.prank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:387:            abi.encodeWithSelector(TreasuryRouter.InvalidSplitTotal.selector, uint256(5000))
test/unit/TreasuryRouter.t.sol:390:        router.routeETHBySplit{ value: 1 ether }(ids);
test/unit/TreasuryRouter.t.sol:393:    function test_route_erc20_by_split_success() public {
test/unit/TreasuryRouter.t.sol:402:        token.mint(treasuryOperator, 1000 ether);
test/unit/TreasuryRouter.t.sol:404:        vm.startPrank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:405:        token.approve(address(router), 1000 ether);
test/unit/TreasuryRouter.t.sol:406:        uint256[] memory routedAmounts = router.routeERC20BySplit(address(token), 1000 ether, ids);
test/unit/TreasuryRouter.t.sol:413:        assertEq(token.balanceOf(address(router)), 0);
test/unit/TreasuryRouter.t.sol:417:        _createEthRoute(ETH_ROUTE, ethRecipient, 10_000, true);
test/unit/TreasuryRouter.t.sol:420:        router.pause();
test/unit/TreasuryRouter.t.sol:422:        assertTrue(router.paused());
test/unit/TreasuryRouter.t.sol:424:        vm.prank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:427:        router.routeETH{ value: 1 ether }(ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:430:        router.unpause();
test/unit/TreasuryRouter.t.sol:432:        assertFalse(router.paused());
test/unit/TreasuryRouter.t.sol:434:        vm.prank(treasuryOperator);
test/unit/TreasuryRouter.t.sol:435:        router.routeETH{ value: 1 ether }(ETH_ROUTE);
test/unit/TreasuryRouter.t.sol:440:    function test_rescue_eth_requires_pause_and_succeeds_when_paused() public {
test/unit/TreasuryRouter.t.sol:441:        (bool received,) = address(router).call{ value: 2 ether }("");
test/unit/TreasuryRouter.t.sol:447:        router.rescueETH(rescueRecipient, 1 ether);
test/unit/TreasuryRouter.t.sol:449:        uint256 beforeBalance = rescueRecipient.balance;
test/unit/TreasuryRouter.t.sol:452:        router.pause();
test/unit/TreasuryRouter.t.sol:455:        router.rescueETH(rescueRecipient, 1 ether);
test/unit/TreasuryRouter.t.sol:457:        assertEq(rescueRecipient.balance, beforeBalance + 1 ether);
test/unit/TreasuryRouter.t.sol:458:        assertEq(address(router).balance, 1 ether);
test/unit/TreasuryRouter.t.sol:461:    function test_rescue_erc20_requires_pause_and_succeeds_when_paused() public {
test/unit/TreasuryRouter.t.sol:462:        token.mint(address(router), 10 ether);
test/unit/TreasuryRouter.t.sol:467:        router.rescueERC20(address(token), rescueRecipient, 1 ether);
test/unit/TreasuryRouter.t.sol:470:        router.pause();
test/unit/TreasuryRouter.t.sol:473:        router.rescueERC20(address(token), rescueRecipient, 3 ether);
test/unit/TreasuryRouter.t.sol:475:        assertEq(token.balanceOf(rescueRecipient), 3 ether);
test/unit/TreasuryRouter.t.sol:476:        assertEq(token.balanceOf(address(router)), 7 ether);
test/unit/TreasuryRouter.t.sol:482:        uint16 bps,
test/unit/TreasuryRouter.t.sol:487:        router.createRoute(
test/unit/TreasuryRouter.t.sol:491:            bps,
test/unit/TreasuryRouter.t.sol:493:            TreasuryRouter.RouteType.EthRoute,
test/unit/TreasuryRouter.t.sol:501:        uint16 bps,
test/unit/TreasuryRouter.t.sol:506:        router.createRoute(
test/unit/TreasuryRouter.t.sol:510:            bps,
test/unit/TreasuryRouter.t.sol:512:            TreasuryRouter.RouteType.Erc20Route,
test/unit/YieldPool.t.sol:6:import { YieldPool } from "../../src/YieldPool.sol";
test/unit/YieldPool.t.sol:8:contract MockYieldPoolERC20 is ERC20 {
test/unit/YieldPool.t.sol:9:    constructor() ERC20("Mock Yield Asset", "MYA") { }
test/unit/YieldPool.t.sol:19:contract RejectETHReceiver {
test/unit/YieldPool.t.sol:21:        revert("REJECT_ETH");
test/unit/YieldPool.t.sol:25:contract YieldPoolTest is Test {
test/unit/YieldPool.t.sol:26:    YieldPool internal pool;
test/unit/YieldPool.t.sol:27:    MockYieldPoolERC20 internal token;
test/unit/YieldPool.t.sol:34:    address internal rescueManager;
test/unit/YieldPool.t.sol:40:    bytes32 internal constant PURPOSE_HASH = keccak256("yield-purpose");
test/unit/YieldPool.t.sol:41:    bytes32 internal constant METADATA_HASH = keccak256("yield-metadata");
test/unit/YieldPool.t.sol:50:        rescueManager = makeAddr("rescueManager");
test/unit/YieldPool.t.sol:56:        pool = new YieldPool(admin, pauser, assetManager, grantManager, claimManager, rescueManager);
test/unit/YieldPool.t.sol:58:        token = new MockYieldPoolERC20();
test/unit/YieldPool.t.sol:61:        pool.setAssetAllowed(address(token), true);
test/unit/YieldPool.t.sol:70:        token.approve(address(pool), type(uint256).max);
test/unit/YieldPool.t.sol:74:        assertTrue(pool.hasRole(pool.DEFAULT_ADMIN_ROLE(), admin));
test/unit/YieldPool.t.sol:75:        assertTrue(pool.hasRole(pool.PAUSER_ROLE(), pauser));
test/unit/YieldPool.t.sol:76:        assertTrue(pool.hasRole(pool.ASSET_MANAGER_ROLE(), assetManager));
test/unit/YieldPool.t.sol:77:        assertTrue(pool.hasRole(pool.GRANT_MANAGER_ROLE(), grantManager));
test/unit/YieldPool.t.sol:78:        assertTrue(pool.hasRole(pool.CLAIM_MANAGER_ROLE(), claimManager));
test/unit/YieldPool.t.sol:79:        assertTrue(pool.hasRole(pool.RESCUE_MANAGER_ROLE(), rescueManager));
test/unit/YieldPool.t.sol:81:        assertEq(pool.NATIVE_ETH(), address(0));
test/unit/YieldPool.t.sol:82:        assertEq(pool.nextGrantId(), 1);
test/unit/YieldPool.t.sol:83:        assertTrue(pool.isAssetAllowed(address(0)));
test/unit/YieldPool.t.sol:84:        assertTrue(pool.isAssetAllowed(address(token)));
test/unit/YieldPool.t.sol:88:        vm.expectRevert(YieldPool.ZeroAddress.selector);
test/unit/YieldPool.t.sol:90:        new YieldPool(address(0), pauser, assetManager, grantManager, claimManager, rescueManager);
test/unit/YieldPool.t.sol:94:        vm.expectRevert(YieldPool.ZeroAddress.selector);
test/unit/YieldPool.t.sol:96:        new YieldPool(admin, address(0), assetManager, grantManager, claimManager, rescueManager);
test/unit/YieldPool.t.sol:100:        MockYieldPoolERC20 other = new MockYieldPoolERC20();
test/unit/YieldPool.t.sol:104:        pool.setAssetAllowed(address(other), true);
test/unit/YieldPool.t.sol:109:        vm.expectRevert(abi.encodeWithSelector(YieldPool.InvalidAsset.selector, address(0)));
test/unit/YieldPool.t.sol:110:        pool.setAssetAllowed(address(0), true);
test/unit/YieldPool.t.sol:115:        vm.expectRevert(abi.encodeWithSelector(YieldPool.InvalidAsset.selector, bob));
test/unit/YieldPool.t.sol:116:        pool.setAssetAllowed(bob, true);
test/unit/YieldPool.t.sol:120:        assertTrue(pool.isAssetAllowed(address(token)));
test/unit/YieldPool.t.sol:123:        pool.setAssetAllowed(address(token), false);
test/unit/YieldPool.t.sol:125:        assertFalse(pool.isAssetAllowed(address(token)));
test/unit/YieldPool.t.sol:130:        uint256 deposited = pool.depositETH{ value: 5 ether }(METADATA_HASH);
test/unit/YieldPool.t.sol:133:        assertEq(address(pool).balance, 5 ether);
test/unit/YieldPool.t.sol:134:        assertEq(pool.totalDeposited(address(0)), 5 ether);
test/unit/YieldPool.t.sol:135:        assertEq(pool.totalReserved(address(0)), 0);
test/unit/YieldPool.t.sol:136:        assertEq(pool.availableBalance(address(0)), 5 ether);
test/unit/YieldPool.t.sol:141:        (bool ok,) = address(pool).call{ value: 2 ether }("");
test/unit/YieldPool.t.sol:144:        assertEq(address(pool).balance, 2 ether);
test/unit/YieldPool.t.sol:145:        assertEq(pool.totalDeposited(address(0)), 2 ether);
test/unit/YieldPool.t.sol:150:        (bool ok,) = address(pool).call{ value: 1 ether }(hex"12345678");
test/unit/YieldPool.t.sol:153:        assertEq(address(pool).balance, 0);
test/unit/YieldPool.t.sol:154:        assertEq(pool.totalDeposited(address(0)), 0);
test/unit/YieldPool.t.sol:159:        vm.expectRevert(YieldPool.ZeroAmount.selector);
test/unit/YieldPool.t.sol:160:        pool.depositETH{ value: 0 }(METADATA_HASH);
test/unit/YieldPool.t.sol:165:        pool.pause();
test/unit/YieldPool.t.sol:169:        pool.depositETH{ value: 1 ether }(METADATA_HASH);
test/unit/YieldPool.t.sol:174:        pool.pause();
test/unit/YieldPool.t.sol:177:        pool.unpause();
test/unit/YieldPool.t.sol:180:        pool.depositETH{ value: 1 ether }(METADATA_HASH);
test/unit/YieldPool.t.sol:182:        assertEq(address(pool).balance, 1 ether);
test/unit/YieldPool.t.sol:187:        pool.pause();
test/unit/YieldPool.t.sol:190:        (bool ok,) = address(pool).call{ value: 1 ether }("");
test/unit/YieldPool.t.sol:193:        assertEq(address(pool).balance, 0);
test/unit/YieldPool.t.sol:198:        uint256 received = pool.depositERC20(address(token), 10 ether, METADATA_HASH);
test/unit/YieldPool.t.sol:201:        assertEq(token.balanceOf(address(pool)), 10 ether);
test/unit/YieldPool.t.sol:202:        assertEq(pool.totalDeposited(address(token)), 10 ether);
test/unit/YieldPool.t.sol:203:        assertEq(pool.availableBalance(address(token)), 10 ether);
test/unit/YieldPool.t.sol:208:        vm.expectRevert(YieldPool.ZeroAmount.selector);
test/unit/YieldPool.t.sol:209:        pool.depositERC20(address(token), 0, METADATA_HASH);
test/unit/YieldPool.t.sol:214:        vm.expectRevert(abi.encodeWithSelector(YieldPool.InvalidAsset.selector, address(0)));
test/unit/YieldPool.t.sol:215:        pool.depositERC20(address(0), 1 ether, METADATA_HASH);
test/unit/YieldPool.t.sol:219:        MockYieldPoolERC20 other = new MockYieldPoolERC20();
test/unit/YieldPool.t.sol:223:        other.approve(address(pool), type(uint256).max);
test/unit/YieldPool.t.sol:226:        vm.expectRevert(abi.encodeWithSelector(YieldPool.AssetNotAllowed.selector, address(other)));
test/unit/YieldPool.t.sol:227:        pool.depositERC20(address(other), 1 ether, METADATA_HASH);
test/unit/YieldPool.t.sol:231:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:233:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:235:        YieldPool.Grant memory grant = pool.getGrant(grantId);
test/unit/YieldPool.t.sol:236:        uint256[] memory ids = pool.beneficiaryGrantIds(bob);
test/unit/YieldPool.t.sol:250:        assertEq(pool.beneficiaryGrantCount(bob), 1);
test/unit/YieldPool.t.sol:251:        assertEq(pool.totalReserved(address(0)), 2 ether);
test/unit/YieldPool.t.sol:252:        assertEq(pool.availableBalance(address(0)), 3 ether);
test/unit/YieldPool.t.sol:260:        YieldPool.Grant memory grant = pool.getGrant(grantId);
test/unit/YieldPool.t.sol:264:        assertEq(pool.totalReserved(address(token)), 6 ether);
test/unit/YieldPool.t.sol:265:        assertEq(pool.availableBalance(address(token)), 14 ether);
test/unit/YieldPool.t.sol:269:        _depositETH(1 ether);
test/unit/YieldPool.t.sol:272:        vm.expectRevert(YieldPool.ZeroAddress.selector);
test/unit/YieldPool.t.sol:273:        pool.createGrant(address(0), address(0), 1 ether, 0, 0, PURPOSE_HASH, METADATA_HASH);
test/unit/YieldPool.t.sol:277:        _depositETH(1 ether);
test/unit/YieldPool.t.sol:280:        vm.expectRevert(YieldPool.ZeroAmount.selector);
test/unit/YieldPool.t.sol:281:        pool.createGrant(bob, address(0), 0, 0, 0, PURPOSE_HASH, METADATA_HASH);
test/unit/YieldPool.t.sol:285:        MockYieldPoolERC20 other = new MockYieldPoolERC20();
test/unit/YieldPool.t.sol:288:        vm.expectRevert(abi.encodeWithSelector(YieldPool.AssetNotAllowed.selector, address(other)));
test/unit/YieldPool.t.sol:289:        pool.createGrant(bob, address(other), 1 ether, 0, 0, PURPOSE_HASH, METADATA_HASH);
test/unit/YieldPool.t.sol:293:        _depositETH(1 ether);
test/unit/YieldPool.t.sol:298:                YieldPool.InsufficientAvailableBalance.selector, address(0), 2 ether, 1 ether
test/unit/YieldPool.t.sol:301:        pool.createGrant(bob, address(0), 2 ether, 0, 0, PURPOSE_HASH, METADATA_HASH);
test/unit/YieldPool.t.sol:305:        _depositETH(1 ether);
test/unit/YieldPool.t.sol:308:        vm.expectRevert(YieldPool.InvalidTimeWindow.selector);
test/unit/YieldPool.t.sol:309:        pool.createGrant(
test/unit/YieldPool.t.sol:315:        _depositETH(1 ether);
test/unit/YieldPool.t.sol:321:        vm.expectRevert(YieldPool.InvalidTimeWindow.selector);
test/unit/YieldPool.t.sol:322:        pool.createGrant(bob, address(0), 1 ether, unlockAt, expiresAt, PURPOSE_HASH, METADATA_HASH);
test/unit/YieldPool.t.sol:326:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:327:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:332:        uint256 claimed = pool.claim(grantId);
test/unit/YieldPool.t.sol:334:        YieldPool.Grant memory grant = pool.getGrant(grantId);
test/unit/YieldPool.t.sol:339:        assertEq(pool.totalReserved(address(0)), 0);
test/unit/YieldPool.t.sol:340:        assertEq(pool.totalClaimed(address(0)), 2 ether);
test/unit/YieldPool.t.sol:348:        uint256 claimed = pool.claim(grantId);
test/unit/YieldPool.t.sol:352:        assertEq(pool.totalClaimed(address(token)), 4 ether);
test/unit/YieldPool.t.sol:353:        assertEq(pool.totalReserved(address(token)), 0);
test/unit/YieldPool.t.sol:358:        vm.expectRevert(abi.encodeWithSelector(YieldPool.UnknownGrant.selector, 999));
test/unit/YieldPool.t.sol:359:        pool.claim(999);
test/unit/YieldPool.t.sol:363:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:364:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:368:            abi.encodeWithSelector(YieldPool.UnauthorizedClaimant.selector, alice, grantId)
test/unit/YieldPool.t.sol:370:        pool.claim(grantId);
test/unit/YieldPool.t.sol:374:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:380:            pool.createGrant(bob, address(0), 2 ether, unlockAt, 0, PURPOSE_HASH, METADATA_HASH);
test/unit/YieldPool.t.sol:384:            abi.encodeWithSelector(YieldPool.GrantNotUnlocked.selector, grantId, unlockAt)
test/unit/YieldPool.t.sol:386:        pool.claim(grantId);
test/unit/YieldPool.t.sol:390:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:396:            pool.createGrant(bob, address(0), 2 ether, 0, expiresAt, PURPOSE_HASH, METADATA_HASH);
test/unit/YieldPool.t.sol:401:        vm.expectRevert(abi.encodeWithSelector(YieldPool.GrantExpired.selector, grantId, expiresAt));
test/unit/YieldPool.t.sol:402:        pool.claim(grantId);
test/unit/YieldPool.t.sol:406:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:407:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:412:        uint256 claimed = pool.claimFor(grantId);
test/unit/YieldPool.t.sol:419:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:420:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:424:        pool.claimFor(grantId);
test/unit/YieldPool.t.sol:428:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:429:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:432:        uint256 canceledAmount = pool.cancelGrant(grantId, REASON_HASH);
test/unit/YieldPool.t.sol:434:        YieldPool.Grant memory grant = pool.getGrant(grantId);
test/unit/YieldPool.t.sol:438:        assertEq(pool.totalReserved(address(0)), 0);
test/unit/YieldPool.t.sol:439:        assertEq(pool.availableBalance(address(0)), 5 ether);
test/unit/YieldPool.t.sol:443:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:444:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:447:        pool.claim(grantId);
test/unit/YieldPool.t.sol:450:        vm.expectRevert(abi.encodeWithSelector(YieldPool.GrantAlreadyClaimed.selector, grantId));
test/unit/YieldPool.t.sol:451:        pool.cancelGrant(grantId, REASON_HASH);
test/unit/YieldPool.t.sol:455:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:456:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:459:        pool.cancelGrant(grantId, REASON_HASH);
test/unit/YieldPool.t.sol:462:        vm.expectRevert(abi.encodeWithSelector(YieldPool.GrantCanceledError.selector, grantId));
test/unit/YieldPool.t.sol:463:        pool.claim(grantId);
test/unit/YieldPool.t.sol:467:        _depositETH(10 ether);
test/unit/YieldPool.t.sol:468:        _createETHGrant(bob, 4 ether);
test/unit/YieldPool.t.sol:470:        YieldPool.AccountingSnapshot memory snapshot = pool.accountingSnapshot(address(0));
test/unit/YieldPool.t.sol:480:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:481:        uint256 grantId = _createETHGrant(bob, 2 ether);
test/unit/YieldPool.t.sol:483:        assertTrue(pool.isClaimable(grantId));
test/unit/YieldPool.t.sol:486:        pool.cancelGrant(grantId, REASON_HASH);
test/unit/YieldPool.t.sol:488:        assertFalse(pool.isClaimable(grantId));
test/unit/YieldPool.t.sol:489:        assertFalse(pool.isClaimable(999));
test/unit/YieldPool.t.sol:492:    function test_rescue_eth_reverts_when_not_paused() public {
test/unit/YieldPool.t.sol:493:        _depositETH(2 ether);
test/unit/YieldPool.t.sol:495:        vm.prank(rescueManager);
test/unit/YieldPool.t.sol:497:        pool.rescueETH(carol, 1 ether);
test/unit/YieldPool.t.sol:500:    function test_rescue_eth_success_when_paused_and_unreserved() public {
test/unit/YieldPool.t.sol:501:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:502:        _createETHGrant(bob, 3 ether);
test/unit/YieldPool.t.sol:505:        pool.pause();
test/unit/YieldPool.t.sol:509:        vm.prank(rescueManager);
test/unit/YieldPool.t.sol:510:        pool.rescueETH(carol, 2 ether);
test/unit/YieldPool.t.sol:513:        assertEq(pool.availableBalance(address(0)), 0);
test/unit/YieldPool.t.sol:516:    function test_rescue_eth_reverts_when_reserved_funds_protected() public {
test/unit/YieldPool.t.sol:517:        _depositETH(5 ether);
test/unit/YieldPool.t.sol:518:        _createETHGrant(bob, 4 ether);
test/unit/YieldPool.t.sol:521:        pool.pause();
test/unit/YieldPool.t.sol:523:        vm.prank(rescueManager);
test/unit/YieldPool.t.sol:526:                YieldPool.ReservedFundsProtected.selector, address(0), 2 ether, 1 ether
test/unit/YieldPool.t.sol:529:        pool.rescueETH(carol, 2 ether);
test/unit/YieldPool.t.sol:532:    function test_rescue_eth_reverts_when_receiver_rejects() public {
test/unit/YieldPool.t.sol:533:        RejectETHReceiver receiver = new RejectETHReceiver();
test/unit/YieldPool.t.sol:535:        _depositETH(1 ether);
test/unit/YieldPool.t.sol:538:        pool.pause();
test/unit/YieldPool.t.sol:540:        vm.prank(rescueManager);
test/unit/YieldPool.t.sol:541:        vm.expectRevert(YieldPool.ETHTransferFailed.selector);
test/unit/YieldPool.t.sol:542:        pool.rescueETH(address(receiver), 1 ether);
test/unit/YieldPool.t.sol:545:    function test_rescue_erc20_success_when_paused_and_unreserved() public {
test/unit/YieldPool.t.sol:550:        pool.pause();
test/unit/YieldPool.t.sol:552:        vm.prank(rescueManager);
test/unit/YieldPool.t.sol:553:        pool.rescueERC20(address(token), carol, 3 ether);
test/unit/YieldPool.t.sol:556:        assertEq(pool.availableBalance(address(token)), 0);
test/unit/YieldPool.t.sol:559:    function test_rescue_erc20_reverts_when_reserved_funds_protected() public {
test/unit/YieldPool.t.sol:564:        pool.pause();
test/unit/YieldPool.t.sol:566:        vm.prank(rescueManager);
test/unit/YieldPool.t.sol:569:                YieldPool.ReservedFundsProtected.selector, address(token), 3 ether, 2 ether
test/unit/YieldPool.t.sol:572:        pool.rescueERC20(address(token), carol, 3 ether);
test/unit/YieldPool.t.sol:575:    function test_rescue_erc20_reverts_for_native_asset() public {
test/unit/YieldPool.t.sol:577:        pool.pause();
test/unit/YieldPool.t.sol:579:        vm.prank(rescueManager);
test/unit/YieldPool.t.sol:580:        vm.expectRevert(abi.encodeWithSelector(YieldPool.InvalidAsset.selector, address(0)));
test/unit/YieldPool.t.sol:581:        pool.rescueERC20(address(0), carol, 1 ether);
test/unit/YieldPool.t.sol:585:        vm.expectRevert(abi.encodeWithSelector(YieldPool.UnknownGrant.selector, 404));
test/unit/YieldPool.t.sol:586:        pool.getGrant(404);
test/unit/YieldPool.t.sol:589:    function _depositETH(
test/unit/YieldPool.t.sol:593:        pool.depositETH{ value: amount }(METADATA_HASH);
test/unit/YieldPool.t.sol:600:        pool.depositERC20(address(token), amount, METADATA_HASH);
test/unit/YieldPool.t.sol:603:    function _createETHGrant(
test/unit/YieldPool.t.sol:609:            pool.createGrant(beneficiary, address(0), amount, 0, 0, PURPOSE_HASH, METADATA_HASH);
test/unit/YieldPool.t.sol:617:        grantId = pool.createGrant(

## Deployment Script Environment Input Hits
script/DeployLocalMockRouter.s.sol:8:contract LocalMockWETH is ERC20 {
script/DeployLocalMockRouter.s.sol:15:    constructor() ERC20("Local Mock Wrapped Ether", "WETH") { }
script/DeployLocalMockRouter.s.sol:79:    function WETH() external view returns (address) {
script/DeployLocalMockRouter.s.sol:115:        LocalMockWETH weth;
script/DeployLocalMockRouter.s.sol:121:        uint256 deployerKey = vm.envUint("PRIVATE_KEY");
script/DeployLocalMockRouter.s.sol:129:        deployed.weth = new LocalMockWETH();
script/DeployLocalMockRouter.s.sol:134:        _assertDeployed("LocalMockWETH", address(deployed.weth));
script/DeployLocalMockRouter.s.sol:139:        console2.log("LOCAL_WETH=", address(deployed.weth));
script/DeployLocalMockRouter.s.sol:140:        console2.log("ROUTER=", address(deployed.router));
script/DeployLocalMockRouter.s.sol:170:            "LOCAL_WETH=",
script/DeployLocalMockRouter.s.sol:173:            "ROUTER=",
script/DeployNSTLatticeCore.s.sol:7:import { NSTSBT } from "../src/NSTSBT.sol";
script/DeployNSTLatticeCore.s.sol:8:import { CFTv2 } from "../src/CFTv2.sol";
script/DeployNSTLatticeCore.s.sol:30:contract DeployNSTLattice is Script {
script/DeployNSTLatticeCore.s.sol:36:    string internal constant NST_NAME = "NST Lattice";
script/DeployNSTLatticeCore.s.sol:37:    string internal constant NST_SYMBOL = "NST";
script/DeployNSTLatticeCore.s.sol:38:    string internal constant CFT_NAME = "Canada Forever Token";
script/DeployNSTLatticeCore.s.sol:39:    string internal constant CFT_SYMBOL = "CFT";
script/DeployNSTLatticeCore.s.sol:79:        CFTv2 cft;
script/DeployNSTLatticeCore.s.sol:80:        NSTSBT nst;
script/DeployNSTLatticeCore.s.sol:111:        deployerKey = vm.envUint("PRIVATE_KEY");
script/DeployNSTLatticeCore.s.sol:114:        cfg.defaultAdmin = vm.envAddress("DEFAULT_ADMIN");
script/DeployNSTLatticeCore.s.sol:115:        cfg.pauser = vm.envAddress("PAUSER");
script/DeployNSTLatticeCore.s.sol:116:        cfg.vettingManager = vm.envAddress("VETTING_MANAGER");
script/DeployNSTLatticeCore.s.sol:117:        cfg.banManager = vm.envAddress("BAN_MANAGER");
script/DeployNSTLatticeCore.s.sol:118:        cfg.exemptionManager = vm.envAddress("EXEMPTION_MANAGER");
script/DeployNSTLatticeCore.s.sol:119:        cfg.profileManager = vm.envAddress("PROFILE_MANAGER");
script/DeployNSTLatticeCore.s.sol:120:        cfg.configManager = vm.envAddress("CONFIG_MANAGER");
script/DeployNSTLatticeCore.s.sol:121:        cfg.mintManager = vm.envAddress("MINT_MANAGER");
script/DeployNSTLatticeCore.s.sol:122:        cfg.metadataManager = vm.envAddress("METADATA_MANAGER");
script/DeployNSTLatticeCore.s.sol:123:        cfg.treasuryManager = vm.envAddress("TREASURY_MANAGER");
script/DeployNSTLatticeCore.s.sol:124:        cfg.swapOperator = vm.envAddress("SWAP_OPERATOR");
script/DeployNSTLatticeCore.s.sol:125:        cfg.initialGrantCreator = vm.envAddress("INITIAL_GRANT_CREATOR");
script/DeployNSTLatticeCore.s.sol:127:        cfg.credentialIssuer = vm.envAddress("CREDENTIAL_ISSUER");
script/DeployNSTLatticeCore.s.sol:128:        cfg.credentialRevoker = vm.envAddress("CREDENTIAL_REVOKER");
script/DeployNSTLatticeCore.s.sol:129:        cfg.uriManager = vm.envAddress("URI_MANAGER");
script/DeployNSTLatticeCore.s.sol:130:        cfg.proofManager = vm.envAddress("PROOF_MANAGER");
script/DeployNSTLatticeCore.s.sol:131:        cfg.routeManager = vm.envAddress("ROUTE_MANAGER");
script/DeployNSTLatticeCore.s.sol:132:        cfg.treasuryOperator = vm.envAddress("TREASURY_OPERATOR");
script/DeployNSTLatticeCore.s.sol:133:        cfg.assetManager = vm.envAddress("ASSET_MANAGER");
script/DeployNSTLatticeCore.s.sol:134:        cfg.emergencyManager = vm.envAddress("EMERGENCY_MANAGER");
script/DeployNSTLatticeCore.s.sol:135:        cfg.grantManager = vm.envAddress("GRANT_MANAGER");
script/DeployNSTLatticeCore.s.sol:136:        cfg.claimManager = vm.envAddress("CLAIM_MANAGER");
script/DeployNSTLatticeCore.s.sol:137:        cfg.rescueManager = vm.envAddress("RESCUE_MANAGER");
script/DeployNSTLatticeCore.s.sol:139:        cfg.genesisRecipient = vm.envAddress("GENESIS_RECIPIENT");
script/DeployNSTLatticeCore.s.sol:140:        cfg.founderTreasury = vm.envAddress("FOUNDER_TREASURY");
script/DeployNSTLatticeCore.s.sol:141:        cfg.firstNationsTreasury = vm.envAddress("FIRST_NATIONS_TREASURY");
script/DeployNSTLatticeCore.s.sol:142:        cfg.virilityTreasury = vm.envAddress("VIRILITY_TREASURY");
script/DeployNSTLatticeCore.s.sol:143:        cfg.yieldPool = vm.envOr("YIELD_POOL", address(0));
script/DeployNSTLatticeCore.s.sol:144:        cfg.buildingTreasury = vm.envAddress("BUILDING_TREASURY");
script/DeployNSTLatticeCore.s.sol:146:        cfg.router = vm.envAddress("ROUTER");
script/DeployNSTLatticeCore.s.sol:161:        _requireNonZero(cfg.treasuryManager, "TREASURY_MANAGER");
script/DeployNSTLatticeCore.s.sol:162:        _requireNonZero(cfg.swapOperator, "SWAP_OPERATOR");
script/DeployNSTLatticeCore.s.sol:166:        _requireNonZero(cfg.founderTreasury, "FOUNDER_TREASURY");
script/DeployNSTLatticeCore.s.sol:167:        _requireNonZero(cfg.firstNationsTreasury, "FIRST_NATIONS_TREASURY");
script/DeployNSTLatticeCore.s.sol:168:        _requireNonZero(cfg.virilityTreasury, "VIRILITY_TREASURY");
script/DeployNSTLatticeCore.s.sol:169:        _requireNonZero(cfg.buildingTreasury, "BUILDING_TREASURY");
script/DeployNSTLatticeCore.s.sol:170:        _requireNonZero(cfg.router, "ROUTER");
script/DeployNSTLatticeCore.s.sol:177:        _requireNonZero(cfg.treasuryOperator, "TREASURY_OPERATOR");
script/DeployNSTLatticeCore.s.sol:217:        deployed.cft = new CFTv2(
script/DeployNSTLatticeCore.s.sol:227:            CFT_NAME,
script/DeployNSTLatticeCore.s.sol:228:            CFT_SYMBOL
script/DeployNSTLatticeCore.s.sol:233:        deployed.nst = new NSTSBT(
script/DeployNSTLatticeCore.s.sol:246:            NST_NAME,
script/DeployNSTLatticeCore.s.sol:247:            NST_SYMBOL
script/DeployNSTLatticeCore.s.sol:287:        _handoffNST(deployed.nst, cfg, operator);
script/DeployNSTLatticeCore.s.sol:288:        _handoffCFT(deployed.cft, cfg, operator);
script/DeployNSTLatticeCore.s.sol:324:    function _handoffNST(
script/DeployNSTLatticeCore.s.sol:325:        NSTSBT nst,
script/DeployNSTLatticeCore.s.sol:335:        _grantRoleIfMissing(target, nst.TREASURY_MANAGER_ROLE(), cfg.treasuryManager);
script/DeployNSTLatticeCore.s.sol:336:        _grantRoleIfMissing(target, nst.SWAP_OPERATOR_ROLE(), cfg.swapOperator);
script/DeployNSTLatticeCore.s.sol:344:            target, nst.TREASURY_MANAGER_ROLE(), operator, cfg.treasuryManager
script/DeployNSTLatticeCore.s.sol:346:        _revokeBootstrapIfDifferent(target, nst.SWAP_OPERATOR_ROLE(), operator, cfg.swapOperator);
script/DeployNSTLatticeCore.s.sol:350:    function _handoffCFT(
script/DeployNSTLatticeCore.s.sol:351:        CFTv2 cft,
script/DeployNSTLatticeCore.s.sol:489:        _grantRoleIfMissing(target, treasuryRouter.TREASURY_OPERATOR_ROLE(), cfg.treasuryOperator);
script/DeployNSTLatticeCore.s.sol:498:            target, treasuryRouter.TREASURY_OPERATOR_ROLE(), operator, cfg.treasuryOperator
test/integration/ReferralMintFlow.t.sol:8:import { NSTSBT } from "../../src/NSTSBT.sol";
test/integration/ReferralMintFlow.t.sol:9:import { CFTv2 } from "../../src/CFTv2.sol";
test/integration/ReferralMintFlow.t.sol:38:    function WETH() external view returns (address) {
test/integration/ReferralMintFlow.t.sol:55:    NSTSBT internal nst;
test/integration/ReferralMintFlow.t.sol:56:    CFTv2 internal cft;
test/integration/ReferralMintFlow.t.sol:127:        weth = new MockERC20ReferralFlow("Wrapped Ether", "WETH");
test/integration/ReferralMintFlow.t.sol:130:        cft = new CFTv2(
test/integration/ReferralMintFlow.t.sol:141:            "CFT"
test/integration/ReferralMintFlow.t.sol:150:        nst = new NSTSBT(
test/integration/ReferralMintFlow.t.sol:163:            "NST Lattice",
test/integration/ReferralMintFlow.t.sol:164:            "NST"
test/integration/ReferralMintFlow.t.sol:218:    function _mintNST(
test/integration/ReferralMintFlow.t.sol:229:        _mintNST(account);
test/integration/ReferralMintFlow.t.sol:249:        _mintNST(invitee);
test/integration/ReferralMintFlow.t.sol:322:        _mintNST(invitee1);
test/integration/ReferralMintFlow.t.sol:372:        _mintNST(invitee1);
test/integration/VaultMembershipFlow.t.sol:7:import { NSTSBT } from "../../src/NSTSBT.sol";
test/integration/VaultMembershipFlow.t.sol:33:    address public immutable WETH;
test/integration/VaultMembershipFlow.t.sol:38:        WETH = weth_;
test/integration/VaultMembershipFlow.t.sol:55:        keccak256("NST_LATTICE_IDENTITY_CREDENTIAL");
test/integration/VaultMembershipFlow.t.sol:57:        keccak256("NST_LATTICE_INVOICE_ISSUER_CREDENTIAL");
test/integration/VaultMembershipFlow.t.sol:58:    bytes32 internal constant METADATA_HASH = keccak256("NST_LATTICE_METADATA");
test/integration/VaultMembershipFlow.t.sol:59:    bytes32 internal constant URI_HASH = keccak256("NST_LATTICE_ENCRYPTED_URI");
test/integration/VaultMembershipFlow.t.sol:60:    bytes32 internal constant BAN_REASON_HASH = keccak256("NST_LATTICE_INTEGRATION_BAN_REASON");
test/integration/VaultMembershipFlow.t.sol:63:    NSTSBT internal nst;
test/integration/VaultMembershipFlow.t.sol:128:        weth = new MockERC20VaultMembershipFlow("Wrapped Ether", "WETH");
test/integration/VaultMembershipFlow.t.sol:129:        cft = new MockERC20VaultMembershipFlow("Canada Forever Token", "CFT");
test/integration/VaultMembershipFlow.t.sol:132:        nst = new NSTSBT(
test/integration/VaultMembershipFlow.t.sol:145:            "NST Lattice",
test/integration/VaultMembershipFlow.t.sol:146:            "NST"
test/integration/VaultMembershipFlow.t.sol:169:        uint256 tokenId = _mintNST(alice);
test/integration/VaultMembershipFlow.t.sol:171:        assertTrue(shield.ownsNST(alice));
test/integration/VaultMembershipFlow.t.sol:209:        _mintNST(alice);
test/integration/VaultMembershipFlow.t.sol:251:        assertFalse(shield.ownsNST(bob));
test/integration/VaultMembershipFlow.t.sol:281:    function _mintNST(
test/integration/VettedMintFlow.t.sol:8:import { NSTSBT } from "../../src/NSTSBT.sol";
test/integration/VettedMintFlow.t.sol:35:    function WETH() external view returns (address) {
test/integration/VettedMintFlow.t.sol:49:    NSTSBT internal nst;
test/integration/VettedMintFlow.t.sol:100:        weth = new MockERC20Integration("Wrapped Ether", "WETH");
test/integration/VettedMintFlow.t.sol:101:        cft = new MockERC20Integration("Canada Forever Token", "CFT");
test/integration/VettedMintFlow.t.sol:104:        nst = new NSTSBT(
test/integration/VettedMintFlow.t.sol:117:            "NST Lattice",
test/integration/VettedMintFlow.t.sol:118:            "NST"
test/integration/VettedMintFlow.t.sol:186:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.NotMintEligible.selector, alice));
test/integration/VettedMintFlow.t.sol:202:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.BannedAccount.selector, alice));
test/integration/VettedMintFlow.t.sol:233:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.AlreadyMinted.selector, alice));
test/unit/CFTv2.t.sol:6:import { CFTv2 } from "../../src/CFTv2.sol";
test/unit/CFTv2.t.sol:8:contract MockShieldRegistryCFT {
test/unit/CFTv2.t.sol:53:contract CFTv2Test is Test {
test/unit/CFTv2.t.sol:54:    uint256 internal constant FOUNDER_GENESIS = 20_000_000_000 ether;
test/unit/CFTv2.t.sol:57:    uint256 internal constant YIELD_POOL_GENESIS = 5_000_000_000 ether;
test/unit/CFTv2.t.sol:58:    uint256 internal constant BUILDING_TREASURY_GENESIS = 50_000_000_000 ether;
test/unit/CFTv2.t.sol:60:    CFTv2 internal cft;
test/unit/CFTv2.t.sol:61:    MockShieldRegistryCFT internal shield;
test/unit/CFTv2.t.sol:100:        shield = new MockShieldRegistryCFT();
test/unit/CFTv2.t.sol:116:    ) internal returns (CFTv2 deployed) {
test/unit/CFTv2.t.sol:117:        deployed = new CFTv2(
test/unit/CFTv2.t.sol:128:            "CFT"
test/unit/CFTv2.t.sol:170:        assertEq(cft.getRoleAdmin(cft.TREASURY_MINT_ROLE()), cft.CONFIG_MANAGER_ROLE());
test/unit/CFTv2.t.sol:173:        assertEq(address(cft.SHIELD_REGISTRY()), address(shield));
test/unit/CFTv2.t.sol:175:        assertEq(cft.FOUNDER_TREASURY(), founderTreasury);
test/unit/CFTv2.t.sol:176:        assertEq(cft.FIRST_NATIONS_TREASURY(), firstNationsTreasury);
test/unit/CFTv2.t.sol:177:        assertEq(cft.VIRILITY_TREASURY(), virilityTreasury);
test/unit/CFTv2.t.sol:178:        assertEq(cft.YIELD_POOL(), yieldPool);
test/unit/CFTv2.t.sol:179:        assertEq(cft.BUILDING_TREASURY(), buildingTreasury);
test/unit/CFTv2.t.sol:182:        assertEq(cft.balanceOf(founderTreasury), FOUNDER_GENESIS);
test/unit/CFTv2.t.sol:185:        assertEq(cft.balanceOf(yieldPool), YIELD_POOL_GENESIS);
test/unit/CFTv2.t.sol:186:        assertEq(cft.balanceOf(buildingTreasury), BUILDING_TREASURY_GENESIS);
test/unit/CFTv2.t.sol:190:        MockShieldRegistryCFT freshShield = new MockShieldRegistryCFT();
test/unit/CFTv2.t.sol:192:        CFTv2 fresh = _deployToken(address(freshShield));
test/unit/CFTv2.t.sol:195:        assertEq(fresh.balanceOf(founderTreasury), FOUNDER_GENESIS);
test/unit/CFTv2.t.sol:198:        assertEq(fresh.balanceOf(yieldPool), YIELD_POOL_GENESIS);
test/unit/CFTv2.t.sol:199:        assertEq(fresh.balanceOf(buildingTreasury), BUILDING_TREASURY_GENESIS);
test/unit/CFTv2.t.sol:203:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:204:        new CFTv2(
test/unit/CFTv2.t.sol:215:            "CFT"
test/unit/CFTv2.t.sol:218:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:219:        new CFTv2(
test/unit/CFTv2.t.sol:230:            "CFT"
test/unit/CFTv2.t.sol:235:        vm.expectRevert(CFTv2.InvalidRoleHolder.selector);
test/unit/CFTv2.t.sol:236:        new CFTv2(
test/unit/CFTv2.t.sol:247:            "CFT"
test/unit/CFTv2.t.sol:254:        vm.expectRevert(abi.encodeWithSelector(CFTv2.InvalidDependency.selector, fake));
test/unit/CFTv2.t.sol:255:        new CFTv2(
test/unit/CFTv2.t.sol:266:            "CFT"
test/unit/CFTv2.t.sol:287:        assertTrue(cft.hasRole(cft.TREASURY_MINT_ROLE(), treasuryMinter));
test/unit/CFTv2.t.sol:308:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:312:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:316:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:337:        vm.expectRevert(CFTv2.InvalidAmount.selector);
test/unit/CFTv2.t.sol:355:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
test/unit/CFTv2.t.sol:363:        vm.expectRevert(CFTv2.InvalidAmount.selector);
test/unit/CFTv2.t.sol:402:        vm.expectRevert(CFTv2.InvalidAmount.selector);
test/unit/CFTv2.t.sol:420:        vm.expectRevert(CFTv2.InvalidAmount.selector);
test/unit/CFTv2.t.sol:439:        vm.expectRevert(CFTv2.ZeroAddress.selector);
test/unit/CFTv2.t.sol:458:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
test/unit/CFTv2.t.sol:467:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, alice));
test/unit/CFTv2.t.sol:492:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
test/unit/CFTv2.t.sol:503:        vm.expectRevert(abi.encodeWithSelector(CFTv2.ParticipantNotPermitted.selector, outsider));
test/unit/NSTSBT.t.sol:7:import { NSTSBT } from "../../src/NSTSBT.sol";
test/unit/NSTSBT.t.sol:83:    function WETH() external view returns (address) {
test/unit/NSTSBT.t.sol:144:contract MockYieldPoolForNSTSBT {
test/unit/NSTSBT.t.sol:175:contract NSTSBTTest is Test {
test/unit/NSTSBT.t.sol:177:    uint256 internal constant FOUNDER_SHARE = 0.018 ether;
test/unit/NSTSBT.t.sol:178:    uint256 internal constant YIELD_SHARE = 0.002 ether;
test/unit/NSTSBT.t.sol:180:    NSTSBT internal nst;
test/unit/NSTSBT.t.sol:190:    MockYieldPoolForNSTSBT internal yieldPoolMock;
test/unit/NSTSBT.t.sol:205:        yieldPoolMock = new MockYieldPoolForNSTSBT();
test/unit/NSTSBT.t.sol:218:        weth = new MockERC20("Wrapped Ether", "WETH");
test/unit/NSTSBT.t.sol:219:        cft = new MockERC20("Canada Forever Token", "CFT");
test/unit/NSTSBT.t.sol:225:        nst = _deployNST(founder);
test/unit/NSTSBT.t.sol:233:    function _deployNST(
test/unit/NSTSBT.t.sol:235:    ) internal returns (NSTSBT deployed) {
test/unit/NSTSBT.t.sol:236:        deployed = new NSTSBT(
test/unit/NSTSBT.t.sol:249:            "NST Lattice",
test/unit/NSTSBT.t.sol:250:            "NST"
test/unit/NSTSBT.t.sol:278:        assertTrue(nst.hasRole(nst.TREASURY_MANAGER_ROLE(), treasuryManager));
test/unit/NSTSBT.t.sol:279:        assertTrue(nst.hasRole(nst.SWAP_OPERATOR_ROLE(), swapOperator));
test/unit/NSTSBT.t.sol:282:        assertEq(nst.FOUNDER_WALLET(), founder);
test/unit/NSTSBT.t.sol:283:        assertEq(nst.SHIELD_REGISTRY(), address(shield));
test/unit/NSTSBT.t.sol:284:        assertEq(nst.CFT(), address(cft));
test/unit/NSTSBT.t.sol:285:        assertEq(nst.YIELD_POOL(), yieldPool);
test/unit/NSTSBT.t.sol:286:        assertEq(address(nst.ROUTER()), address(router));
test/unit/NSTSBT.t.sol:287:        assertEq(nst.WETH(), address(weth));
test/unit/NSTSBT.t.sol:301:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.NotMintEligible.selector, genesis));
test/unit/NSTSBT.t.sol:302:        new NSTSBT(
test/unit/NSTSBT.t.sol:315:            "NST Lattice",
test/unit/NSTSBT.t.sol:316:            "NST"
test/unit/NSTSBT.t.sol:325:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.BannedAccount.selector, genesis));
test/unit/NSTSBT.t.sol:326:        new NSTSBT(
test/unit/NSTSBT.t.sol:339:            "NST Lattice",
test/unit/NSTSBT.t.sol:340:            "NST"
test/unit/NSTSBT.t.sol:345:        vm.expectRevert(NSTSBT.ZeroAddress.selector);
test/unit/NSTSBT.t.sol:346:        new NSTSBT(
test/unit/NSTSBT.t.sol:359:            "NST Lattice",
test/unit/NSTSBT.t.sol:360:            "NST"
test/unit/NSTSBT.t.sol:366:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.NotMintEligible.selector, alice));
test/unit/NSTSBT.t.sol:375:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.BannedAccount.selector, alice));
test/unit/NSTSBT.t.sol:383:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.InvalidPayment.selector, MINT_PRICE, 1 wei));
test/unit/NSTSBT.t.sol:400:        assertEq(founder.balance - founderBefore, FOUNDER_SHARE);
test/unit/NSTSBT.t.sol:401:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:402:        assertEq(address(nst).balance, YIELD_SHARE);
test/unit/NSTSBT.t.sol:414:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.AlreadyMinted.selector, alice));
test/unit/NSTSBT.t.sol:422:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.AlreadyMinted.selector, genesis));
test/unit/NSTSBT.t.sol:436:        assertEq(founder.balance - founderBefore, FOUNDER_SHARE);
test/unit/NSTSBT.t.sol:440:        assertEq(router.lastAmountIn(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:460:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:461:        assertEq(address(nst).balance, YIELD_SHARE);
test/unit/NSTSBT.t.sol:468:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:469:        assertEq(address(nst).balance, YIELD_SHARE);
test/unit/NSTSBT.t.sol:474:        nst.processPendingYieldETH(YIELD_SHARE);
test/unit/NSTSBT.t.sol:478:        assertEq(router.lastAmountIn(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:486:        vm.expectRevert(NSTSBT.YieldSwapDisabled.selector);
test/unit/NSTSBT.t.sol:487:        nst.processPendingYieldETH(YIELD_SHARE);
test/unit/NSTSBT.t.sol:495:        vm.expectRevert(NSTSBT.SwapAmountZero.selector);
test/unit/NSTSBT.t.sol:506:                NSTSBT.AmountExceedsPending.selector, YIELD_SHARE, YIELD_SHARE + 1
test/unit/NSTSBT.t.sol:509:        nst.processPendingYieldETH(YIELD_SHARE + 1);
test/unit/NSTSBT.t.sol:518:        vm.expectRevert(NSTSBT.SwapRetryFailed.selector);
test/unit/NSTSBT.t.sol:519:        nst.processPendingYieldETH(YIELD_SHARE);
test/unit/NSTSBT.t.sol:521:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:561:        vm.expectRevert(NSTSBT.MintClosed.selector);
test/unit/NSTSBT.t.sol:568:        vm.expectRevert(NSTSBT.MintPermanentlyClosed.selector);
test/unit/NSTSBT.t.sol:572:        vm.expectRevert(NSTSBT.MintPermanentlyClosed.selector);
test/unit/NSTSBT.t.sol:588:        vm.expectRevert(NSTSBT.BaseURIFrozen.selector);
test/unit/NSTSBT.t.sol:602:        vm.expectRevert(NSTSBT.ContractURIFrozen.selector);
test/unit/NSTSBT.t.sol:608:        vm.expectRevert(NSTSBT.BaseURIEmpty.selector);
test/unit/NSTSBT.t.sol:612:        vm.expectRevert(NSTSBT.ContractURIEmpty.selector);
test/unit/NSTSBT.t.sol:626:            abi.encodeWithSelector(NSTSBT.DelayNotElapsed.selector, executeAfter, block.timestamp)
test/unit/NSTSBT.t.sol:654:        vm.expectRevert(NSTSBT.PendingConfigNotSet.selector);
test/unit/NSTSBT.t.sol:662:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.InvalidSweepAmount.selector, 0, 1 wei));
test/unit/NSTSBT.t.sol:680:        assertEq(nst.pendingYieldETH(), YIELD_SHARE);
test/unit/NSTSBT.t.sol:701:        vm.expectRevert(NSTSBT.Soulbound.selector);
test/unit/NSTSBT.t.sol:705:        vm.expectRevert(NSTSBT.Soulbound.selector);
test/unit/NSTSBT.t.sol:709:        vm.expectRevert(NSTSBT.Soulbound.selector);
test/unit/NSTSBT.t.sol:713:        vm.expectRevert(NSTSBT.Soulbound.selector);
test/unit/NSTSBT.t.sol:723:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.TokenDoesNotExist.selector, 999));
test/unit/NSTSBT.t.sol:730:        vm.expectRevert(NSTSBT.Soulbound.selector);
test/unit/NSTSBT.t.sol:733:        vm.expectRevert(NSTSBT.FounderTokenProtected.selector);
test/unit/NSTSBT.t.sol:738:        vm.expectRevert(abi.encodeWithSelector(NSTSBT.TokenDoesNotExist.selector, 999));
test/unit/NSTSBT.t.sol:759:        NSTSBT badNST = new NSTSBT(
test/unit/NSTSBT.t.sol:772:            "NST Lattice",
test/unit/NSTSBT.t.sol:773:            "NST"
test/unit/NSTSBT.t.sol:779:        vm.expectRevert(NSTSBT.ETHTransferFailed.selector);
test/unit/NSTSBT.t.sol:780:        badNST.mint{ value: MINT_PRICE }();
test/unit/NSTSBT.t.sol:782:        assertFalse(badNST.hasMinted(alice));
test/unit/ReferralController.t.sol:67:contract MockCFTMintable {
test/unit/ReferralController.t.sol:103:    MockCFTMintable internal cft;
test/unit/ReferralController.t.sol:130:        cft = new MockCFTMintable();
test/unit/ReferralController.t.sol:180:        assertEq(address(referral.SHIELD_REGISTRY()), address(shield));
test/unit/ReferralController.t.sol:449:        MockCFTMintable newToken = new MockCFTMintable();
test/unit/ReferralController.t.sol:463:        MockCFTMintable newToken = new MockCFTMintable();
test/unit/RewardEscrow.t.sol:80:        rewardToken = new MockMintableERC20("Canada Forever Token", "CFT");
test/unit/RewardEscrow.t.sol:112:        assertEq(address(escrow.SHIELD_REGISTRY()), address(shield));
test/unit/ShieldRegistry.t.sol:12:    constructor() ERC721("NST Membership", "NSTM") { }
test/unit/ShieldRegistry.t.sol:266:    function test_set_membership_token_after_deployment_enables_ownsNST_and_activeMember() public {
test/unit/ShieldRegistry.t.sol:274:        assertFalse(noTokenShield.ownsNST(alice));
test/unit/ShieldRegistry.t.sol:283:        assertTrue(noTokenShield.ownsNST(alice));
test/unit/TreasuryRouter.t.sol:141:        assertTrue(router.hasRole(router.TREASURY_OPERATOR_ROLE(), treasuryOperator));
test/unit/VaultRegistry.t.sol:38:    bytes32 private constant CREDENTIAL_HASH = keccak256("NST_LATTICE_CREDENTIAL_HASH");
test/unit/VaultRegistry.t.sol:40:        keccak256("NST_LATTICE_REPLACEMENT_CREDENTIAL_HASH");
test/unit/VaultRegistry.t.sol:41:    bytes32 private constant METADATA_HASH = keccak256("NST_LATTICE_METADATA_HASH");
test/unit/VaultRegistry.t.sol:42:    bytes32 private constant URI_HASH = keccak256("NST_LATTICE_URI_HASH");
test/unit/VaultRegistry.t.sol:43:    bytes32 private constant UPDATED_URI_HASH = keccak256("NST_LATTICE_UPDATED_URI_HASH");
test/unit/VaultRegistry.t.sol:60:        assertEq(address(vault.SHIELD_REGISTRY()), address(shield));

## Live Release Address Hits In Docs
docs/status/MASTER_STATUS.md:10:- CFT=0xd8ca133624850dd9e2f19a35606527e7d80c79d4
docs/status/MASTER_STATUS.md:11:- NST=0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b
docs/status/MASTER_STATUS.md:12:- REFERRAL=0x9d3f9dc182ef22da7521234e13b0d34220f00a7b
docs/status/MASTER_STATUS.md:13:- REWARDESCROW=0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c
docs/status/MASTER_STATUS.md:14:- ROUTER=0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0
docs/status/MASTER_STATUS.md:15:- SHIELD=0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c
docs/status/MASTER_STATUS.md:16:- TREASURYROUTER=0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15
docs/status/MASTER_STATUS.md:17:- VAULTREGISTRY=0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D
docs/status/MASTER_STATUS.md:18:- YIELDPOOL=0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b
docs/releases/v0.5.1-base-sepolia-live.md:10:- CFT=0xd8ca133624850dd9e2f19a35606527e7d80c79d4
docs/releases/v0.5.1-base-sepolia-live.md:11:- NST=0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b
docs/releases/v0.5.1-base-sepolia-live.md:12:- REFERRAL=0x9d3f9dc182ef22da7521234e13b0d34220f00a7b
docs/releases/v0.5.1-base-sepolia-live.md:13:- REWARDESCROW=0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c
docs/releases/v0.5.1-base-sepolia-live.md:14:- ROUTER=0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0
docs/releases/v0.5.1-base-sepolia-live.md:15:- SHIELD=0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c
docs/releases/v0.5.1-base-sepolia-live.md:16:- TREASURYROUTER=0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15
docs/releases/v0.5.1-base-sepolia-live.md:17:- VAULTREGISTRY=0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D
docs/releases/v0.5.1-base-sepolia-live.md:18:- YIELDPOOL=0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b
docs/PROJECT_LEDGER.md:13:- CFT=0xd8ca133624850dd9e2f19a35606527e7d80c79d4
docs/PROJECT_LEDGER.md:14:- NST=0xe065c2ff035f9d3ccdc4291a1504d6e30dab764b
docs/PROJECT_LEDGER.md:15:- REFERRAL=0x9d3f9dc182ef22da7521234e13b0d34220f00a7b
docs/PROJECT_LEDGER.md:16:- REWARDESCROW=0xf54f4f6a59568e0fd7dcbee32b820d9f535a688c
docs/PROJECT_LEDGER.md:17:- ROUTER=0x881db8d5bfc70575b81c29ca0cc1ba80bed3fdd0
docs/PROJECT_LEDGER.md:18:- SHIELD=0xE4a874a400E6579f0e5BC0EE9515C41DB23Fa54c
docs/PROJECT_LEDGER.md:19:- TREASURYROUTER=0xC4dc626e53C2d3C71D7CF152F21eaF5e9a8d9b15
docs/PROJECT_LEDGER.md:20:- VAULTREGISTRY=0x9D6c3D4d78Fe5fae2EDeCE59e7Dc58d7e3bFd96D
docs/PROJECT_LEDGER.md:21:- YIELDPOOL=0xEe9e20B753134e59036ddc8dFA3D15D9Be0Dda9b

## TODO / FIXME / Manual / Security Notes
src/CFTv2.sol:71:    event DirectMint(address indexed operator, address indexed to, uint256 amount);
src/CFTv2.sol:74:        address indexed operator,
src/CFTv2.sol:92:    event Burned(address indexed operator, address indexed from, uint256 amount);
src/NSTSBT.sol:545:        return ownerOf(GENESIS_TOKEN_ID);
src/NSTSBT.sol:652:        from = _ownerOf(tokenId);
src/NSTSBT.sol:771:        return _ownerOf(tokenId) != address(0);
script/DeployLocalMockRouter.s.sol:47:    address public immutable owner;
script/DeployLocalMockRouter.s.sol:62:        if (msg.sender != owner) revert NotOwner(msg.sender);
script/DeployLocalMockRouter.s.sol:67:        address owner_,
script/DeployLocalMockRouter.s.sol:70:        if (owner_ == address(0)) revert ZeroAddress();
script/DeployLocalMockRouter.s.sol:73:        owner = owner_;
script/DeployLocalMockRouter.s.sol:122:        address operator = vm.addr(deployerKey);
script/DeployLocalMockRouter.s.sol:130:        deployed.router = new LocalMockUniswapV2Router(operator, address(deployed.weth));
script/DeployLocalMockRouter.s.sol:137:        _writeArtifacts(deployed, operator);
script/DeployLocalMockRouter.s.sol:152:        address operator
script/DeployLocalMockRouter.s.sol:158:        vm.serializeAddress(objectKey, "operator", operator);
script/DeployNSTLatticeCore.s.sol:86:        (uint256 deployerKey, address operator, Config memory cfg) = _loadConfig();
script/DeployNSTLatticeCore.s.sol:95:        deployed = _deployCore(operator, cfg);
script/DeployNSTLatticeCore.s.sol:97:        _handoffRoles(deployed, cfg, operator);
script/DeployNSTLatticeCore.s.sol:101:        _writeArtifacts(deployed, cfg, operator);
script/DeployNSTLatticeCore.s.sol:109:        returns (uint256 deployerKey, address operator, Config memory cfg)
script/DeployNSTLatticeCore.s.sol:112:        operator = vm.addr(deployerKey);
script/DeployNSTLatticeCore.s.sol:188:        address operator,
script/DeployNSTLatticeCore.s.sol:192:            operator, operator, operator, operator, operator, operator, address(0)
script/DeployNSTLatticeCore.s.sol:202:            operator, operator, operator, operator, operator, operator, address(deployed.shield)
script/DeployNSTLatticeCore.s.sol:206:            new TreasuryRouter(operator, operator, operator, operator, operator, operator);
script/DeployNSTLatticeCore.s.sol:209:            new YieldPool(operator, operator, operator, operator, operator, operator);
script/DeployNSTLatticeCore.s.sol:218:            operator,
script/DeployNSTLatticeCore.s.sol:219:            operator,
script/DeployNSTLatticeCore.s.sol:220:            operator,
script/DeployNSTLatticeCore.s.sol:234:            operator,
script/DeployNSTLatticeCore.s.sol:241:            operator,
script/DeployNSTLatticeCore.s.sol:242:            operator,
script/DeployNSTLatticeCore.s.sol:243:            operator,
script/DeployNSTLatticeCore.s.sol:244:            operator,
script/DeployNSTLatticeCore.s.sol:245:            operator,
script/DeployNSTLatticeCore.s.sol:251:            operator, operator, operator, operator, address(deployed.shield), address(deployed.cft)
script/DeployNSTLatticeCore.s.sol:255:            operator,
script/DeployNSTLatticeCore.s.sol:256:            operator,
script/DeployNSTLatticeCore.s.sol:257:            operator,
script/DeployNSTLatticeCore.s.sol:281:    function _handoffRoles(
script/DeployNSTLatticeCore.s.sol:284:        address operator
script/DeployNSTLatticeCore.s.sol:286:        _handoffShield(deployed.shield, cfg, operator);
script/DeployNSTLatticeCore.s.sol:287:        _handoffNST(deployed.nst, cfg, operator);
script/DeployNSTLatticeCore.s.sol:288:        _handoffCFT(deployed.cft, cfg, operator);
script/DeployNSTLatticeCore.s.sol:289:        _handoffRewardEscrow(deployed.rewardEscrow, cfg, operator);
script/DeployNSTLatticeCore.s.sol:290:        _handoffReferral(deployed.referral, cfg, operator);
script/DeployNSTLatticeCore.s.sol:291:        _handoffVaultRegistry(deployed.vaultRegistry, cfg, operator);
script/DeployNSTLatticeCore.s.sol:292:        _handoffTreasuryRouter(deployed.treasuryRouter, cfg, operator);
script/DeployNSTLatticeCore.s.sol:293:        _handoffYieldPool(deployed.yieldPool, cfg, operator);
script/DeployNSTLatticeCore.s.sol:296:    function _handoffShield(
script/DeployNSTLatticeCore.s.sol:299:        address operator
script/DeployNSTLatticeCore.s.sol:310:        _revokeBootstrapIfDifferent(target, shield.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:312:            target, shield.VETTING_MANAGER_ROLE(), operator, cfg.vettingManager
script/DeployNSTLatticeCore.s.sol:314:        _revokeBootstrapIfDifferent(target, shield.BAN_MANAGER_ROLE(), operator, cfg.banManager);
script/DeployNSTLatticeCore.s.sol:316:            target, shield.EXEMPTION_MANAGER_ROLE(), operator, cfg.exemptionManager
script/DeployNSTLatticeCore.s.sol:319:            target, shield.PROFILE_MANAGER_ROLE(), operator, cfg.profileManager
script/DeployNSTLatticeCore.s.sol:321:        _revokeBootstrapIfDifferent(target, shield.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:324:    function _handoffNST(
script/DeployNSTLatticeCore.s.sol:327:        address operator
script/DeployNSTLatticeCore.s.sol:338:        _revokeBootstrapIfDifferent(target, nst.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:339:        _revokeBootstrapIfDifferent(target, nst.MINT_MANAGER_ROLE(), operator, cfg.mintManager);
script/DeployNSTLatticeCore.s.sol:341:            target, nst.METADATA_MANAGER_ROLE(), operator, cfg.metadataManager
script/DeployNSTLatticeCore.s.sol:344:            target, nst.TREASURY_MANAGER_ROLE(), operator, cfg.treasuryManager
script/DeployNSTLatticeCore.s.sol:346:        _revokeBootstrapIfDifferent(target, nst.SWAP_OPERATOR_ROLE(), operator, cfg.swapOperator);
script/DeployNSTLatticeCore.s.sol:347:        _revokeBootstrapIfDifferent(target, nst.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:350:    function _handoffCFT(
script/DeployNSTLatticeCore.s.sol:353:        address operator
script/DeployNSTLatticeCore.s.sol:361:        _revokeBootstrapIfDifferent(target, cft.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:362:        _revokeBootstrapIfDifferent(target, cft.CONFIG_MANAGER_ROLE(), operator, cfg.configManager);
script/DeployNSTLatticeCore.s.sol:363:        _revokeBootstrapIfDifferent(target, cft.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin);
script/DeployNSTLatticeCore.s.sol:366:    function _handoffRewardEscrow(
script/DeployNSTLatticeCore.s.sol:369:        address operator
script/DeployNSTLatticeCore.s.sol:378:        _revokeBootstrapIfDifferent(target, rewardEscrow.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:380:            target, rewardEscrow.CONFIG_MANAGER_ROLE(), operator, cfg.configManager
script/DeployNSTLatticeCore.s.sol:383:            target, rewardEscrow.GRANT_CREATOR_ROLE(), operator, cfg.initialGrantCreator
script/DeployNSTLatticeCore.s.sol:386:            target, rewardEscrow.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:390:    function _handoffReferral(
script/DeployNSTLatticeCore.s.sol:393:        address operator
script/DeployNSTLatticeCore.s.sol:401:        _revokeBootstrapIfDifferent(target, referral.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:403:            target, referral.CONFIG_MANAGER_ROLE(), operator, cfg.configManager
script/DeployNSTLatticeCore.s.sol:406:            target, referral.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:432:        address operator,
script/DeployNSTLatticeCore.s.sol:435:        if (finalHolder != operator && target.hasRole(role, operator)) {
script/DeployNSTLatticeCore.s.sol:436:            target.revokeRole(role, operator);
script/DeployNSTLatticeCore.s.sol:447:    function _handoffVaultRegistry(
script/DeployNSTLatticeCore.s.sol:450:        address operator
script/DeployNSTLatticeCore.s.sol:461:        _revokeBootstrapIfDifferent(target, vaultRegistry.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:463:            target, vaultRegistry.CREDENTIAL_ISSUER_ROLE(), operator, cfg.credentialIssuer
script/DeployNSTLatticeCore.s.sol:466:            target, vaultRegistry.CREDENTIAL_REVOKER_ROLE(), operator, cfg.credentialRevoker
script/DeployNSTLatticeCore.s.sol:469:            target, vaultRegistry.URI_MANAGER_ROLE(), operator, cfg.uriManager
script/DeployNSTLatticeCore.s.sol:472:            target, vaultRegistry.PROOF_MANAGER_ROLE(), operator, cfg.proofManager
script/DeployNSTLatticeCore.s.sol:475:            target, vaultRegistry.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:479:    function _handoffTreasuryRouter(
script/DeployNSTLatticeCore.s.sol:482:        address operator
script/DeployNSTLatticeCore.s.sol:493:        _revokeBootstrapIfDifferent(target, treasuryRouter.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:495:            target, treasuryRouter.ROUTE_MANAGER_ROLE(), operator, cfg.routeManager
script/DeployNSTLatticeCore.s.sol:498:            target, treasuryRouter.TREASURY_OPERATOR_ROLE(), operator, cfg.treasuryOperator
script/DeployNSTLatticeCore.s.sol:501:            target, treasuryRouter.ASSET_MANAGER_ROLE(), operator, cfg.assetManager
script/DeployNSTLatticeCore.s.sol:504:            target, treasuryRouter.EMERGENCY_MANAGER_ROLE(), operator, cfg.emergencyManager
script/DeployNSTLatticeCore.s.sol:507:            target, treasuryRouter.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:511:    function _handoffYieldPool(
script/DeployNSTLatticeCore.s.sol:514:        address operator
script/DeployNSTLatticeCore.s.sol:525:        _revokeBootstrapIfDifferent(target, yieldPool.PAUSER_ROLE(), operator, cfg.pauser);
script/DeployNSTLatticeCore.s.sol:527:            target, yieldPool.ASSET_MANAGER_ROLE(), operator, cfg.assetManager
script/DeployNSTLatticeCore.s.sol:530:            target, yieldPool.GRANT_MANAGER_ROLE(), operator, cfg.grantManager
script/DeployNSTLatticeCore.s.sol:533:            target, yieldPool.CLAIM_MANAGER_ROLE(), operator, cfg.claimManager
script/DeployNSTLatticeCore.s.sol:536:            target, yieldPool.RESCUE_MANAGER_ROLE(), operator, cfg.rescueManager
script/DeployNSTLatticeCore.s.sol:539:            target, yieldPool.DEFAULT_ADMIN_ROLE(), operator, cfg.defaultAdmin
script/DeployNSTLatticeCore.s.sol:546:        address operator
script/DeployNSTLatticeCore.s.sol:553:        vm.serializeAddress(objectKey, "operator", operator);
test/integration/VettedMintFlow.t.sol:144:        assertEq(nst.ownerOf(nst.GENESIS_TOKEN_ID()), genesis);
test/integration/VettedMintFlow.t.sol:165:        assertEq(nst.ownerOf(tokenId), alice);
test/unit/NSTSBT.t.sol:289:        assertEq(nst.ownerOf(nst.GENESIS_TOKEN_ID()), genesis);
test/unit/NSTSBT.t.sol:396:        assertEq(nst.ownerOf(tokenId), alice);
test/unit/NSTSBT.t.sol:540:        assertEq(nst.ownerOf(1), alice);
test/unit/ShieldRegistry.t.sol:37:    address internal operator;
test/unit/ShieldRegistry.t.sol:50:        operator = makeAddr("operator");
test/unit/ShieldRegistry.t.sol:186:        shield.setSystemExempt(operator, true);
test/unit/ShieldRegistry.t.sol:188:        assertTrue(shield.isSystemExempt(operator));
test/unit/ShieldRegistry.t.sol:189:        assertTrue(shield.canTouchSystem(operator));
test/unit/ShieldRegistry.t.sol:190:        assertFalse(shield.activeMember(operator));
test/unit/ShieldRegistry.t.sol:191:        assertFalse(shield.isMintEligible(operator));
test/unit/ShieldRegistry.t.sol:245:        shield.setSystemExempt(operator, true);
test/unit/ShieldRegistry.t.sol:247:        assertTrue(shield.canResolveDisputes(operator));
test/unit/ShieldRegistry.t.sol:298:        bytes32 boHash = keccak256("owner-hash");
test/unit/TreasuryRouter.t.sol:15:    mapping(address owner => mapping(address spender => uint256 amount)) public allowance;
test/unit/TreasuryRouter.t.sol:18:    event Approval(address indexed owner, address indexed spender, uint256 amount);
docs/phase/v0.5.2-mainnet-readiness.md:6:Branch: phase/v0.5.2-mainnet-readiness
docs/phase/v0.5.2-mainnet-readiness.md:10:Prepare NST Core for mainnet-grade operation after the successful Base Sepolia v0.5.1 live release.
docs/phase/v0.5.2-mainnet-readiness.md:21:- Review role ownership, treasury ownership, operator permissions, and deployment handoff assumptions.
docs/phase/v0.5.2-mainnet-readiness.md:22:- Harden release scripts and receipt checks so no manual repair is required.
docs/phase/v0.5.2-mainnet-readiness.md:24:- Build mainnet-readiness runbook, deployment checklist, rollback checklist, and acceptance gates.
docs/phase/v0.5.2-mainnet-readiness.md:25:- Prepare a mainnet candidate plan without deploying mainnet contracts yet.
docs/phase/v0.5.2-mainnet-readiness.md:28:No mainnet deployment until tests, scripts, role review, release documentation, and operator checklist are all green.
docs/status/V0_5_2_MAINNET_READINESS_STATUS.md:6:Branch: phase/v0.5.2-mainnet-readiness
docs/status/V0_5_2_MAINNET_READINESS_STATUS.md:10:Prepare NST Core for mainnet-grade operation after the successful Base Sepolia v0.5.1 live release.
docs/status/V0_5_2_MAINNET_READINESS_STATUS.md:21:- Review role ownership, treasury ownership, operator permissions, and deployment handoff assumptions.
docs/status/V0_5_2_MAINNET_READINESS_STATUS.md:22:- Harden release scripts and receipt checks so no manual repair is required.
docs/status/V0_5_2_MAINNET_READINESS_STATUS.md:24:- Build mainnet-readiness runbook, deployment checklist, rollback checklist, and acceptance gates.
docs/status/V0_5_2_MAINNET_READINESS_STATUS.md:25:- Prepare a mainnet candidate plan without deploying mainnet contracts yet.
docs/status/V0_5_2_MAINNET_READINESS_STATUS.md:28:No mainnet deployment until tests, scripts, role review, release documentation, and operator checklist are all green.
~~~

## Current audit status
- Inventory report generated.
- Draft audit document created from populated inventory.
- Formal role-owner matrix still needs to be completed.
- Formal treasury-owner matrix still needs to be completed.
- Formal operator handoff checklist still needs to be completed.
