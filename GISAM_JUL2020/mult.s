#------------------------------------------------------------------
#- SUBRUTINA: MULT(A,B)
#-- Esta función multiplicad dos enteros
#-- ENTRADAS:
#--    a0: Entero 32 bits
#--    a1: Entero 32 bits
#-- SALIDAS:
#--    a0 : a*b multiplicado
#------------------------------------------------------------------

	.include "so.s"
	.globl mult
	
	.text
mult:	
	li t0, 0
bucle:	#-- comprobar terminación
	#-- si es 0, retornamos
	beqz a0, fin
	
	add t0, t0, a1
	addi a0, a0, -1
	
	b bucle

fin:	#-- Ssalida
	mv a0, t0
	ret