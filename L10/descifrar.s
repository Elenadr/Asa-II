# La función descifrar(pcad, k) tiene los mismos parámetros que la función cifrar() 
#-- Está implementanda llamando a la función de cifrar pero con la clave -k (la clave cambiada de signo)
#-----------------------------------------------------
#-- Funcion: cifrar(pcad, k)
#--
#-- ENTRADAS:
#--  a0: Puntero a la cadena 1
#--  a1: clave (1 -255))
#-- SALIDAS: Ninguna
#----------------------------------------------------
#-- Punto de entrada
	.globl descifrar
	
	.text
descifrar:	
	
	addi sp, sp, -16
	
	sw ra, 12(sp)
	
	#-- Multiplicar a1 por -1
	li t0, -1
	mul a1, a1,t0
	
	# -- llamar a ifrar
	jal cifrar
	
	lw ra, 12(sp)
	
	addi sp, sp, 16
	
fin:
	#-- Terminar
	ret