# -- Escribe un programa para calcular la expresión f = (2*a - b) + c - 1. 
# -- Utiliza los registros con sus nombres de la ABI de RISC-V. Evalúa la expresión para a = 10, b = 20 y c = 30, 
#-- y comprueba que el resultado es correcto
	.eqv READ_INT 5
	.eqv EXIT 10
	.eqv PRINT_INT 1
	

	.text
	
	#-- Petición de los registroa al usuario

	#-- leer por teclado  A
	li, a7, READ_INT
	ecall
	#-- mover a var temporal t0
	mv t0, a0
	#-- leer por teclado  b
	li, a7, READ_INT
	ecall
	#-- mover b var temporal t0
	mv t1, a0
	#-- leer por teclado  c
	li, a7, READ_INT
	ecall
	#-- mover a var temporal t0
	mv t2, a0
		#----- Calculo de la expresion
	
	#-- t0 = 2*a
	add t0, t0, t0
	
	#-- t3 = (2*a - b)
	sub t3, t0, t1
	
	#-- t4 = c - 1
	addi t4, t2, -1
	
	#-- t5 = (2*a - b) + c - 1
	add t5, t3, t4
	#-- mover a var temporal t0
	mv a0, t5
	
	li, a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
