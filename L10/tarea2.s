#-- Función tarea 2
#-- Entrada: NINGUNO
#-- Salida: NINGUNO
#---------------
	.globl tarea2
	.include "servicios.s"
	.data
msg:	.string "  Tarea 2\n" 	
	.text
tarea2:
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	#-- Punto salida
	ret