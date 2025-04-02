// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @title Eternum Genesis Token (ETRGEN)
/// @notice Immutable Genesis token for the Eternum ecosystem
/// @security Use with caution. Contract must be reviewed before mainnet deployment.
contract EternumGenesis is ERC20, Ownable, ReentrancyGuard {

    address private _genesisVault;

    constructor(address vaultAddress) ERC20("Eternum Genesis", "ETRGEN") {
        require(vaultAddress != address(0), "Vault cannot be zero address");
        _genesisVault = vaultAddress;
        _mint(_genesisVault, 1_000_000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner nonReentrant {
        require(to != address(0), "Cannot mint to zero address");
        _mint(to, amount);
    }

    function getGenesisVault() external view onlyOwner returns (address) {
        return _genesisVault;
    }

    receive() external payable {
        revert("Eternum: Does not accept ETH");
    }

    fallback() external payable {
        revert("Eternum: Invalid call");
    }
}

