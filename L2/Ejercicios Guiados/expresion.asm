#----- Codigo para calcular la expresion generica
	#----  x10 = (x5 + x6) - x7 + x8 + 50
	#----  f = (a + b) - c + d + 50
	
	.text
	#-- Inicializamos los registros x5,x6,x7,x8,x10 a 0
	addi x5, x0, 1 #-- x5 =>a
	addi x6, x0, 2 #-- x6 =>b
	addi x7, x0, 3 #-- x7 =>c
	addi x8, x0, 4 #-- x8 =>d
	addi x10, x0, 0 #-- x10 =>f
	
	#-- Calculamos la expresion x10 = (x5 + x6) - x7 + x8 + 50
	
	#-- Suma de x5 y x6
	add x9,x5,x6 #--Almaceno en x9 = x5+x6
	
	#Calculo x8-x7
	sub x11,x8,x7
	
	#--Sumo una constante
	addi x12, x11, 50
	
	#sumo toddo en x10
	add x10, x12,x9 
	
	#-- Terminar
	li a7,10
	ecall
