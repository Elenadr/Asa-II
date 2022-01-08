#---------------------------------
#-- FUNCIÓN HOJA
#-- Subrutina operar6(num)
#-- ENTRADAS: a0: int //cord x
#--           a1: int // cord y
#-- SALIDAS: Ninguna
#-- función operan(num) 
#--  Imprime en la consola el vector original (x,y), 
#--luego debe multiplicar este número por dos, llamando a la función mult2(), 
#-- llamando a print_vec y otro debajo con las componentes incrementadas en una unidad (x+1, y+1) 
#-- (también llamando a print_vec)
#---------------------------------

	#-- Punto de entrada
	.globl operar6
	
	.include "servicios.s"

	.data
msg1:	.string "\n--> " 	
			
	.text
	
	
#-------- Punto de entrada
operar6:
	#-- Comienzo subruina
	addi sp, sp, -16
	sw ra, 12(sp) #-- Guardar registro ra en la pila
	
	##-- INSTRUCCIONES SUBRUTINA
	sw a0, 8(sp)
	sw a0, 4(sp)
	jal printvec6
	lw a0, 8(sp)
	lw a0, 4(sp)
	
	addi a0,a0,1
	addi a1,a1,1
	jal printvec6
	#-- Fin dla subrutina
	lw ra, 12(sp) #-- Recurperar el registro ra de la pila
	addi sp, sp, 16
	#------- Punto de salida
	ret
