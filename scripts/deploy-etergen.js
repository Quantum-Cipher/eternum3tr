const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  console.log("Deploying from:", deployer.address);

  const EternumETRGEN = await hre.ethers.getContractFactory("EternumETRGEN");
  const token = await EternumETRGEN.deploy();
  await token.deployed();

  console.log("EternumETRGEN deployed to:", token.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});ø

