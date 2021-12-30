#-- Escribe un programa que pida una cadena al usuario, la cifre y la imprima. 
#-- El cifrado consistirá en sumar una constante K a cada uno de los caracteres de la cadena

	.include "servicios.asm"
	#-- Tamaño máximo de la cadena
	.eqv MAX 32
	
	#-- Constante a sumar, para cifrar
	.eqv K   5
	.data
msg:	.string "\nIntroduce una cadena: "
msg2:	.string "Cadena cifrada: "
cad:    .space MAX

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
	
bucle:
	#-- Leer caracter
	lb t0, 0(a0)
	
	#-- Condicion de finalizacion
	li t1, '\n'
	beq t0, t1, fin
	
	#-- Sumar K al caracter
	addi t0,t0, K
	
	#-- Almacenar el caracter cifrado
	sb t0, 0(a0)
	
	#-- Apuntar al siguiente caracter
	addi a0, a0, 1
	
	#-- Repetir
	b bucle

	
fin:    #-- Hemos terminado
	#-- Imprimir el mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir la cadena
	la a0, cad
	li a7, PRINT_STRING
	ecall			
	#-- Punto de salida
	li a7, EXIT
	ecall