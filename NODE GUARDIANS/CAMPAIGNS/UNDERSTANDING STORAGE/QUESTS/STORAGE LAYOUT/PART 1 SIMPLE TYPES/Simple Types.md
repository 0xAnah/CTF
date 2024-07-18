# Part I: Simple Types

## Instructions
Study the Temple contract. The write(uint256 i, bytes32 data) function allows you to write data onto the ith slot in the contract's storage (do not worry if you do not understand the function's inner logic).

Find the main hall to venture further into the temple…
```
Contract Code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Temple {
    uint128 public entrance;
    address public mainHall;
    mapping(uint8 => mapping(uint8 => address)) public gardens;
    bytes20[] public chambers;

    /// Write data to the contract's ith storage slot
    function write(uint256 i, bytes32 data) public {
        assembly {
            sstore(i, data)
        }
    }
}
```

## Your Task
Using write(uint256 i, bytes32 data), write your address onto the mainHall variable.

