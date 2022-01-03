# -- SUBRUTINA 
# -- print_vect(x,y)
# -- La función print_vect(x,y) tiene dos argumentos de entrada que son números enteros: 
# -- la coordenada x y la coordenada y. No tiene ningún parámetro de salida. Se imprime en la consola el vector de esta forma: "(x,y)"
# -- Entradas:
# -- 	a0:cOORDENADA x
# -- 	a1:cOORDENADA y
# -- Salidas:
# --   Ninguna
#------------------------------------------------------------------------------------------

	.globl print_vect

	.include "servicios.s"
	
	.text
	
print_vect:

	addi sp, sp, -16
	
	#-- Necesitamos guardar a0 en la pila
	sw a0, 0(sp)
	
	li a0, '('
	li a7, PRINT_CHAR
	ecall
	
	#-- Imprimir coordenada x
	lw a0, 0(sp)
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir la coma
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Imprimir coordenada y
	mv a0, a1
	li a7, PRINT_INT
	ecall
	
	li a0, ')'
	li a7, PRINT_CHAR
	ecall
	
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	addi sp, sp, 16	
	ret
	