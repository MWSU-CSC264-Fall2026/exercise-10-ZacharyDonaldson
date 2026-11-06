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

    # Call sum_even for array1
    la a0, array1
    lw a1, len1
    jal ra, sum_even
    sw a0, result1

    # Call sum_even for array2
    la a0, array2
    lw a1, len2
    jal ra, sum_even
    sw a0, result2

    # Call sum_even for array3
    la a0, array3
    lw a1, len3
    jal ra, sum_even
    sw a0, result3

    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall


# Implement sum_even.
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

    li t0, 0              # t0 = sum

loop:
    beqz a1, done_sum     # if length == 0, finish

    lw t1, 0(a0)          # load current array element
    andi t2, t1, 1        # check if value is odd
    bnez t2, skip_add     # if odd, don't add it

    add t0, t0, t1        # add even value to sum

skip_add:
    addi a0, a0, 4        # move to next array element
    addi a1, a1, -1       # decrease remaining length
    j loop

done_sum:
    mv a0, t0             # return sum in a0
    ret