// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleNFT is ERC721 {
    uint256 public tokenCounter;

    constructor() ERC721("SimpleNFT", "SNFT") {
        tokenCounter = 0;
    }

    function createNFT(address recipient) public returns (uint256) {
        uint256 newId = tokenCounter;
        _safeMint(recipient, newId);
        tokenCounter += 1;
        return newId;
    }
}