#-- Programa para calcular la suma de los números enteros: 1+2+3+4+5+...
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 1,2,3,4,5,6...
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x6

	.text

	#-- Inicializamos los registros x5,x6 a 0
	addi x5, x0, 0
	addi x6, x0, 0
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	addi x5, x5, 1   #-- x5 = x5 + 1
	
	#-- Obtener termino i-simo
	add x6, x6, x5  #-- x6 = x6 + x5
	
	#-- Repetir el bucle
	b bucle
#-- 
  #  ¿Cuantas instrucciones en código máquina tiene? 
  #-- 5 Instrucciones
  
   # ¿Cuantos bytes de memoria ocupa el programa?
   #-- 5 instrucciones x 4 bytes = 20 bytes de memoria
  
    #Completa esta tabla, indicando la instrucción en código máquina y su dirección (alineada)
    #Direccion 			Instruccion en codigp máquina
    
    #0x0040000			0x00000293

    #0x0040004			0x00000313
    #0x0040008			0x00128293
    #0x004000c			0x00530333
    #0x0040010			0xff9ff06f
    
    #Completa la tabla indicando qué byte del programa está almacenado en qué dirección
    #0x0040000			93
    #0x0040001			02
    #0x0040002			00	
    #0x0040003			00
    #0x0040004			13
    #0x0040005			03
    #0x0040006			00
    #0x0040007			00
    #0x0040008			93
    #0x0040009			82
    #0x004000a			12
    #0x004000b			00
    #0x004000c			33
    #0x004000d			03
    #0x004000e			53
    #0x004000f			00
    #0x0040010			6f
    #0x0040011			f0
    #0x0040012			9f
    #0x0040013			ff