.text 
.globl main 


main: 
    addi x24, x0, 5 #a=5 
    addi x25, x0, 0 #b=0+0 


    addi x24, x25, 32 #a=b+32 
    add x04, x24, x25 #temp1=a+b 


    addi x26, x04, -5 #d=temp1-5 

    sub x05, x24, x26 #temp2=a-d 

    sub x06, x25, x24 #temp3=b-a 

    add x27, x05, x06 #e=(a-d)+(b-a) 

    add x27, x27, x26 #e=((a-d)+(b-a))+d 

    add x07, x24, x25 #temp4=a+b 

    add x07, x07, x26 #temp4=a+b+d 

    add x27, x07, x27 #e=temp4+e 

end: 
    j end 