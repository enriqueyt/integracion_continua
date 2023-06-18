#!/bin/bash
echo "realizando cambios desde la playa"
# descargar las imágenes necesarias
echo "Descargando imágenes de Docker...ajuste rsm"
docker pull node:14
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.16.3

# creacion de una network que aislara la DB
echo "Creando network para connectar backend y database...ajuste rsm"
docker network create backend_database_network

# creando network para conectar front end and backend
echo "Creando network para conectar front end and backend...ajuste rsm"
docker network create frontend_backend_network

# Crear volumen para la persistencia de datos
echo "Creando volumen para la persistencia de datos en elastic..."
docker volume create database-data

# creacion de la carpeta que va a persistir los datos
echo "Creando carpeta para persistir datos"
mkdir -p ./database-data

# ejecutar Elasticsearch con persistencia de datos y protegido por la elastic-network
echo "Ejecutando Elasticsearch container..."
docker run -d \
    --name elasticsearch-practica \
    --net backend_database_network \
    -v "$(pwd)/database-data":/usr/share/elasticsearch/data \
    -p 9200:9200 -p 9300:9300 \
    -e "discovery.type=single-node" \
    docker.elastic.co/elasticsearch/elasticsearch:7.16.3

