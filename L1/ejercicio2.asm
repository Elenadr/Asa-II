#-- Modificacion de Programa contador
#-- El registro x5 ahora se incremeta de dos en dos indefinidamente

	.text
	
	#-- Inicializar el registro x5 a 0
	addi x5, x0, 0
	
bucle:
	#-- Incrementar el registro x5 en una unidad
	addi x5, x5, 2  #-- x5 = x5 + 1
	
	#-- Repetir indefinidamente		
	b bucle