    .text
    .org 0
main:
li t0,63
li s0,63

add s0,t0
add s0,t0
add s0,t0
addi s0,4
mv a0,s0
ecall 1




    
    

    
    ecall 3

    .data
    .org 0x100
str: 
    .asciiz "H"leol ,oWlr!d"

