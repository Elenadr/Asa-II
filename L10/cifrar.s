# La función cifrar(pcad,k) tiene dos argumentos de entrada. 
#-- El primer es un puntero a la cadena a cifrar y el segundo es la clave para cifrar. 
#-- Es un número entero entre 1 y 255. Es el valor que se suma a cada carácter de la cadena original para cifrar
#-----------------------------------------------------
#-- Funcion: cifrar(pcad, k)
#--
#-- ENTRADAS:
#--  a0: Puntero a la cadena 1
#--  a1: clave (1 -255))
#-- SALIDAS: Ninguna
#----------------------------------------------------
#-- Punto de entrada
	.globl cifrar
	
	.text
cifrar:	
	
bucle:	
	# -- leer el caranter
	lb t0, 0(a0)
	
	#-- Si es '\n' hemos terminado
	li t1, '\n'
	beq t0, t1, fin
	
	# -- si no, sumamos la clave
	add t0, t0, a1
	
	#-- guardas cifrado
	sb t0, 0(a0)
	
	#-- Apuntar al siguiente caracter
	addi a0, a0, 1
	
	#-- Repetir
	b bucle
	
fin:
	#-- Terminar
	ret