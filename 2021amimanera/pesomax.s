#--------------------------
#--  pesomax(cad1, cad2)
#-- ENTRADAS:
#--    a0: puntero a la cadena
#--    a1: puntero a la cadena2
#-- SALIDAS:
#-----------------------------
#---------------------------------------------------

#--- Implementa aqui la funcion pesomax()

# -- Esta funcion es ya para asegurar la nota
#--  ¡Dame esos dos puntos!

	.globl pesomax
	
	.text
pesomax:	
	#-- funcion intermedia
	#-- creamos la pila
	addi sp, sp, -16
	#-- guardamos dir de retorno
	sw ra, 12(sp)
	#-- Funciones de la subrutina
	#-- vamos a guardar las cadenas en la pila para no perderlas
	sw a1, 8(sp)
	#-- calculamos el peso de a0
	jal peso
	#-- guardamos el peso de cad 1
	sw a0, 4(sp)
	
	lw a0, 8(sp)
	#-- calculamos peso de a1
	jal peso
	
	lw a1, 4(sp)
	jal max
	
	#-- recuperamos dire de retorno
	lw ra, 12(sp)
	#-- sacamos la pila
	addi sp, sp, 16


	#-- salida
	ret