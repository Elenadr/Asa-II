#-- Programa principal
#-- Escribir un programa principal que pida al usuario un número entero y llame a la El programa pricipal debe invocar
#-- a la función operan(num) en vez de print_int()

	.include "servicios.s"
	
	.data
msg:	.string "Introduce un numero: "
	
	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Leer el enterp
	li a7, READ_INT
	ecall
	
	#-- Llamar a la funcion tarea1
	jal operan
		
	#-- Terminar
	li a7, EXIT
	ecall