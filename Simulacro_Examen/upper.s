 #------------------------------------------------------------------
#- SUBRUTINA: upper(pcad)
#-- COnvierte a mayusculas
#-- ENTRADAS:
#--    a0: Puntero a la cadena
#-- SALIDAS:
#--    nada
#------------------------------------------------------------------
	.globl upper
	
	#-- Segmento de código
	.text
upper:	
	#-- a0 es el puntero a la cadena
	#-- leer caracter
bucle:
	lb t0, 0(a0)
	beqz t0, fin
	
	#-- solo  cambiamos caracteres entre a y z
	li t1, 'a'
	blt t0,t1, next
	
	li t2, 'z'
	bgt t0,t2, next
	#-- para pasarlo a mayusculas hayq ue restar 32
	addi t0,t0,-32
	sb t0, 0(a0)
next:
	addi a0,a0,1
	b bucle
	
fin:	#--z  Punto de salida
	ret