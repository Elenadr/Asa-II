#-- Escribe un programa implementando un menú con dos opciones, una para incrementar un contador y la otra para salir.
#-- Nos piden explicitamente que useamos beq
	
	.include "servicios.asm"
	#-- Segmento de datos
	.data
menu:	.ascii "\nMenu de opciones\n"
	.ascii "================\n"
	.ascii "1. Incrementar el contador\n"
 	.ascii "2. Exit\n"
 	.ascii "\n"
 	.ascii "Opcion?:"
 	.byte 0
msg1: .string "\nContador: "
msg_byte: .string "\nEXIT: Terminando el programa\n"
error: .string "\nERROR: Opcion invalida\n"

 	


	#-- Segmento de código
	.text
	#-- implemento el contador t1: contador
	li t1,0
loop:	
	#-- Imprimir el menu
	la a0, menu
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir al usuario la opcion /(caracter)
	li a7, READ_CHAR
	ecall
	
	#-- a0: caracter leido
	# ¿es un 1?
	li t0, '1'
	beq a0,t0,contador
	
	
	#-- si no es igual a 1
	# -- es un dos?
	li t0,'2'
	beq a0,t0,fin
	
#-- Si llega aqui es que es una opcion incorrecta
	#-- Imprimir mensaje error y volver al menu
	la a0, error
	li a7, PRINT_STRING
	ecall
	
	b loop
	
contador:
	#-- incremtnar un contador, 
	addi t1,t1,1
	#-- imprimir en oantalla
	la a0, msg1
	li a7, PRINT_STRING
	
	ecall
	#-- imprimir el contador
	mv a0,t1
	li a7, PRINT_INT
	ecall
	# enseñar menu de nuevo
	b loop
	

	#-- Punto de salida
fin:	
#Imprimir un mensaje
	la a0, msg_byte 
	li a7, PRINT_STRING
	ecall
	
	li a7, EXIT
	ecall