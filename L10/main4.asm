#-- Programa principal
#-- Escribir un programa principal que pida al usuario un número entero y llame a la función print_int(num) 
#-- que imprime este número precedido por la cadena "-->". La función print_int tiene como parámetro de entrada 
#-- el número entero y no devuelve nada. Tanto el programa principal como la función print_int() deben estar en archivos separadados

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
	jal printint
		
	#-- Terminar
	li a7, EXIT
	ecall