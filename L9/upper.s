#-- Subrutina #-- 
#-- void upper(*cad)
#-- ENTRADAS:
#--    * a0: Puntero a la cadena
#-- SALIDAS:	
#--    * nada
#-------------------------------------------------------------------
	.include "servicios.s"
	.globl upper
	.text
upper:	
bucle:
	#-- Leer caracter
	lb t0, 0(a0)
	
	#-- Condicion de finalizacion
	li t1, '\n'
	beq t0, t1, fin
	
	#-- Si el caracter es menor que 'a' o mayor que 'z'
	#-- hay que pasar al siguiente
	li t1, 'a'
	blt t0,t1,next
	
	li t1, 'z'
	bgt t0, t1, next
	
	#-- Pasar a minuscila
	addi t0,t0,-32
	
	#-- Almacenar el caracter cifrado
	sb t0, 0(a0)

next:
	#-- Apuntar al siguiente caracter
	addi a0, a0, 1
	
	#-- Repetir
	b bucle

fin:	
	ret
