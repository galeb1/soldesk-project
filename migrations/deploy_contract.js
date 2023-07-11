const LshContract = artifacts.requirte("./LshContract.sol");

module.exports = function(deployer) {
    deployer.deploy(LshContract);
}
