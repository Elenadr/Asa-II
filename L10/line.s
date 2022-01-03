# -- SUBRUTINA 
# -- line(car,anch)
# -- Se imprime una línea formada por el carácter car repetido anch veces
# -- Entradas:
# -- 	a0: catacyer
# -- 	a1: entero
# -- Salidas:
# --   Ninguna
#------------------------------------------------------------------------------------------

	.globl line

	.include "servicios.s"
	
	.text
	
line:
bucle:	
	# -- comprobación de fin
	beq a1, t0, fin
	
	# -- Imprimir el caracter
	li a7, PRINT_CHAR
	ecall
	
	addi a1, a1, -1
	
	#-- fin bucle
	b bucle
	
fin:	#-- Mprimir caracter de newline
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	ret