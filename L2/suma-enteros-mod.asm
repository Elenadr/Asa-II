#-- Programa para calcular la suma de los números enteros pares: 0+2+4+6+...
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 0,2,4,6...
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x6

	.text

	#-- Inicializamos los registros x5,x6 a 0
	addi x5, x0, 0
	addi x6, x0, 0
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	addi x5, x5, 2   #-- x5 = x5 + 2
	
	#-- Obtener termino i-simo
	add x6, x6, x5  #-- x6 = x6 + x5
	
	#-- Repetir el bucle
	b bucle
#--¿Cuantas instrucciones en código máquina tiene? 5
#--¿Cuantos bytes de memoria ocupa el programa? 5x4
    #Completa esta tabla, indicando la instrucción en código máquina y su dirección (alineada)
    #Direccion 			Instruccion en codigp máquina
    
    #0x0040000			0x00000293

    #0x0040004			0x00000313
    #0x0040008			0x00128293
    #0x004000c			0x00530333
    #0x0040010			0xff9ff06f