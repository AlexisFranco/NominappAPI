# Prueba técnica de Nominapp / Back-end

##### Se crearon los siguientes endpoints:

Crear un arreglo aleatorio:

`ran_array/:array_length`

En este endpoint, el **:array_length**, debe estar entre 10 y 30, por lo cual la ruta sería la siguiente:

http://localhost:3000/ran_array/10

------------
Listar los arreglos aleatorios creados:

`ran_array`

La idea de este endpoint es que el usuario pueda consultar los arreglos de la BD, por lo cual la ruta sería la siguiente:

http://localhost:3000/ran_array

------------
Calcular y retornar el mayor rango de los números contenidos en cierto arreglo de la BD:

`ran_array/:id`

En este endpoint, **:id** hace referencia al id del arreglo al que el usuario quiere obtener el rango, por lo cual la ruta sería la siguiente:

http://localhost:3000/ran_array/1
