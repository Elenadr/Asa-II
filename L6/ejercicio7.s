#-- Escribir un programa para hacer un cifrado simple de la cadena definida en tiempo de compilación "Hola\n". 
#-- Primero se imprime el mensaje original: "Hola". A continuación se incrementan los 4 caracteres en una unidad 1 
#-- (sin hacer bucles, porque todavía no sabemos). Finalmente se imprime la cadena resultante, que ya está cifrada. 
#-- En la consola deberá aparecer:

	.include "servicios.asm"

	.data

msg:	.string "Hola\n"


	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Leer cada byte de la cadena, incrementarlo y guardarlo
	#-- H
	lb t0, 0(a0)
	addi t0, t0, 1
	sb t0, 0(a0)
	#-- o
	lb t0, 1(a0)
	addi t0, t0, 1
	sb t0, 1(a0)
	#-- l
	lb t0, 2(a0)
	addi t0, t0, 1
	sb t0, 2(a0)
	#-- a
	lb t0, 3(a0)
	addi t0, t0, 1
	sb t0, 3(a0)
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
