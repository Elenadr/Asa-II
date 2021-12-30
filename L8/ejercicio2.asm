#-- Escribe un programa que pida al usuario que introduzca un carácter y que imprima su código ASCII. 
#-- Su funcionamiento se muestra en esta animación

	.include "servicios.asm"

 	.data
msg:	.string "Introduzca un carácter: "
msg2:	.string "\nSu código ASCII es:  " 

	.text

	#-- Imprimimos la cadena
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir número
	li a7, READ_CHAR
	ecall

	# --mover a registro temporal
	mv t0, a0
	
	#-- Imprimimos la otra cadena
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	# Imprimir el ascii
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Punto de salida
	li,a7,EXIT
	ecall