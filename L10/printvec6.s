#---------------------------------
#-- FUNCIÓN HOJA
#-- Subrutina printvect6
#-- ENTRADAS: a0: int //cord x
#--           a1: int // cord y
#-- SALIDAS: Ninguna
#-- función printvect6(x,y)
#--  Se imprime en la consola el vector de esta forma: "(x,y)"
#---------------------------------


	#-- Punto de entrada
	.globl printvec6
	
	.include "servicios.s"

	.data
			
	.text
	
	
#-------- Punto de entrada
printvec6:
	#-- Comienzo subruina
	addi sp, sp, -16
	sw a0, 0(sp) #-- Guardar registro ra en la pila
	
	li a0, '('
	li a7, PRINT_CHAR
	ecall

	lw a0, 0(sp) #-- sacar de la pila
	li a7, PRINT_INT
	ecall
	
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	mv a0, a1
	li a7, PRINT_INT
	ecall
	
	li a0, ')'
	li a7, PRINT_CHAR
	ecall
	
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	#-- final subruina
	addi sp, sp, 16
#------- Punto de salida
	ret
