# --Programa para imprimir los nueros del 1 al 10 y luego terminar

	.include "servicios.asm"
	.eqv MAX 10 #--VALOR máximo de la cuenta.
	
	
	.text 
	# --Necsito un contador
	#-- T0 regitro cntado inicializado a 0
	li t0, 0
	#-- NECESITAMOS EL VALOR MÁSIMO EN UN registro apra compararlo
	li t1, MAX

bucle:
	#lt -- incremetnar el contador
	addi t0, t0, 1
	#-- imprimir el contador
	#over a a0 el contadr
	mv a0, t0
	li a7, PRINT_INT
	ecall
	#-- imprimir salto de línea
	
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	blt t0,t1,bucle
	#comprobar si ha llegado al valo máximo contador < max? si es más pequeño repetimos el bucle
	#-- Conrador = max
	


	#-- PUNTO DE SALIDA
fin:	
	#-- Terminar
	li a7, EXIT
	ecall
