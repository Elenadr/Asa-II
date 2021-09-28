#-- Simula el programa sucesión de fibonacci: 0,1,1,2,3,5,8,13,21,34,55..



	.text

	#-- Inicializamos los registros x5,x6,x7 a 0
	addi x5, x0, 0
	addi x6, x0, 1
	addi x7, x0, 0
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	
	add x7, x5, x6   #-- Guardo en x7, la suma de x5 + x6
	add x5, x6, x0   #-- Actualizo x5, con el valor de x6 y valor cer

	add x6, x7, x0   #actualizo x6 con el valor de x7
	
	
	#-- Repetir el bucle
	b bucle
#-- 
  #  ¿Cuantas instrucciones en código máquina tiene? 
  #-- 7 Instrucciones
  
   # ¿Cuantos bytes de memoria ocupa el programa?
   #-- 7 instrucciones x 4 bytes = 28 bytes de memoria
  
    #Completa esta tabla, indicando la instrucción en código máquina y su dirección (alineada)
    #Direccion 			Instruccion en codigp máquina
    
    #0x0040000			0x00000293

    #0x0040004			0x00100313
    #0x0040008			0x00000393
    
    #0x004000c			0x006283b3
    #0x0040010			0x000302b3
    #0x0040014			0x00038333
    #0x0040018			0xff5ff06f
    
    #Completa la tabla indicando qué byte del programa está almacenado en qué dirección
    #0x0040000
    #0x0040001