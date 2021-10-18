# -- Escribe un programa para calcular la expresión f = (2*a - b) + c - 1. 
# -- Utiliza los registros con sus nombres de la ABI de RISC-V. Evalúa la expresión para a = 10, b = 20 y c = 30, 
#-- y comprueba que el resultado es correcto

.text
	
	#-- Inicializacion de los registros
	#-- t0 = a = 10
	li t0, 10
	
	#-- t1 = b = 2
	li t1, 20
	
	#-- t2 = c = 3
	li t2, 30
	
	#-- t0 = 2*a
	add t0, t0, t0
	#-------- Realizar el calculo de la expresion
	#-- t3 = (a - b)
	sub t3, t0, t1  
	
	#-- t4 = c - 1
	addi t4, t2, -1
	
	#-- t6 = t3 + t4 = (a - b) + (c + 5)
	add t5, t3, t4
	
	#-- Terminar
	li a7, 10
	ecall
