## FUncion operar
##-- UN parametro de entrada
## ENTRADA -> Un numeor de entero
# -- SALIDA -> ninguna
#----------------------------------


	.globl operar
	.include "servicios.s"
	
	.text
	
	
operar:



	#-- FUNICON INTERMEDIA
	#-- Es una funcion que llama a otra función
	# Crear la pila
	addi sp, sp, -16
	# Guardar la direccion de retorno
	sw ra,12(sp)
	#-- a0: num
	#-- Fuardamos en la pila num 
	sw a0, 0(sp) 
	# Imptimit num llamando a print_int(num)
	jal print_int
	#-- a0 lo hemos perdidoooo
		
	#-- Multiplicar num * 2 func_mult2_
	lw a0,0(sp)
	jal mult2
	
	jal print_int
	#-- Volver a imprimir  num
	lw a0,0(sp)
	jal print_int
	#--Recuperar dir retorno
	lw ra,12(sp)
	# Crear la pila
	addi sp, sp, 16
	# PUnto de salitda
	ret