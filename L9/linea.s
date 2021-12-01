#-- Función linea
#-- Entrada
#--  a0: Número de asteriscos a imprimir
#-- Salida:
#-- Ninguno
#------------------------------------------------
	.include "servicios.s"
	.globl linea
	.text
	
linea:
	#-- IMrimir una línea de asteriscos
	#-- de longitud n
	
	#-- t0. va a ser mi contador de asteriscos
	mv t0,a0
bucle:	
	#-- Si t0==0 terminar
	beqz t0, fin
	#Quedan asteriscos por impriir
	li a0, '*'
	li a7, PRINT_CHAR
	ecall
	#Qued uno menos por imprimir
	addi t0, t0, -1
	b bucle
fin:	
	#-qz - Punro de salida
	ret