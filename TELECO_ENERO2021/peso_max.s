
	.globl pesomax
	.text
	
#-------------------------------------------------------|
#-- Función pesomax(pcad1,pcad2) : Devolver peso maximo |
#-- de las dos cadenas                                  |
#--- ENTRADAS:                                          |
#-- a0: pcad1: Puntero a la cadena 1                    |
#-- a1: pcad2: Puntero a la cadena 2                    |
#-- SALIDA                                              |
#-- a0: El peso máximo de las dos cadenas               |
#-------------------------------------------------------|

pesomax:

	# -- Función intermedia (¡OJOOO!)
	#-- Crear la ila
	addi sp,sp,-16	
	#-- Guardar direcciion de retorno
	sw ra,12(sp)
	
	#-- Guardar en la pila el puntero del 
	#-- argumento 2
	sw a1,0(sp)
	
	#-- Llamar a p1 = peso (cad1)
	jal peso
	
	#-- a0 tengo peso de cadena 1
	#-- Guardar el peso de la cad1 en la pila
	sw a0,4(sp) #-- Peos de la cadena 1
	
	#-- Llamar a peso (cad2)
	lw a0,0(sp)
	jal peso
	
	#-- a0 tengo peso de cadena 2
	#-- a1 tengo peso de cadena 1
	lw a1,4(sp)
	#-- Llamar a max(p1,p2)
	jal max
	#-- a0 el valor maximo
	
	#-- Devolver el valor máximo
	
	# Recuperar el registro ra
	lw ra,12(sp)
	#-- Reestablecer la pila
	addi sp,sp,16
	#-- Punto de salida
	ret