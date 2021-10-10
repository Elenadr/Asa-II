#-- Escribe un programa en ensamblador (vardir.s) que defina 4 variables: a,b,c y d inicializadas a 0.
#-- registros x5,x6,x7 y x8 las direcciones de cada una de ellas usando 4 pseudoinstrucciones la
#-- a,b,c y d en los registros x10, x11, x12 y x13. 
#-- En el segmento de datos las variables deben estar inicializadas a 1,2,3 y 4 respectivamente. 

	.data
a:	.word 1
b:	.word 2
c:	.word 3
d:	.word 4

	#-- Segmento de código
	.text
	
	la x5, a
	la x6, b
	la x7, c
	la x8, d
	
	#-- Inicializar los registros
	lw x10, 0(x5)  #-- x10 = a
	lw x11, 0(x6)  #-- x11 = b
	lw x12, 0(x7)  #-- x12 = c
	lw x13, 0(x8)  #-- x13 = d
	
	#-- Terminar
	
	li a7, 10
	ecall
	
#-- 14 instrucciones x 4 bytes= 56 byts
