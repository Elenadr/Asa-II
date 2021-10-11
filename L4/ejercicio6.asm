#-- Escribe un programa que muestre por el display de 7-segmentos derecho el dígito 3. 
# -- Utiliza un identificador para este valor que hace aparecer un 3. Obtén los valores para que aparezca uno 1, 2 y 4

	.eqv DISPLAY 0xFFFF0010
	.eqv DIGIT3  0x4F #-- PARA SACAR EN NUMERO 3 0X4F
	.eqv DIGIT1  0x06 		#-- NUMERO 1 0X6
	.eqv DIGIT2  0x5B 		#-- NUMERO 2 0X5B
	.eqv DIGIT4  0X66 		#-- NUMERO 4 0X66
	.text
	li x5, DISPLAY
	
	li x6, DIGIT3

	sw x6, 0(x5)

	
	li a7, 10
	ecall