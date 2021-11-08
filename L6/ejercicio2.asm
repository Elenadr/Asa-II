#-- Escribe un programa que defina las dos cadenas siguientes: "Hola\n" y "Adios\n" en tiempo de compilación, 
#-- y que las imprima por la consola, de manera independiente (primero una cadena y luego la otra)

	#-- Codigo de los servicios del Sistema Operativo
	.include "servicios.asm"
	.data
	
	#-- Definimos las cadenas en
	#-- tiempo de compilacion
cad1: 	.string "Hola\n"
cad2:	.string "Adios\n"
	
	
	.text
	
	#------ Imprimir la primera cadena
	
	#-- Situar en a0 la direccion de la cadena
	la a0, cad1
	
	#-- Imprimir la primera cadena
	li a7, PRINT_STRING
	ecall 
	#-- Imprimir la segunda cadena
	la a0, cad2
	li a7, PRINT_STRING
	ecall 
	#-- Terminar
	li a7, EXIT
	ecall
