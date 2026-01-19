.text 
.globl main 

main: 
    #a is a character array 
    li x10, 0x100 

    #b is a short array  
    li x11, 0x200 

    #c is an unsigned integer array 
    li x12, 0x300 

    # initializing array a  
    li x13, 1 
    sb x13, 0(x10)  #a[0]=1 
    li x13, 2 
    sb x13, 1(x10)  #a[1]=2 
    li x13, 3
    sb x13, 2(x10)  #a[2]=3 
    li x13, 4 
    sb x13, 3(x10)  #a[3]=4 
 
    #initializing array b 
    li x14, 10 
    sh x14, 0(x11)   #b[0]=10 
    li x14, 20 
    sh x14, 2(x11)   #b[1]=20 
    li x14, 30 
    sh x14, 4(x11)   #b[2]=30 
    li x14, 40 
    sh x14, 6(x11)   #b[3]=40 
 
    #initializing array c by adding a and b 
    #c [0]=a[0]+b [0] 
    lb x13, 0(x10)
    lh x14, 0(x11) 
    add x15, x13, x14  
    sw x15, 0(x12)

    #c [1]=a [1]+b [1] 
    lb x13, 1(x10) 
    lh x14, 2(x11) 
    add x15, x13, x14  
    sw x15, 4(x12) 

    #c [2]=a [2]+b [2] 
    lb x13, 2(x10) 
    lh x14, 4(x11) 
    add x15, x13, x14  
    sw x15, 8(x12) 

    #c [3]=a [3]+b [3] 
    lb x13, 3(x10) 
    lh x14, 6(x11) 
    add x15, x13, x14  
    sw x15, 12(x12) 

end: 
    j end