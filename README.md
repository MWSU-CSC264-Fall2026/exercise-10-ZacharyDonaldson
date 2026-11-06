# exercise-10

## Overview

The point of this assignment is to get hands-on with arrays, loops, conditionals, and subroutines. You will call a subroutine named `sum_even`, pass an array address and length, receive a return value, and store the results in memory.

This exercise focuses on iterating through an array and applying a condition to each element. No stack frame is required unless you choose to use `s` registers.

Complete the provided `main.s` file using the Venus simulator extension in VS Code.

## Required Work

As always, the specifics can be found in comments in the source code, but the general idea is:

You will be given three arrays and three memory variables: `result1`, `result2`, and `result3`.

You will call a subroutine named `sum_even` three times, once for each array. After each call, you will store the returned value into the corresponding result variable.

You will also implement the `sum_even` subroutine. It should:

- receive the address of an array in `a0`,
- receive the number of elements in `a1`,
- examine each element in the array,
- add together only the even values,
- return the sum in `a0`.

There are multiple valid ways to implement `sum_even`. Any correct approach is fine.

The lengths of the arrays are provided as `len1`, `len2`, and `len3`.

The completion message is already provided in the starter code. Do not change the string if you want the output check to pass.

## Hint: Checking for Even Numbers

An integer is even if its lowest bit is 0. You can check that with `andi`.

For example, if a value is in `t0`:

```assembly
andi t1, t0, 1
beqz t1, is_even
```

If the result of the `andi` is zero, the value is even. If the result is one, the value is odd. `beqz` means "branch if equal to zero".

Other correct even-checks are also fine.

## Grading

- `result1` contains the even sum of `array1`: 18 points
- `result2` contains the even sum of `array2`: 18 points
- `result3` contains the even sum of `array3`: 18 points
- Output contains `Even Sum Exercise Complete!`: 2 points
- You will not receive credit for correct values if they were not calculated in a valid way.

# Submitting Work

When you are done working, or just want to save your progress, you need to **commit AND push** your work to your repository. This can be done in any number of ways, but as I have suggested and will continue to suggest, GitHub Desktop makes this very easy. If you need more information on exactly how to do this, I suggest watching the tutorial video posted on canvas. When you are all done, submit the link to your GitHub repo to canvas. Submitting the link is just so canvas doesn't think you skipped the assignment, it has no bearing on your actual grade.

Here is some more information about submission:

1. Committing alone is not enough to submit your work. You must also push. The push step immediately follows the commit step. Without pushing, your work has not actually been submitted. 
2. If you want to check that your work has truly been submitted, you can always go to your repository online and view your most recent changes. 
3. You can commit and push as many times as you want. There is no limit, and it does not trigger any grading. It does however enable me to see your work/changes. So if you ever need my help with a programming issue, you must commit and push first.