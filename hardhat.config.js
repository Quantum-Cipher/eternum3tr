require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: {
    compilers: [
      { version: "0.8.29", settings: { evmVersion: "shanghai" } }
    ],
  },
  networks: {
    base: {
      url: "https://mainnet.base.org",
      accounts: [process.env.PRIVATE_KEY],
    },
  },
};

