#---------------------------------
#-- Subrutina Tarea 2
#-- ENTRADAS: Ninguna
#-- SALIDAS: Ninguna
#---------------------------------

	#-- Punto de entrada
	.globl tar2
	
	.include "servicios.s"

	.data
msg:	.string "     Tarea 2\n" 	
			
	.text
	
	
#-------- Punto de entrada
tar2:

	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
			
#------- Punto de salida
	ret