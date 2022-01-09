#-------------------------
#-- Funcion Peso(pcad) 
#-- ENTRADAS:
#--    a0: puntero a la cadena
#-- SALIDAS:
#--    a0 : peso de la cadena
#-----------------------------
#----------------------------------------
	.globl peso
#-- Implementa aqui la funcion peso()

#-- ¡A por esos dos puntos!

	.text 
peso:
#--- inicializar peso a 0
	li t0, 0

bucle:	
	#--leer el primer caracter
	lb t1, 0(a0)
	#-- si es 0
	beqz t1, fin
	#-- si es /n fin
	li t2, '\n'
	beq t1, t2, fin
	
	add t0, t0, t1 #-- sumar valor del caracter
	#-- avanzar un caracter
	addi a0, a0, 1
	b bucle
fin:
	#--devolver en a0 el valor de la cadena
	mv a0, t0
	#-- salida
	ret