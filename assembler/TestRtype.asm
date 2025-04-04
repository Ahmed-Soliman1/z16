# Add some comments to describe the program

# the TEXT Section
    .text
    .org    0
main:
    # Your code goes here
    # you can use the ABI register names
    # Also, you may end the line with a comment
    addi s0,-5
    li s0, 50 	//s0 = 50
    li s1, 10 	//s1 = 10
    add s0, s1 	//s0 = s0 +s1 (s0=60)
    mv a0, s0 	//a0 = s0     (a0=60)
    ecall 1   	//print a0    (60)
    li t0, 3      //t0 = 3
    sub s0,t0  //s0 = s0 -3   (s0=57)
    mv a0, s0 	//a0 = s0     (a0=57)
    ecall 1   	//print a0    (57)
    
    slt t0,s0   //t0 will now be equal 1
    mv a0, t0 	//a0 = t0     (a0=1)
    ecall 1   	//print a0    (1)
    
    slt s1,t0   //will check if s1<t0 (10<1) no so s1 will be 0
    mv a0, s1 	//a0 = s1     (a0=0)
    ecall 1   	//print a0    (0)

    li s0, 5    //s0=5
    li s1, -10  //s1=-10
    sltu s0,s1  //s0=1
    mv a0, s0 	//a0 = s0     (a0=1)
    ecall 1   	//print a0    (1)

    li s0, -10    //s0=-10
    li s1, 5  //s1=5
    sltu s0,s1  //s0=0
    mv a0, s0 	//a0 = s0     (a0=0)
    ecall 1   	//print a0    (0)
    
    
    li t1,2	//t1 = 2
    li s0,57
    sll s0,t1   //s0 = s0 * 4  
    mv a0, s0 	//a0 = s0     
    ecall 1   	//print a0   (228) 
    
    li s0, -32  // s0= -16
    srl s0,t1   //s0 = s0 /4  (s0=4) //there will be no sign preservation
    mv a0, s0 	//a0 = s0     will be 4 not -4 
    ecall 1   	//print a0    (4)
    
    li s0, -32  // s0= -16
    sra s0, t1   //there is sign preservation
    mv a0, s0 	//a0 = s0     (a0=-4)
    ecall 1   	//print a0    (-4)
    
    li t0,4
    li t1,2
    or t1,t0 //t1 will be =6
    mv a0, t1 	//a0 = s0     (a0=6)
    ecall 1   	//print a0    (6)
    
    li t0,6
    li t1,3
    and t1,t0 //t1 will be =2
    mv a0, t1 	//a0 = s0     (a0=2)
    ecall 1   	//print a0    (2)

    li t0,2
    li t1,3
    xor t0,t1 //t0 = t0 ^t1 (t0=2^3)=1
    mv a0, t1 	//a0 = s0     (a0=1)
    ecall 1   	//print a0    (1)
    
   


    end:
    ecall 3
    


    # A sample label
    # A label cannot be followed by anything

# The DATA Section
    .data
    # if you don't provide a starting location, the DATA Section
    # starts immediately after the TEXT Section.
    .org    0x100

    # Some data definitions
str:   
    .asciiz "hello world!"
A:
    .byte   50
B:
    .word   0x23A0, 500, 30000
C:
    .space  200