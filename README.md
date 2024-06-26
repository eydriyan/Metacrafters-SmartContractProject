# Smart Contract Project

This Solidity program demonstrates a simple smart contract showcasing data storage and arithmetic operations with safety checks. It serves as a foundational example for those learning Solidity and interested in developing secure smart contracts on the Ethereum blockchain.

## Description

This contract includes functions to store data, add two numbers, and subtract one number from another with appropriate checks for data validity and overflow. The purpose is to illustrate basic functionality and safety considerations in Solidity programming.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. Follow these steps:

1. Go to the Remix website
2. Create a new file by clicking on the "+" icon in the left-hand sidebar.
3. Save the file with a .sol extension (e.g., SmartContract.sol).
4. Copy and paste the provided code into the file.

```solidity
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
```

5. Click on the "Solidity Compiler" tab in the left-hand sidebar.
6. Set the "Compiler" option to "0.8.0" (or another compatible version).
7. Click on the "Compile SmartContract.sol" button.

### Deploying and Interacting

1. After compiling, deploy the contract by clicking on the "Deploy & Run Transactions" tab.
2. Select the "SmartContract" contract from the dropdown menu and click "Deploy."
3. Once deployed, interact with the contract by calling functions like setData, add, and sub. Enter parameters and click "transact" to execute.

## Authors

Adrian Oraya

## License

This project is licensed under the MIT License.
