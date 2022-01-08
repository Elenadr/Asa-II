#-----------------------------------------
# Subrutina line(car, long)
#--
#--  Imprimir una linea con el caracter car y de longitud long
#--
#-- ENTRADA: 
#     a0: caracter a usar en la linea
#     a1: Numero de caracteres a usar
#-- SALIDA: Ninguna
#--------------------------------------------

	#-- Punto de entrada
	.globl line8
	
	.include "servicios.s"

	.data
			
	.text
	
	
#-------- Punto de entrada
line8:
	
bucle:
	#-- COmprobamos sin a1, es igual a cero
	beqz a1, fin
	
	# si no imprimimos a0
	li a7, PRINT_CHAR
	ecall
	# restamos
	addi a1, a1, -1
	b bucle
	
fin:	li a0, '\n'
	li a7, PRINT_CHAR
	ecall

#------- Punto de salida
	ret
