      .data
dato: .word 0xCACABACA

      .text
      la x5, dato
      li a7, 10
      ecall