#--  Escribe un programa que saque un mensaje pidiendo al usuario que entre un texto: 
#-- "Introduce un texto: ", el usuario lo introduce y se almacena en una cadena en memoria. 
#--A continuación se escribe el mensaje "Esto es lo que has escrito: ". 
#-- En la siguiente línea debe aparecer el texto introducido por el usuario


	#-- Codigo de los servicios del Sistema Operativo
	.include "servicios.asm"
	#-- Tamaño máximo del texto
	
	.data
	
	#-- Reserva de espacio para una cadena
cad1:	.string "Introduce un texto: "
cad2: 	.string "Esto es lo que has escrito: "

texto:	.space MAX
	.text
	
	#------ Imprimir mensaje para pedir el primer numero
	#-- Situar en a0 la direccion de la cadena
	la a0, cad1
	
	#-- Imprimir la cadena
	li a7, PRINT_STRING
	ecall 
	#-- Leer numero
	#-- Longitud máxima de la cadena
	la a0, texto
	li a1, MAX
	li a7, READ_STRING
	ecall

		
	#--- Imprimir resultado
	la a0, cad2
	li a7, PRINT_STRING
	ecall
	#-- Sacar por pantalla el esultado
	la a0, texto
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall 