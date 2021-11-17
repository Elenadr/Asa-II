   .data
t: .word 0X6F, 0X7F, 0X07, 0X7D, 0X6D, 0X66, 0X4F
   .word 0X5B, 0X06, 0X3F
   .text
   la x5, t
   li x6, 0Xffff0010
   lw x10, 0(x5)
   sw x10, 0(x6)
   lw x10, 4(x5)
   sw x10, 0(x6)
   lw x10, 8(x5)
   sw x10, 0(x6)
   lw x10, 0xC(x5)
   sw x10, 0(x6)
   lw x10, 0x10(x5)
   sw x10, 0(x6)
   lw x10, 0x14(x5)
   sw x10, 0(x6)
   lw x10, 0x18(x5)
   sw x10, 0(x6)
   lw x10, 0x1c(x5)
   sw x10, 0(x6)
   lw x10, 0x20(x5)
   sw x10, 0(x6)
   lw x10, 0x24(x5)
   sw x10, 0(x6)
   li a7, 10
   ecall