#------------------------------------------------------------------
#- SUBRUTINA: exp(a, n)
#-- Esta función multiplicad dos enteros
#-- ENTRADAS:
#--    a0: base
#--    a1: exponente
#-- SALIDAS:
#--    a0 : resultado
#------------------------------------------------------------------

	.include "so.s"
	.globl exp
	
	.text
exp:	
	#-- creamos la pila
	addi sp, sp, -16
	#-- guardamos la direccion
	sw ra, 12(sp)
	
	#-- guardar en la pila sw0 y sw1
	sw s0, 8(sp)
	sw s1, 4(sp)
	#-- valor intermetiod
	sw s2, 0(sp)
	
	mv s0, a0
	mv s1, a1
	li s2, 1
bucle:	
		
	# -- Calcular base * s2 (Multiplicar la base por el resultado parcial)
	mv a0, s0 #-- Base
	mv a1, s2 #-- Resultado parcial
	jal mult
	
	#-- El resultado lo guardamos en s2
	mv s2, a0 
	
	#-- Decrementar el exponente (que lo usamos de contador)
	addi s1, s1, -1
	
	#-- Cuando sea 0 hemos terminado
	bgt s1, zero, bucle
	
	
	#-- Hemos terminado
	#-- El resultado se devuelve por a0
	mv a0, s2
	
	#-- Recuperar los registros estáticos de la pila 
	lw s0, 8(sp)
	lw s1, 4(sp)
	lw s2, 0(sp)

        #- Recuperar la direccion de retorno
        lw ra, 12(sp)
        
	# -- Recuperar la pila
	addi sp, sp, 16
	ret