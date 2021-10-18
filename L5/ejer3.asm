##-- Primera llamaada al sistema
# Si tu me llamas,

# -- Servicios del so
.eqv EXIT 10 # -- Servivio exit
.text
	
main:
# --  Punto de entrada

# -- Calculos y cosas

# --  Terminar

# -- iNvocar el servicio exit RTFM!

# -- El valor de 10 es un número mágico. 
# -- No estamos dando el valor 10, es un exit
#--li a7, 10
#--ecall

#-- Es lo mismo que el eejer 2 pero es más legible para un humano, no crea confusión.
li a7, EXIT
ecall

