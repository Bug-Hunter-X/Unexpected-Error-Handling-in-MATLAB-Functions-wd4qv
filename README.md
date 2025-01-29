# Unexpected Error Handling in MATLAB Functions

This repository demonstrates an uncommon error that can occur in MATLAB when using the `error` function within a function designed to return a value.  The unexpected behavior arises from how MATLAB handles errors and function return values. 

## The Bug

The `bug.m` file contains a simple function, `myFunction`, that checks for a negative input value. If a negative value is found, the function throws an error.  However, the function also attempts to return a value (`result`).  This combination can lead to difficulties in determining whether the function has completed successfully. 

The error message is triggered by calling the function with a negative input value. It halts execution. 

## The Solution

The `bugSolution.m` file addresses this issue by using `try-catch` blocks to handle the error gracefully. This approach allows you to handle potential errors and return a specified value or take alternative actions while maintaining the ability to execute subsequent code.  The example returns NaN if there is an error.  The function maintains its return-value nature.