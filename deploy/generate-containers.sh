# # generando container para la aplicacion backend iot. add network
echo "Ejecutando Elasticsearch container..."
docker run -d \
    -p 8081:8081 \
    --name infrastruture-container \
    --net frontend_backend_network \
    -e ELASTICSEARCH_HOST=elasticsearch-practica \
    infrastructura-image

# conectar infrastruture-container a la network backend_database_network
docker network connect backend_database_network infrastruture-container

# generando container para la aplicacion web iot web clien
echo "Generando container para la aplicacion web iot web client..."
docker run -d \
    -p 80:80 \
    --name iotwebclient-container \
    --net frontend_backend_network \
    -e REACT_APP_API_URL=http://infrastruture-container:8081 \
    iotwebclient-image
