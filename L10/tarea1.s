#---------------------------------
#-- Subrutina Tarea 1
#-- ENTRADAS: Ninguna
#-- SALIDAS: Ninguna
#---------------------------------

	#-- Punto de entrada
	.globl tarea1
	
	.include "servicios.s"

	.data
msg:	.string "  Tarea 1\n" 	
			
	.text
	
	
#-------- Punto de entrada
tarea1:

	#-- Es una función intermedia
	#-- Es una funcion que llama a orra funcion
	addi sp,sp,-16
	#-- Guardar direccion de retorno
	sw ra, 12(sp)
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- LLamar a la funcion tarea 2 
	jal tarea2
	
	#-- IMprimir el mensaje de nuevo
		#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	#-- Recuperar direccion de retorno
	lw ra,12(sp)
	#-- Liberar la pila
	addi sp,sp,16
	
			
#------- Punto de salida
	ret