#-- Programa principal
#-- pide al usuario que introduzca que introduzca el carácter, la anchura y la altura. 
#-- Luego llama a box() co nestos parámetros para imprimir el rectángulo en la consola. Por último termina

	 .data
	 
msg1:   .string "\nCaracter: "
msg2:   .string "\nAnchura: "
msg3:   .string "\nAltura: "

        .include "servicios.s"

	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	#-- Imprimir mensaje desde programa principal
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir CARACTER
	li a7, READ_CHAR
	ecall
	
	#-- Guardar char en s0
	mv s0, a0

	#-- Pedir anchura
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir anchura
	li a7, READ_INT
	ecall
	
#-- Guardar altura en a2
	mv s1, a0
	
	#-- Pedir altira
	la a0, msg3
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	#-- Guardar altura en a2
	mv a2, a0
	
	#--- Llamar a la subrutina box(car, anch, alt)
	mv a0, s0
	mv a1, s1
	#--- Llamar a la subrutina box
	jal box
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------