
        .text

	addi x17, x0, 10
	addi x12, x0, 8
	addi x7, x0, 0
a:
	beq x17,x0,fin  #-- Comprueba terminacion
	add x7, x7, x12
	addi x17, x17, -1
	
	#-- repetir 
	
	b a
	
fin:
	li a7, 10
	ecall
