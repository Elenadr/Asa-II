# -- Escribe un programa que realice la suma de dos números enteros introducidos por el teclado. 
#-- Se introducen los dos números y se muestra el resultado de la suma en la consola. 
#-- Intenta usar buenas prácticas de programación. Activa los diálogos emergentes para la introducción de datos
#-- Prueba el programa ejecutándolo desde la línea de comandos directamente

.eqv READ_INT 5
.eqv EXIT 10
.eqv PRINT_INT 1

.text
#-- leer por teclado
li, a7, READ_INT
ecall
#-- mover a var temporal t0
mv t0, a0

#ller el otro entero
li, a7, READ_INT
ecall

# mover a var temporal t1
mv t1, a0

# sumar en t3, t0 y t1
add t3, t0, t1

# mover t3, a a0
mv a0, t3

# imprimir
li a7, PRINT_INT
ecall
li, a7, EXIT
ecall