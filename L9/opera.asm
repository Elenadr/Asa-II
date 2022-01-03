# -- SUBRUTINA 
# -- operar(x,y,xinc, yinc)
#-- Imprimir el vector (x,y)
#-- Imprimir el vector incrementado (x+xinc, y+yinc)
# -- Entradas:
# -- 	a0:cOORDENADA x
# -- 	a1:cOORDENADA y
# -- 	a2: Incremento de x
# -- 	a3: Incremento de y
# -- Salidas:
# --   Ninguna
#------------------------------------------------------------------------------------------

	.globl opera

	.include "servicios.s"
	
	.text
	
opera:	

	#--- Crear pila
	addi sp, sp, -32
	
	#-- Guardar direccion de retorno
	sw ra, 28(sp)
	
	#-- Almacenar a0 y a1 en la pila
	sw a0, 0(sp)
	sw a1, 4(sp)
	sw a2, 8(sp)
	sw a3, 12(sp)

	#-- Imprimir el vector (x,y)
	jal print_vect
	
	#-- Recuperar x,y
	lw a0, 0(sp)
	lw a1, 4(sp)
	lw a2, 8(sp)
	lw a3, 12(sp)
	
	#-- Incrementar las coordenadas
	add a0, a0, a2
	add a1, a1, a3
	
	#-- Imprimir el vector incrementado (x+1, y+1)
	jal print_vect

	#-- Recuperar direccion de retorno
	lw ra, 28(sp)

	addi sp, sp, 32
	ret