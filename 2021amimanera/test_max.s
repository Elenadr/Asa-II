#-----------------------------------
#-- Programa principal: Test_max
#-----------------------------------
	#-- Importa las constanstes para acceso a los servicios
	#-- del sistema operativo del fichero so.s
	.include "so.s"
	#-- Define aqui las constantes K1 y K2 para las pruebas
	.eqv K1 20
	.eqv K2 30
	.data 
msg:	.string "Calcular el valor maximo entre: "
msg1:	.string " y "
resul:	.string "\nResultado: "

	.text
	#-- Imrpimir mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	#-- imprimir numero
	li a7, PRINT_INT
	li a0, K1
	ecall
	#-- Imrpimir y
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	#-- imprimir numero
	li a7, PRINT_INT
	li a0, K2
	ecall
	

	
	li a0, K1
	li a1, K2
	#--llamamos a max
	jal max
	
	mv s0, a0
	
	#-- Imrpimir resultado

	li a7, PRINT_STRING
	la a0, resul
	ecall
	
	mv a0, s0
	#--imprimir numero
	li a7, PRINT_INT
	ecall

# Otro puntito mas a la saca... ¡vamos!
	#-- Punto de salida	
	li a7, EXIT
	ecall