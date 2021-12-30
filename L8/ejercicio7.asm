#-- Escribe un programa que pida una cadena al usuario y que se almacene al comienzo del segmento de datos. 
#-- Luego el programa la copiará a otra posición de memoria. Finalmente imprimirá la cadena copia en la consola

	.include "servicios.asm"
	.eqv MAX 32
	
	.data
msg:	.string "\nIntroduce cadena: "
msg2:	.string "Cadena copia: "
cad:	.space MAX
cad2:	.space MAX

	.text
	
	#-- Imprimir mensaje 1
	la a0, msg
	li a7, PRINT_STRING
	ecall

	#-- Pedir cadena al usuario
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	#------ Copiar la cadena 

	#-- Puntero a la cadena destino
	la t0, cad2
	
bucle:
	# lEER CARACTER ORIGINAL
	lb t1, 0(a0)
	
	#-- Almacenarlo
	sb t1, 0(t0)
	
	# es 0?
	beq t1,zero, fin
	
	#-- Incrementar los punteros
	addi a0, a0, 1
	addi t0, t0, 1
	
	#repetir
	b bucle
	
	
fin:
	#-- Imprimir mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	la a0, cad2
	li a7, PRINT_STRING
	ecall
	#-- Punto de salida
	li a7, EXIT
	ecall