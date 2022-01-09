#--- PROGRAMA PRINCIPAL
#--para probar la función de cálculo de potencias. Se pide
#--al usuario que introduzca la base e imprime en la consola los cálculos para el
#--exponente desde 1 hasta 10, una operación en cada línea. 
#-- terminará

	.include "so.s"

	.data
msg:	.string "\nIntroduce la base (no negativo): "
msg1:	.string " ^ "
msg2:	.string " = "

	.text


	#-- PIDE al user el numreo
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos el entero
	li a7, READ_INT
	ecall
	#-- guardar el numeor originarl 
	mv s0, a0
	li s1, 1
bucle:
	mv a0, s0
	li a7, PRINT_INT
	ecall
	
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	mv a0, s1
	li a7, PRINT_INT
	ecall
	#-- imprimir el igual
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	mv a0, s0
	mv a1, s1
	jal exp
	
	#-- imprimir el resultado
	mv t0, a0
	li a7, PRINT_INT
	ecall
	# --- Imprimir un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#--- Incrementar el contador
	addi s1, s1, 1
		# -- Si s1 es menor a 11, repetir 
	li t0, 11
	blt s1, t0, bucle 
fin:	li a7, EXIT
	ecall
