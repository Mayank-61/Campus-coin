// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Campus Coin
 * @notice A decentralized token for campus-based transactions and rewards.
 */
contract Project is ERC20, Ownable {
    // Constructor initializes the token with name "Campus Coin" and symbol "CC"
    constructor() ERC20("Campus Coin", "CC") Ownable(msg.sender) {
        // Mint 1,000,000 tokens to the deployer (with 18 decimals)
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    /**
     * @dev Allows the contract owner to mint new tokens.
     * @param to The address to receive the minted tokens
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    /**
     * @dev Allows any user to burn their own tokens.
     * @param amount The amount of tokens to burn
     */
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    /**
     * @dev Sets a maximum cap for the total supply (optional future feature)
     * @param cap The maximum supply cap
     */
    function setMaxSupply(uint256 cap) public onlyOwner {
        // Implementation can be added later
    }
}