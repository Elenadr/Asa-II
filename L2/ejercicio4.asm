#-- Escribe un programa en ensamblador para calcular la expresión:

#-- f = (a + b + c) - [(d - a) + (e + 3) - 30]
# -- a --> x3 --> 2
# -- b --> x4 --> 4
# -- c --> x5 --> 6
# -- d --> x6 --> 8
# -- e --> x7 --> 10
# -- f --> x10 --> 0
#--
	.text
	#-- Inicializo todos los registros
	addi x3,x0,2
	addi x4,x0,4
	addi x5,x0,6
	addi x6,x0,8
	addi x7,x0,10
	 #--Refistro para almacenar el reesultado, lo inicializo a cero
	addi x10,x0,0
	addi x17,x0,30
	addi x18,x0,3
	
	#--Calculo la expresion
	
	add  x11, x3, x4 #--Sumamos a + b y lo almacenamos en x10
	add x12, x11, x5 #-- Le añadimos c a la suma de + b y guaradmos en x12 //Con los valores dados, aqui tenemos acum,ulado 12
	
	sub x13, x6, x3 #-- guardo en x13, el resultado de d-a
	add x14, x7, x18 #-- sumo d con el 3
	add x15, x13, x14 #-- sumo x13, y x 14
	sub x16, x15, x17 #-- resto 30 a lo acumulado //con los valores aportaods aqui tenemos acumulado -11
	
	#--junt el primer termino almacenado en x12, con el segundo almacenado en x16
	sub x10, x12, x16 #-- //con los valores aportados, el resultado en x10=f=23
	
	#-- Terminar
	li a7,10
	ecall
	  
	