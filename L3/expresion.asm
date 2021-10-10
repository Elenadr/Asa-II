#-- scribe un programa (expresion.s) que calcule la siguiente expresión: f = (a + b + c) - (d - 3). 
#-- Implementa la expresión tal cual, sin hacer simplificaciones y respetando la prioridad de los paréntesis

	.data 
#-- Las variables a,b,c,d y f están en la memoria, inicializadas con los valores -5, 2, 30, 5 y 0	
a:	.word -5
b:	.word 2
c:	.word 30
d:	.word 5
f:	.word 0

	.text
	#-- Para calcular la expresion usaremos los sig. registros:
	#-- x5 = a
	#-- x6 = b
	#-- x7 = c
	#-- x8 = d
	#-- x12 = f
	
	#-- Leer las variables y las situamos en los registros
	la x4, a  #-- Usamos x4 como puntero para acceder a las varaibles
	lw x5, 0(x4) #-- a
	lw x6, 4(x4) #-- b
	lw x7, 8(x4) #--c
	lw x8, 12(x4) #--d
	
	#--Calcular la expresion
	add x9, x5, x6 # -- a + b
	add x9, x9, x7 # -- a + b + c
	addi x10, x8, -3
	sub x12, x9, x10
	
	sw x12, 16(x4)  #-- f = (a + b + c) - (d - 3)
	
	#-- Terminar
	li a7, 10
	ecall
	
	#-- El programa tiene 13 instrucciones, por lo que ocupa 13 * 4 = 52 ybtes