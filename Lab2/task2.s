.text 
.globl main 

main: 
addi x22, x0, 2 #b=2 
addi x23, x0, 3 #c=3 

addi x20, x0, 1 #x=1, for testing 
addi x5, x0, 1 
beq x20, x5, case1 #if x=1, go to case1 

addi x5, x0, 2 
beq x20, x5, case2 #if x=2, go to case2 

addi x5, x0, 3 
beq x20, x5, case3 #if x=3, go to case3 

addi x5, x0, 4 
beq x20, x5, case4 #if x=4, go to case4 


j default 
case1: 

add x21, x22, x23 #a=b+c 
j Exit 


case2: 
sub x21, x22, x23 # a=b-c 
j Exit 
case3: 

slli x21, x22, 1 #a=b*2, shift left logic immediate-shift left by n bits (2^n) 

j Exit 
case4: 

srai x21, x22, 1 #a=b/2, shift right arithnic immediate -shifts righnt by n bits (2^n) 
j Exit 
default: 

addi x21, x0, 0 #a=0 
Exit: 