
   .data

a:
  .word 0
  .word 0

   .text
   la x5, a
   li x6, 0xFF
   sw x6, 4(x5)