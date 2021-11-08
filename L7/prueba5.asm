# -- Ejemplo de programa de toma de decisiones
# --  Programa que iprima mensaje, son iguales si
#-- t0 y t1 son iguales o el mensaje son diferentes si 
# -- el registro t0 y t1 son diferentes.

	.include "servicios.asm"
	
	.eqv valor1 30
	.eqv valor2 40
	.data
msg_equals: .string "Son iguales"
msg_diferents: .string "Son diferentes"
	
	.text
	
	# -- Inicializar los registros
	li t0, valor1
	li t1, valor2
	
	#-- Hacemos la coparación
	beq t0,t1, son_iguales
	
	#-- No son iguales
	# -- Imrpimir el mensaje, son diferentes
	# -- y terminar
	la a0, msg_diferents
	li a7, PRINT_STRING
	ecall
	
		#Terminar
	li a7, EXIT
	ecall
	
#-- si son iguales
son_iguales:
#-- imprimir son iguales
#-- yy terminar
	la a0, msg_equals
	li a7, PRINT_STRING
	ecall

	
	#Terminar
	li a7, EXIT
	ecall