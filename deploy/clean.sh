#!/bin/bash

# Detener y eliminar Elastic container
echo "Deteniendo y eliminando Elastic container..."
docker rm -f elasticsearch-practica

# Eliminar la network de backend y database
echo "Eliminando networks..."
docker network rm backend_database_network
docker network rm frontend_backend_network

# Eliminar la carpeta para la persistencia de datos de Elastic
echo "Eliminando la carpeta de persistencia de datos..."
rm -rf ./database-data

echo "Ajuste de codigo fuente JFOT ejercicio 2"
