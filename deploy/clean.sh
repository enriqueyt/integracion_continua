#!/bin/bash

# Detener y eliminar Elastic container.
echo "Deteniendo y eliminando Elastic container...  -se adiciona ajuste de codigo jfot-"
docker rm -f elasticsearch-practica

# Eliminar la network de backend y database.
echo "Eliminando networks... -se adiciona ajuste de codigo jfot-"
docker network rm backend_database_network
docker network rm frontend_backend_network

# Eliminar la carpeta para la persistencia de datos de Elastic.
echo "Eliminando la carpeta de persistencia de datos..."
rm -rf ./database-data

echo "Ajuste de codigo fuente JFOT ejercicio 2 ajuste del usuario jmratwork -Se adiciona cambio JFOT para generar conflicto-"

