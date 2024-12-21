# Silent Failure in R Data Frame Subsetting with Misspelled Column Names

This repository demonstrates a subtle but potentially problematic issue in R when subsetting data frames using character vectors containing misspelled column names.  The code silently omits columns with misspelled names instead of throwing an error or warning, which can lead to hard-to-detect bugs.

The `bug.R` file contains the buggy code, and `bugSolution.R` provides a solution using more robust subsetting techniques.

## Problem
The standard `[` subsetting method in R does not produce an error if you provide a column name that doesn't exist. Instead, it simply omits that column from the result, making the bug hard to catch.

## Solution
The solution uses a safer approach to ensure all specified columns exist before subsetting. This involves checking for the existence of each column name in the data frame's names.
