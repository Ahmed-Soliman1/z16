# Add some comments to describe the program

# the TEXT Section
    .text
    .org    0
main:
    # Your code goes here
    # you can use the ABI register names
    # Also, you may end the line with a comment
    li s0, 50      // s0 = 50
    addi s0, 10    // s0 = s0 + 10 (s0 = 60)
    mv a0, s0      
    ecall 1        // print 60




    li s0, 3       // s0 = 3
    slli s0, 2     // s0 = s0 << 2 (s0 = 12)
    mv a0, s0
    ecall 1        // print 12

    li s0, 16      // s0 = 16
    srli s0, 2     // s0 = s0 >> 2 (logical shift, s0 = 4)
    mv a0, s0
    ecall 1        // print 4

    li s0, -16     // s0 = -16
    srai s0, 2     // s0 = s0 >> 2 (arithmetic shift, preserves sign)
    mv a0, s0
    ecall 1        // print -4

    li t0, 4       // t0 = 4 (0100)
    ori t0, 2      // t0 = t0 | 2 (t0 = 6)
    mv a0, t0
    ecall 1        // print 6

    li t0, 6       // t0 = 6 (0110)
    andi t0, 3     // t0 = t0 & 3 (t0 = 2)
    mv a0, t0
    ecall 1        // print 2

    li t0, 2       // t0 = 2 (0010)
    xori t0, 3     // t0 = t0 ^ 3 (t0 = 1)
    mv a0, t0
    ecall 1        // print 1

    li s0, 100     // s0 = 100
    mv a0, s0
    ecall 1        // print 100

    li a7, 10
    ecall

    .data
    .org 0x100
