#-- Subrutina #-- 
#-- void ATOI(*cad)
#-- ENTRADAS:
#--    * a0: Puntero a la cadena
#-- SALIDAS:	
#--    * nada
#-------------------------------------------------------------------
	.include "servicios.s"
	.globl atoi
	.text
atoi:	
	li t0, 0
	
next_car:
	#-- Leer caracter
	lb t1, 0(a0)
	
	#-- Condicion de finalizacion
	li t5, '\n'
	beq t1, t5, fin
	
	#-- Si el caracter no es cero
	#-- multiplicar t0 por 10
	li t2, 10
	
	mul t0,t0,t2
	#-- Obtener el numero del digito (t1 - '0')
	li t3, '0'
	sub t4, t1, t3  #-- t4 = t1 - '0
	
	#-- t0 = t0 + t4
	add t0, t0, t4
	
	#-- Apuntar al siguiente caracter
	addi a0, a0, 1
	
	#-- Repetir
	b next_car
	
fin:	
	mv a0,t0
	ret