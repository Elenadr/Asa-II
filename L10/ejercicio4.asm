#-- Programa principal 
	.include "servicios.s"
	.text
	
	
	
	
	#-- Pedir un número de usuario
	
	#-- Llama a la función print int(num)
	li a0, 5
	jal print_int
	
	#-- Punto salida
	li a7, EXIT
	ecall