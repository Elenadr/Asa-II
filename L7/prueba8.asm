# prgrama que cuenta los caracteres que hay en una cadena

	.include "servicios.asm"
	.data

cad:	.string "Holi"
msg:	.string "El numero de caracteres es: "
	.text
	
	# --Contador de caracteres en t0
	li t0, 0 # -- inicializamos en 0
	
	# --necesitamos la dirección del dato
	# -- t1 puntero a la cadena
	la t1, cad
bucle:
	# -- Leer un caracter
	# --load byte
	lb t2, 0(t1) # --1 ejecucionn tenemos la h
	# ¿es el dos igual a 0? ¿hemos terminaod de leer la cadena?
	beq t2, zero, fin_cadena
	#--beqz t2, fin_cadena
	#si no es el final de la cadena
	# incrementar el contador de caracteres
	addi t0, t0, 1
	#apuntar al siguiente caracter, es decir al o
	addi t1, t1, 1
	# repetir cucle
	b bucle
	#Hemos termiando de recorrer la cadeza
fin_cadena:

	# Imorimir msg para userr
	la a0, msg
	li a7, PRINT_STRING
	ecall
	# Imorimir entero
	mv a0, t0
	
	li a7, PRINT_INT
	ecall
#-- punto de salida	
fin: 	
	li a7, EXIT
	ecall