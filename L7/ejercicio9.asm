#-- Escribe un programa que pida al usuario una cadena (de tamaño máximo 1024 bytes) 
#-- y cuente la cantidad de caracteres 'a' que hay en ella. Ese resultado lo debe mostrar en la consola

	.include "servicios.asm"
	#-- Definimos máximo
	.eqv MAX 1024	
	.data
msg:	.string "Introduce una cadena: "
msg1:	.string "Contador del carácter 'a': "
cad:	.space MAX

	.text
	#-- Imprimir msg inicial
	la a0, msg
	li a7, PRINT_STRING
	ecall
	#-- Pedir cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	#-- t0 puntero a la cadena
	la t0, cad
	
	#-- Implemento el contador
	li t1,0
bucle:	
	#-- Leer el caracter actual
	lb t2, 0(t0)
		
	#-- Comprobar si se ha llegado al final de la cadena
	beq t2, zero, fin_bucle
	
	#-- Comprobar si es el caracter 'a'
	li t3, 'a'
	bne t2, t3, continua  #--> NO, continua
	
	#-- Se ha encontrado una 'a'
	#-- Incrementar contador
	addi t1, t1, 1
	 
continua: 
	
	#-- Pasar al siguiente caracter: Incrementar puntero
	addi t0, t0, 1
	
	b bucle
	
	#--- Imprimir el resultado
fin_bucle:

	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir el valor del contador de 'a's
	mv a0, t1
	li a7, PRINT_INT
	ecall	

fin:	# -- Punto de salida
	li, a7, EXIT
	ecall