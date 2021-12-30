# -- Escribir un programa que pida al usuario un número entero y que imprima por pantalla su carácter ASCII correspondiente. 
#-- NOTA: Para que sea un caraćter ASCII visible, el entero deberá estar comprendido entre 33 y 126

	.include "servicios.asm"
	
	
	.data
msg:	.string "Introduzca codigo ASCII: "
msg2:	.string "El caracter es: "

	.text
	
	#-- Imprimimos la cadena
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir número
	li a7, READ_INT
	ecall
	
	# --mover a registro temporal
	mv t0, a0
	
	#-- Imprimimos la otra cadena
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	# Imprimir el ascii
	mv a0, t0
	li a7, PRINT_CHAR
	ecall
	#Punto de salida
	li, a7, EXIT
	ecall