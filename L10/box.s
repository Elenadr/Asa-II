# -- SUBRUTINA 
# -- box(car,anch,alt)
# -- Entradas:
# -- 	a0: car
# -- 	a1: anch
# --    a2: alt
# -- Salidas:
# --   Ninguna
#------------------------------------------------------------------------------------------

	.globl box

	.include "servicios.s"
	
	.text
	
box:

	addi sp, sp, -16
	
	#-- Guardar direccion de retorno
	sw ra, 12(sp)
	
	#-- Almacenar a0 y a1, a2 en la pila
	sw a0, 0(sp)
	sw a1, 4(sp)

	#-- Necesitamos guardar a0 en la pila
	sw s0, 8(sp)
	mv s0, a2
bucle:
	#--- Si quedan 0 lineas por imprimir--> terminar	
	beq s0, zero, fin
	
	#-- Recuperar parametros de la pila
	lw a0, 0(sp) #-- Caracter
	lw a1, 4(sp) #-- Anchura
	
	#-- Imprimir una linea
	jal line
	
	#-- Queda un linea menos por imprimir
	addi s0, s0, -1
	
	#-- Siguiente linea
	b bucle
fin:	
	lw s0, 8(sp)
	#-- Recuperar direccion de retorno
	lw ra, 12(sp)
	
	addi sp, sp, 16	
	ret
	