#-- Función len tiene como primer argumento el puntero a la cadena a calcular su longitud y devuelve dicha longitud. 
#--El prototipo de la función es:
#-- int len(*cad)
#-- Entrada
#--  a0: Puntero a la cadena a calcukar
#-- Salida:
#-- a0: Longitud de la cadena
#------------------------------------------------
	.include "servicios.s"
	.globl len
	.text
	
len:
	#-- Inicializar contador de caracteres
	li t0, 0
	
bucle:	
	#-- LEER caracyer de la cadena (t1)
	lb t1, 0(a0)
	
	#-- Si es '\n' terminar
	li t2, '\n'
	beq t1,t2, fin
	
	#-- Incrementar numero de caracteres
	addi t0, t0, 1
	# apuntar al siguiente caracter
	addi a0, a0, 1
	b bucle
fin:	
	# Devolcer el numero de caracteres
	mv a0, t0
	#-qz - Punro de salida
	ret
