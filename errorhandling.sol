// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public totalBalance;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Function to deposit funds
    function deposit() external payable {
        require(msg.value > 0, "Deposit amount must be greater than zero.");
        totalBalance += msg.value;
    }

    // Function to withdraw funds
    function withdraw(uint256 amount) external {
        require(msg.sender == owner, "Only the contract owner can withdraw funds.");
        require(amount > 0, "Withdrawal amount must be greater than zero.");
        require(totalBalance >= amount, "Insufficient funds.");

        totalBalance -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Function to demonstrate assert
    function assertExample(uint256 a, uint256 b) external pure returns (uint256) {
        assert(b != 0); // Ensure 'b' is not zero, otherwise the function will fail
        return a / b;
    }

    // Function to demonstrate revert
    function revertExample(uint256 number) external pure returns (uint256) {
        require(number >= 10, "Number must be greater than or equal to 10.");
        if (number > 100) {
            revert("Number cannot exceed 100.");
        }
        return number * 2;
    }
}

