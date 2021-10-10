#-- Escribe un programa en ensamblador (vardir.s) que defina 4 variables: a,b,c y d inicializadas a 0.
#-- registros x5,x6,x7 y x8 las direcciones de cada una de ellas usando 4 pseudoinstrucciones la

	.data
a:	.word 0
b:	.word 0
c:	.word 0
d:	.word 0

	#-- Segmento de código
	.text
	
	la x5, a
	la x6, b
	la x7, c
	la x8, d
	
	#-- Terminar
	
	li a7, 10
	ecall