#------------------------------------------------------------------
#- SUBRUTINA: procesar(psrc, pdest)
#-- Esta función copia la cadena
#-- origen en la zona destino y la convierte a mayúsculas. 
#-- Para ello debe invocar alas funciones copiar() y upper() en el orden correcto
#-- ENTRADAS:
#--    a0: Puntero a la cadena
#--    a1: Puntero a destino
#-- SALIDAS:
#--    nada
#------------------------------------------------------------------
	.globl procesar
	
	.text
	
procesar:	
	#-- necesitamos la pila
	addi sp, sp, -16
	#-- almacenar dirección
	sw ra, 12(sp)
	
	#-- guardar direccion a1 en la pila
	sw a1, 0(sp)
	
	#--llamar a copiar
	jal copiar
	#-- reciperar dir destino
	lw a0, 0(sp)
	
	jal upper
	#-- recuperar direccion
	lw ra, 12(sp)
	#-- recuperar la pila
	addi sp, sp, 16
	#-- Ssalida
	ret