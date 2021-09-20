#-- Programa contador
#-- El registro x3 se incremeta indefinidamente
#-- El registro x4 se incremeta de 3 en 3 indefinidamente
#-- El registro x5 se incremeta de 5 en 5 indefinidamente

	.text
	
	#-- Inicializar los tres registros  a 0
	addi x3, x0, 0
	addi x4, x0, 0
	addi x5, x0, 0
	
bucle:
	#-- Incrementar el registro x5 en una unidad
	addi x3, x3, 1  #-- x5 = x5 + 1
	addi x4, x4, 3 #-- x4 = x4 + 3
	addi x5, x5, 5 #-- x5 = x5 + 5
	
	#-- Repetir indefinidamente		
	b bucle