#-- Escribe un programa que defina la variable contador cuyo valor inicial esté dado por el identificador INICIO. 
#-- Dentro de un bucle infinito se incrementará esta varible en la cantidad indicada por el identificador INC. 
#-- Para comprobar su funcionamiento usa los valores de INICIO = 100 e INC=10. 
#-- No olvides colocar un Breakpoint en el bucle infinito, o bien ejecutarlo paso a paso

#-- Definir el valor inicial para el contador
	.eqv INICIO 100
	.eqv INC 10
	
	.data
contador:	.word 0

	.text
	li x5, INICIO
	la x6, contador

bucle:
	sw x5, 0(x6)
	addi x5,x5, INC
	
	b bucle
	