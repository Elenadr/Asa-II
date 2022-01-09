#--- PROGRAMA PRINCIPAL
#-- El programa principal solicitará una cadena al usuario e invocará a la función
#-- procesar() para imprimir su longitud y la cadena del revés. El programa seguirá
#-- pidiendo cadenas al usuario hasta que se introduzca una cadena vacía (que
#-- se obtiene al apretar ENTER sin escribir la cadena). En ese momento
#-- terminará

	.include "so.s"
	.eqv MAX 1024
	.data
msg:	.string "\nIntroduce una cadena: "
cad:	.space MAX

	.text
bucle:

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
	jal procesar
	
	b  bucle
	
	#-- lee la cadena
	
#-- TERMINAR
fin:	li a7, EXIT
	ecall