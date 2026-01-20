.text
.globl main
main:
    li x10, 0x78786464 #initialize register x10 with value 0x78786464
    li x11, 0xA8A81919 #initialize register x10 with value 0xA8A81919

    li x1, 0x100  #intilalize register x1 with address 0x100
    sw x10, 0(x1) #store value in x10 to memory at address 0x100

    li x2, 0x1F0  #intilalize register x2 with address 0x1F0
    sw x11, 0(x2) #store value in x11 to memory at address 0x1F0

    lhu x12, 0(x1) #store value in x12 to memory at address 0x100

    lh x13, 0(x2) #store value in x13 to memory at address 0x1F0

    lb x14, 0(x2) #store value in x14 to memory at address 0x1F0


end:
    j end