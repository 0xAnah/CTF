// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.22;

import {Temple} from "./Temple.sol";
contract changeMainHall {

    function changeMainHallAddress(address _templeAddress) public {
        Temple(_templeAddress).write(1, bytes32(abi.encode(msg.sender)));
    }
}