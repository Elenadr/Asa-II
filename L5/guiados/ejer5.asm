##-- Primera llamaada al sistema
# Si tu me llamas,

# -- Servicios del so
.eqv EXIT 10 # -- Servivio exit
.eqv PRINT_INT 1 #-- Servivio impresión d eun númeor entero
.eqv READ_INT 5 #-- sERVICIO PARA LEER UN ENTERO

.text

#Imprimir un numero entero en la consola
li a0, 200
li a7, PRINT_INT
ecall

	#- PEDIR numero al user	
li a7, READ_INT
ecall

#En a0, tenemos el numero que sepide al user.

# --  Punto de entrada

# -- Calculos y cosas

# --  Terminar

# -- iNvocar el servicio exit RTFM!


#-- Es lo mismo que el eejer 2 pero es más legible para un humano, no crea confusión.
li a7, EXIT
ecall

