// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

// This is a sample NFT Mint contract. It's very gas inefficient and has been
// written for readability rather than gas efficiency. This contract should not
// be used in production.
contract NFTMint is ERC721 {
    // OpenZeppelin doesn't keep track of this for us unless we use
    // ERC721Enumerable
    uint256 public totalSupply;

    constructor() ERC721("Your Glitch Token", "YGT") {}

    function mint() public {
        // Follow the Checks-Effects-Interactions Pattern

        // Checks

        // Effects
        totalSupply += 1;

        // Interactions
        _mint(msg.sender, totalSupply);
    }

    function multiMint(uint256 amount) public {
        // Your task is to fill this in!
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://Qm-your-ipfs-uri";
    }
}
