// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./ICity_Descriptor.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Basic_Descriptor is Ownable, ICity_Descriptor {
    using Strings for uint256;
    string private baseURI;

    constructor(string memory _baseURI) {
        baseURI = _baseURI;
    }

    function getTokenURI(uint _tokenId) override public view returns (string memory) {
        return string(abi.encodePacked(baseURI, _tokenId.toString()));
    }
}