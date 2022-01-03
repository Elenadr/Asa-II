# -- SUBRUTINA 
# -- operar(x,y)
# -- tiene los mismos argumentos que print_vec. Imprime en la consola el vector original (x,y), llamando a print_vec 
# --  otro debajo con las componentes incrementadas en una unidad (x+1, y+1) (también llamando a print_vec)
# -- Entradas:
# -- 	a0:cOORDENADA x
# -- 	a1:cOORDENADA y
# -- Salidas:
# --   Ninguna
#------------------------------------------------------------------------------------------

	.globl operar

	.include "servicios.s"
	
	.text
	
operar:	

	#--- Crear pila
	addi sp, sp, -16
	
	#-- Guardar direccion de retorno
	sw ra, 12(sp)
	
	#-- Almacenar a0 y a1 en la pila
	sw a0, 8(sp)
	sw a1, 4(sp)

	#-- Imprimir el vector (x,y)
	jal print_vect
	
	#-- Recuperar x,y
	lw a0, 8(sp)
	lw a1, 4(sp)
	
	#-- Incrementar las coordenadas
	addi a0, a0, 1
	addi a1, a1, 1
	
	#-- Imprimir el vector incrementado (x+1, y+1)
	jal print_vect

	#-- Recuperar direccion de retorno
	lw ra, 12(sp)

	addi sp, sp, 16
	ret