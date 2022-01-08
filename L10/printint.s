#---------------------------------
#-- Subrutina Tarea 2
#-- ENTRADAS: a0: int
#-- SALIDAS: Ninguna
#-- función print_int(num) 
#-- que imprime este número precedido por la cadena "-->". La función print_int tiene como parámetro de entrada 
#-- el número entero y no devuelve nada.
#---------------------------------

	#-- Punto de entrada
	.globl printint
	
	.include "servicios.s"

	.data
msg1:	.string "--> " 	
			
	.text
	
	
#-------- Punto de entrada
printint:
	#-- guardar el entero
	mv t0, a0
	#-- Imprimir el mensaje
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	#-- guardar el entero
	mv a0, t0
	#-- Imprimir el entero
	li a7, PRINT_INT
	ecall
			
#------- Punto de salida
	ret