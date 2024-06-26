// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    uint256 public storedData;

    function setData(uint256 x) public {
        require(x > 0, "Value must be greater than zero");
        storedData = x;
    }

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        assert(a + b < type(uint256).max);
        return a + b;
    }

    function sub(uint256 a, uint256 b) public pure returns (uint256) {
        if (b > a) {
            revert("Subtraction result would be negative");
        }
        return a - b;
    }
}
