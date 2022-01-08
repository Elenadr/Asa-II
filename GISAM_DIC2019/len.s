 #------------------------------------------------------------------
#- SUBRUTINA: len(cad)
#-- Calcular la longitud de una cadena
#-- Como final de cadena se usa \0 y \n
#-- ENTRADAS:
#--    a0: Puntero a la cadena
#-- SALIDAS:
#--    a0: Longitud de la cadena
#------------------------------------------------------------------

	.globl len
	.include "so.s"
	.data
	
	.text
len:	

	li t0,0
bucle:	
	lb t1, 0(a0)
	#- Si el caracter es \n, terminar
	li t2, '\n'
	beq t1, t2, fin
	#-- Si es 0 terminar
	beq t1, zero, fin
	
	#-- si no sumamos al contador
	addi t0,t0,1
	#-- Apuntar siguinete carcaryer
	addi a0,a0,1
	b bucle
	
	
	# fin bucle
fin:

	#Punto de salida
	mv a0, t0	
	#-- salida
	ret