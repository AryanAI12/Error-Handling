# Error-Handling
In these project we have used three function require(), revert(), assert().

1.setValue(uint _value): This function sets the value variable to the input _value, but it has some error handling:

It uses a require statement to ensure that _value is greater than 0. If this condition fails, it will revert the transaction with the specified error message.

It uses an assert statement to ensure that _value is different from the current value of value. assert is used for internal consistency checks. If this condition fails, it indicates a bug in the code and will revert the transaction.

2.performDivision(uint _numerator, uint _denominator): This function performs division of two numbers but also includes error handling:

It uses a require statement to ensure that _denominator is not zero. If it is, it will revert the transaction with the specified error message.

It checks if _numerator is divisible by _denominator using the modulo operator. If it's not divisible, it reverts the transaction with the specified error message using revert.

If the above conditions pass, it performs the division and returns the result.

Overall, this contract demonstrates how to handle errors and invalid inputs in Solidity using require, assert, and revert.
