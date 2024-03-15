# Error-Handling
In these project we have used three function require(), revert(), assert().

1.This contract has a balances mapping that maps addresses to their respective balances.

2.The deposit() function allows users to deposit funds into the contract. It uses require() to ensure that the deposited amount is greater than zero.

3.The withdraw() function allows the owner of the contract to withdraw funds. It checks that the caller is the owner and that the requested withdrawal amount does not exceed the sender's balance.

4.The revertExample() function showcases the use of revert() by reverting the transaction if the input number exceeds 100 or is less than 10.

5.The assertExample() function demonstrates the use of assert() by ensuring that the divisor b is not zero before performing the division operation.

6.The require function checks wether the Deposit amount is greater than zero or not.

Overall, this contract demonstrates how to handle errors and invalid inputs in Solidity using require, assert, and revert.
