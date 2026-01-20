.text 
.globl main

main:
    addi x7, x0, 0        # intialize i = 0 for outer loop in register x7     

L1:
    addi x29, x0, 0       # intialize j = 0 for inner loop in register x29     

L2:
    add  x11, x7, x29     # register x11 to hold i+j = x7+x29
    slli x12, x29, 4      # shift left logic immediate-shift left by 4 bits (2^2) 
    add  x12, x12, x10    # register x12 to hold offset for D. add base address in x10 of D to offset
    sw   x11, 0(x12)      # store value i+j (x11) in memory at address x12

    addi x29, x29, 1      # add 1 to j, inner loop
    blt  x29, x6, L2      # checks if x29 (j) is less than x6 (b) and brances to L2, which is again inner loop [keep looping till j = b]

    addi x7, x7, 1        # add 1 to i, outer loop
    blt  x7, x5, L1       # checks if x7 (i) is less than x5 (a) and brances to L1, which is again outer loop [keep looping till i = a]



