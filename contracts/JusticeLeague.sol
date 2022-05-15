// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract JusticeLeague is ERC1155 {
    uint256 public constant Superman = 1;
    uint256 public constant Batman = 2;
    uint256 public constant Flash = 3;

    constructor() ERC1155("https://gateway.pinata.cloud/ipfs/QmVJBppEtr1jCZXDSvvHqSN1jQxuhofpAFMwGn4GtmM9B9/{id}.json") {
        
        _mint(msg.sender, Superman, 100, "");
        _mint(msg.sender, Batman, 150, "");
        _mint(msg.sender, Flash, 120, "");
    }

    function uri(uint256 _tokenid) override public pure returns (string memory) {
        return string(
            abi.encodePacked(
                "https://gateway.pinata.cloud/ipfs/QmVJBppEtr1jCZXDSvvHqSN1jQxuhofpAFMwGn4GtmM9B9/",
                Strings.toString(_tokenid),".json"
            )
        );
    }
}    