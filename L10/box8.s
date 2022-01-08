#---------------------------------
#-- FUNCIÓN HOJA
#-- Subrutina operar6(num)
#-- ENTRADAS: a0: int // char
#--           a1: int // anch
#--           a2: int // alt
#
#-- SALIDAS: Ninguna
#-- función box(car,anc,alt) 
#--   Imprime un rectángulo en la consola formado por el carácter car,
#--y con las dimensiones de altura y anchura indicadas en los parámetros

#---------------------------------

	#-- Punto de entrada
	.globl box8
	
	.include "servicios.s"
	
	.text
	
	
#-------- Punto de entrada
box8:
	#-- Comienzo subruina
	addi sp, sp, -16
	sw ra, 12(sp) #-- Guardar registro ra en la pila
	
	##-- INSTRUCCIONES SUBRUTINA
	sw a0, 0(sp) # char
	sw a1, 4(sp) # anch
	
	#-- El registro s0 lo usamos como contador
	#-- Hay que guardarlo en la pila
	sw s0, 8(sp)
	
	#-- Ahora es seguro modificar s0
	mv s0, a2
bucle: 
	beqz s0, fin
	
	lw a0, 0(sp)
	lw a1, 4(sp)
	
	jal line8
	
	addi s0,s0,-1

	b bucle
	
fin:
	#-- Fin dla subrutina
	lw ra, 12(sp) #-- Recurperar el registro ra de la pila
	addi sp, sp, 16
	#------- Punto de salida
	ret
