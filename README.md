# Binomial Coefficients Calculator Using Recursion

This assignment will provide students the opportunity to prove their ability to implement recursive functions.

# Product Owner Statement

I love representing mathematics in computer code. As a result, I wrote a C program that is able to calculate binomial coefficients. My calculator appears to work as long as the input parameters are 12 or less.

- My program calculates 12 choose 6 correctly as 924.
- Obviously 13 choose 1 should be 13 but my calculator returns the value 4 as the answer.

I am a little puzzled.  The value 13 is well below the maximum integer value of approx 2.14 billion. I simply do not understand why my program is not able to calculate 13 choose 1 correctly.  A friend suggested there may be an integer overflow problem in the intermediate calculations of the binomial coefficient formula.

I need you to modify my code to implement a recursive approach to calculating binomial coefficients.

# Acceptance Criteria

Below is a list of requirements you must follow to achieve credit for this assignment.

- The program should accept two input parameters that are guaranteed to be integers greater than `-100` and less then or equal to `30`.
- The program should be able to accurately calculate `k` choose `c` where `-100 < k <= 30` and `-100 < c <= 30`.
- The program must handle special cases related to the inputs. The following are a list of special cases.
    - `k=c`
    - `c<0` and `k>0`
    - `c>k`
    - `k<0`
- You are only allow to include the following libraries
    - `#include <stdio.h>`
    - `#include <stdlib.h>`
- You are not permitted to make any changes to the `main` function.
- You are not permitted to make any changes to the `factorial` function.
- Do not change the function signature `int binom(int k, int c)`
- You must modify the function `binomial_coefficient` to be a recursive function. Wikipedia has a recursive formula that you an use (https://en.wikipedia.org/wiki/Binomial_coefficient)
- The program must be concise. The source code file must be less than 700 bytes.