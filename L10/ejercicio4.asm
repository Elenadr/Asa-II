#-- Programa principal 
	.include "servicios.s"
	.data
msg:	.string "Introduce un numero: "

	.text
	# IMprimir msg
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	
	li a7, READ_INT
	ecall
	#eN A0 ESTÁ eñ num pedodp r eñ user
	
	
	
	#-- Pedir un número de usuario
	
	#-- Llama a la función print int(num)
	#li a0, 5
	jal print_int #-- Print int (5)
	
	#-- Punto salida
	li a7, EXIT
	ecall
