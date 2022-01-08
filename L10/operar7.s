#---------------------------------
#-- FUNCIÓN HOJA
#-- Subrutina operar6(num)
#-- ENTRADAS: a0: int // cord x
#--           a1: int // cord y
#--           a2: int // 10
#--           a3: int // 100
#-- SALIDAS: Ninguna
#-- función operan(num) 
#--  Imprime en la consola el vector original (x,y), 
#--luego debe multiplicar este número por dos, llamando a la función mult2(), 
#-- llamando a print_vec y otro debajo con las componentes incrementadas en una unidad (x+1, y+1) 
#-- (también llamando a print_vec)
#---------------------------------

	#-- Punto de entrada
	.globl operar7
	
	.include "servicios.s"

	.data
msg1:	.string "\n--> " 	
			
	.text
	
	
#-------- Punto de entrada
operar7:
	#-- Comienzo subruina
	addi sp, sp, -32
	sw ra, 28(sp) #-- Guardar registro ra en la pila
	
	##-- INSTRUCCIONES SUBRUTINA
	sw a0, 0(sp)
	sw a1, 4(sp)
	sw a2, 8(sp)
	sw a3, 12(sp)
	
	jal printvec6
	
	lw a0, 0(sp)
	lw a1, 4(sp)
	lw a2, 8(sp)
	lw a3, 12(sp)
	
	add a0,a0,a2
	add a1,a1,a3
	jal printvec6
	#-- Fin dla subrutina
	lw ra, 28(sp) #-- Recurperar el registro ra de la pila
	addi sp, sp, 32
	#------- Punto de salida
	ret
