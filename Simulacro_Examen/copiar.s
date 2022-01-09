 #------------------------------------------------------------------
#- SUBRUTINA: copiar(psrc, pdest)
#-- Debe copiar la cadena origen a la zona indicada por el
#-- puntero destino
#-- ENTRADAS:
#--    a0: Puntero a la cadena
#--    a1: Puntero a destino
#-- SALIDAS:
#--    nada
#------------------------------------------------------------------
	.globl copiar
	
	.text
	
copiar:	
bucle:
	#-- leeer caracter
	lb t0, 0(a0)
	#-- si es /0, terminar
	beqz t0, fin
	#-- copiar a destino
	sb t0, 0(a1)
	
	#-- incrementar punteros
	addi a0, a0, 1
	addi a1, a1, 1
	b bucle


fin:	#-- Ssalida
	ret