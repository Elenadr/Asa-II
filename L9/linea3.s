#-- Función linea (car,x)
#-- Entrada
#--  a0: Caracter a imprimir
#--  a1: Número de asteriscos a imprimir
#-- Salida:
#-- Ninguno
#------------------------------------------------
	.include "servicios.s"
	.globl linea3
	.text
	
linea3:
	#-- IMrimir caracer introducidon
	
	mv t0, a0
	#-- t0. va a ser mi contador de asteriscos
	mv t1,a1
	
	
bucle:	
	#-- Si t1==0 terminar
	beqz t1, fin
	#Quedan asteriscos por impriir
	mv a0,t0
	li a7, PRINT_CHAR
	ecall
	#Qued uno menos por imprimir
	addi t1, t1, -1
	b bucle
fin:	
	#-qz - Punro de salida
	ret
