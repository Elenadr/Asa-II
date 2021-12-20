#-- Función print_int(num)
#-- Entrada: a0 -> numero entero a iprimir
#-- Salida: NINGUNO
#---------------------

	.globl print_int
	.include "servicios.s"
	
	.data
msg:	.string "--> "
	.text
	
	
print_int:
	# FUNCIÓN HOJA
	#No tiene que llamar a ninguna otra
	
	mv t0,a0
	
	# IMprimir el numero entero
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	mv a0,t0
	li a7, PRINT_INT
	ecall
	
	
	#Punto de salida
	ret
