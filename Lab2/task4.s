.text 
.globl main

main:
    addi x7, x0, 0        

Outer:
    addi x29, x0, 0       

Inner:
    add  x11, x7, x29     
    slli x12, x29, 4      
    add  x12, x12, x10    
    sw   x11, 0(x12)      

    addi x29, x29, 1      
    blt  x29, x6, Inner  

    addi x7, x7, 1        
    blt  x7, x5, Outer  


