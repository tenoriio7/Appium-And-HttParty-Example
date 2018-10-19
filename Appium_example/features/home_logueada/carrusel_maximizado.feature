#language: es

Característica: Carrussel 
Yo como usuario quiero ......

Antecedentes:
Dado visualizo a home logueada

@instrumentado
Escenario: Yo como usuario debo visualizar solamente los 4 ultimos digitos de la tarjeta
Entonces Debo visualizar solamente los 4 ultimos digitos

@instrumentado
Escenario: Yo como usuario debo visualizar el grafico de cupo disponible en porcentage
Entonces debo visualizar el grafico de cupo con porcentage


@instrumentado
Escenario: Yo como usuario debo visualizar el cupo total
Entonces debo visualizar el cupo total

@instrumentado
Escenario: Validacion que el punto de la tarjeta actual es mas grande que el de las demas tarjetas
Y debo visualizar los puntos que indican mas de un tarjeta
Entonces el punto correspondiente a la tarjeta en pantalla debe ser mas grande

Escenario: Visualizar carrusel expandido despues de clikiar en ver mas
Cuando acesso ver mas    
Entonces debo visualizar el carrosel expandido

Escenario: Visualizar carrusel minimizado despues maximizar
E acesso ver mas
E debo visualizar el carrosel expandido
Cuando click en ver menos 
Entonces debo visualizar el carrosel minimizado

Escenario: Validacion que la proxima tarjeta tiene el mismo estado de la tarjeta anterior
E acesso ver mas
Cuando deslizo a la siguiente tarjeta
Entonces debe permanecer el carrusel maximizado en la siguiente tarjeta 
