// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CustomBTC is ERC20, Ownable {
    constructor() ERC20("Custom BTC", "cBTC") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * 10**decimals()); // Mint 1 million tokens
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) external onlyOwner {
        _burn(from, amount);
    }
} 