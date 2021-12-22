	.include "so.s"
	.data
msg:	.string "Peso de la cadena "
msg1:	.string ": "
cad:	.string "hola"

	.text

#--Programa principal
	#Imprimir msg generico
	la a0,msg
	li a7,PRINT_STRING
	ecall
	
	#Imprimir la cadena parámetro
	
	la a0,cad
	li a7,PRINT_STRING
	ecall
	
	#Imrpimir fin del msg
	la a0,msg1
	li a7,PRINT_STRING
	ecall
	
	#-- Llamar a peso()
	la a0,cad
	jal peso
	
	#-- En a0 está el peso
	li a7,PRINT_INT
	ecall
	
	#-- Punto de salida
	li a7,EXIT
	ecall