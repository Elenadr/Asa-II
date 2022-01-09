#-------------------------------------------------------
#--  SUBRUTINA: procesar(cad)
#--  
#--  ENTRADA:
#--   a0: Puntero a la cadena 
#--
#--  SALIDAS:
#--   Ninguna
#-------------------------------------------------------
	.globl procesar
	.include "so.s"
	.data
long:	.string "Longitud cadena: "
inv:	.string "\nCadena invertida: "

	.text
procesar:
	#-- Es una funcion intermedia
	#-- Hay que crear la pila para guardar la direccion de retorno
	addi sp, sp, -16

	#-- Guardar la direccion de retorno
	sw ra, 12(sp)
	#-- FUNCIONES SUBRUTINA
	#-- Almacenar la direccion de la cadena para no perderla
	sw a0, 8(sp)
	#-- iMPRIMIR LONG
	la a0, long
	li a7, PRINT_STRING
	ecall
	
	lw a0, 8(sp)
	jal len
	#-- IMprimir long cadena
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir reverse
	la a0, inv
	li a7, PRINT_STRING
	ecall
	
	lw a0, 8(sp)
	#-- llamar a reverse
	jal reverse

	#-- recuperar la direccion de retorno
	lw ra, 12(sp)
	# recuoerar la pila
	addi sp, sp, 16
	
	#-- Punto de salida
fin:	ret