#---------------------------------
#-- Subrutina multdos(num)
#-- ENTRADAS: a0: int
#-- SALIDAS: Ninguna
#--luego debe multiplicar este número por dos, llamando a la función mult2(), 
#--y finalmente debe volver a imprimir el número original llamando otra vez a print_int()
#---------------------------------

	#-- Punto de entrada
	.globl multdos
	
	.include "servicios.s"

	.data
msg1:	.string "--> " 	
			
	.text
	
	
#-------- Punto de entrada
multdos:
	
	
	#-- Multiplicar por dos num es calcular num + num
	add a0, a0, a0
		
#------- Punto de salida
	ret