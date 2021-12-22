
	.globl peso
	.text
	
#------------------------------------------------------
#-- Función peso(pcad) : Calcular el peso de una cadena
#--- ENTRADAS:
#-- a0: pcad: Puntero a la cadena
#-- SALIDA
#-- a0: Peso de la cadena
#------------------------------------------------------

peso:	
	#-- Función hoja: no llama a ninguna otra función
	#--(suspiro de alivio)
	
	
	# Recorrer la cadena sumando todos sus caracteres
	#-- Dejamos de recorrer la cadena al detectar \n o el 0
	
	#-- Variable para guardar el peso
	#-- t0: peso
	
	li t0,0
bucle:	
	# Leer el caracter
	lb t1,0(a0)
	
	#Comprobar si el caracter es 0
	beq t1,zero,fin
	#Comrpobar si el caractes es /n
	li t2, '\n'
	beq t1,t2,fin
	# SUmar el peso a la cuenta actual
	add t0,t0,t1
	#Apuntar añ siguiente caracter
	addi a0,a0,1
	# Repetir el bucle
	b bucle

fin:
	#-- Devolver e peso
	mv a0,t0
		
	#-- Punto de salida
	ret