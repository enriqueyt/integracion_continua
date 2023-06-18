#!/bin/bash

# Detener y eliminar Elastic container.
echo "Deteniendo y eliminando Elastic container... ajuste rsm"
docker rm -f elasticsearch-practica

# Eliminar la network de backend y database.
echo "Eliminando networks...ajuste rsm"
docker network rm backend_database_network
docker network rm frontend_backend_network

# Eliminar la carpeta para la persistencia de datos de Elastic.
echo "Eliminando la carpeta de persistencia de datos...ajuste rsm"
rm -rf ./database-data

echo "Ajuste de codigo fuente JFOT ejercicio 2 ajuste del usuario jmratwork -Se adiciona cambio JFOT para generar conflicto-ajuste rsm"

