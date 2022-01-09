#--- PROGRAMA PRINCIPAL
#-- Pedirá una cadena al usuario y llamará a la función procesar(). 
#-- Después deberá imprimir la cadena procesada y luego
#-- la original.

	.include "so.s"
	.eqv MAX 1024
	.data
msg:	.string "\nIntroduce una cadena: "
msg1:	.string "\nCadena procesada: "
msg2:	.string "\nCadena original: "
cad:	.space MAX
cad2:	.space MAX

	.text

	#-- PIDE al user cadena
	la a0, msg
	li a7, PRINT_STRING
	ecall
	#-- Leemos la cadena por el teclado
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	lb t0, 0(a0)
	li t1, '\n'
	beq t0, t1, fin
	#-- llama a procesar
	la a0, cad
	la a1, cad2
	jal procesar
	
	#-- Imprime la cadena procesada
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir cadena procesada
	la a0, cad2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprime la cadena original
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	la a0, cad
	li a7, PRINT_STRING
	ecall
	
#-- TERMINAR
fin:	li a7, EXIT
	ecall
