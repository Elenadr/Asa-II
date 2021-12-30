	#-- Escribe un programa que pida al usuario que introduzca una cadena, que calcule su longitud, 
	#-- la imprima en la consola y termine. El tamaño máximo de la cadena será de 1024 bytes. 
	#-- Ten en cuenta que el servicio READ_STRING introduce el carácter '\n' al final de la cadena. 
	#-- Usa este carácter para encontrar el final
	
	.include "servicios.asm"
	#-- Definimos máximo
	.eqv MAX 1024
	.data
msg:	.string "Introduce una cadena: "
cad:	.space MAX
count:	.string "Longitud: "
	
	.text 
	
	#-- Pedir al usuario que eintroduzca una cadena
	#-- Imprimir mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- t0 puntero a la cadena
	la t0, cad
	
	#-- Implemento el contador
	li t1,0
bucle:	
	lb t2, 0(t0)
	#- Si el caracter es \n, terminar
	li t3, '\n'
	beq t2, t3, fin_bucle
	
	#-- si no sumamos al contador
	addi t1,t1,1
	#-- Apuntar siguinete carcaryer
	addi t0,t0,1
	b bucle
	
	
	# fin bucle
fin_bucle:
	#-- Imprimir mensaje
	la a0, count
	li a7, PRINT_STRING
	ecall
	#Punto de salida
	mv a0, t1
	li a7, PRINT_INT
	ecall
end:	
	li,a7, EXIT