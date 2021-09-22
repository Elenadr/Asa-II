# Programa que asigna los siguientes valores a los registros indicados.
# x3 = 3 ; x4 = 4; x5 = 5; x6 = 6 ; x7 = 7

	.text 
	
	addi x3, x0, 3
	addi x4, x0, 4
	addi x5, x0, 5
	addi x6, x0, 6
	addi x7, x0, 7
	
	li a7, 10
	
	ecall
