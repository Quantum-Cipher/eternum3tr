
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract Eternum3TR is ERC20, Ownable, ReentrancyGuard {
    constructor() ERC20("Eternum Token", "3TR") {
        _mint(msg.sender, 1_000_000 * (10 ** decimals()));
    }

    function mint(address to, uint256 amount) public onlyOwner nonReentrant {
        _mint(to, amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return 18;
    }
}
