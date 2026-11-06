# exercise-10 starter code

.data
result1: .word -1
result2: .word -1
result3: .word -1

array1: .word 3, 8, 5, 2, 7, 4
len1:   .word 6

array2: .word 1, 3, 5, 7
len2:   .word 4

array3: .word 2, 4, 6, 8
len3:   .word 4

done:   .asciiz "Even Sum Exercise Complete!\n"

.text
.globl main
main:

    # TODO: Call sum_even for array1.
    # Put the address of array1 in a0.
    # Put the length of array1 in a1.
    # Store the returned value in result1.



    # TODO: Call sum_even for array2.
    # Put the address of array2 in a0.
    # Put the length of array2 in a1.
    # Store the returned value in result2.



    # TODO: Call sum_even for array3.
    # Put the address of array3 in a0.
    # Put the length of array3 in a1.
    # Store the returned value in result3.



    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall


# TODO: Implement sum_even.
#
# Arguments:
#   a0 = address of array
#   a1 = number of elements
#
# Returns:
#   a0 = sum of all even integers in the array
#
# Notes:
#   - Use a loop to examine each element.
#   - Use base+offset addressing to access array elements.
#   - Add only even values.
#   - You may use t registers freely.
#   - If you use s registers, save and restore them.
sum_even: