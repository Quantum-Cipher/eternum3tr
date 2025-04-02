// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EternumETRGEN is ERC20, Ownable {
    // Genesis vault address with proper checksum (Base token IMAGE)
    address public genesisVault = 0xa07d13a8e0BA4D9dDd372F6Bf8479c6B585B692a;

    constructor() ERC20("Eternum Genesis", "ETRGEN") {
        _mint(msg.sender, 1_000_000 * 10 ** decimals());
    }
}

