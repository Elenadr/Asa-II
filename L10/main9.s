#-- Programa principal
#-- pide al usuario una cadena, luego un prefijo y finalmente un sufijo. 
#-- Mediante llamadas a la función concat() debe construir una cadena formada por el prefijo-cadena-sufijo. 
#-- Esta cadena se imprimirá en la consola

	.include "servicios.s"
	.eqv MAX 1024
	.data
prefijo:  .space MAX
cadena:   .space MAX
sufijo:   .space MAX
msg:	.string "\nCadena: "
msg1:	.string "\nPrefijo: "
msg2:	.string "Sujifo: "
	
	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos la cadena por el teclado
	la a0, cadena
	li a1, MAX
	li a7, READ_STRING
	ecall
		
	#-- Imprimir el mensaje
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos prejifo
	la a0, prefijo
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Imprimir el mensaje sijigo
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Leer el sujifo
	la a0, sufijo
	li a1, MAX
	li a7, READ_STRING
	ecall

	#-- Concatear la cadena al prefijo
	la a0, prefijo
	la a1, cadena
	jal concat

	#-- Concatenar el sufijo
	la a0, prefijo
	la a1, sufijo
	jal concat
	
	#-- Imprimir salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Imprimir la cadena completa
	la a0, prefijo
	li a7, PRINT_STRING
	ecall 		
	#-- Terminar
	li a7, EXIT
	ecall
