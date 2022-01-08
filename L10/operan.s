#---------------------------------
#-- FUNCIÓN HOJA
#-- Subrutina operan(num)
#-- ENTRADAS: a0: int
#-- SALIDAS: Ninguna
#-- función operan(num) 
#-- Debe imprimir el valor del número entero pasado, llamando a print_int(), 
#--luego debe multiplicar este número por dos, llamando a la función mult2(), 
#--y finalmente debe volver a imprimir el número original llamando otra vez a print_int()
#---------------------------------

	#-- Punto de entrada
	.globl operan
	
	.include "servicios.s"

	.data
msg1:	.string "\n--> " 	
			
	.text
	
	
#-------- Punto de entrada
operan:
	#-- Comienzo subruina
	addi sp, sp, -32
	sw ra, 28(sp) #-- Guardar registro ra en la pila
	
	##-- INSTRUCCIONES SUBRUTINA
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
	
	#--Llamar a multdos
	jal multdos
	
	#-- VOLVEMOS DE MULT DOS, GUARDAMOS EL a0
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
	
	jal operan
	#-- Fin de la subrutina
	lw ra, 12(sp) #-- Recurperar el registro ra de la pila
	addi sp, sp, 16
	#------- Punto de salida
	ret
