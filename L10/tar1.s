#---------------------------------
#-- Subrutina Tarea 1
#-- ENTRADAS: Ninguna
#-- SALIDAS: Ninguna
#-- Función hoja
#---------------------------------

	#-- Punto de entrada
	.globl tar1
	
	.include "servicios.s"

	.data
msg:	.string "  Tarea 1\n" 	
			
	.text
	
	
#-------- Punto de entrada
tar1:
	addi sp, sp, -16
	sw ra, 12(sp) #-- Guardar registro ra en la pila
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	jal tar2
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	lw ra, 12(sp) #-- Recurperar el registro ra de la pila
	addi sp, sp, -16		
#------- Punto de salida
	ret