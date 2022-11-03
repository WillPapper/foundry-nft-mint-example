// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Contract.sol";

contract TestContract is Test {
    NFTMint nftMint;

    function setUp() public {
        nftMint = new NFTMint();
    }

    function testMint() public {
        assertEq(nftMint.totalSupply(), 0);
        nftMint.mint();
        assertEq(nftMint.totalSupply(), 1);
    }

    function testMultiMint() public {
        assertEq(nftMint.totalSupply(), 0);
        nftMint.multiMint(10);
        assertEq(nftMint.totalSupply(), 10);
    }
}
