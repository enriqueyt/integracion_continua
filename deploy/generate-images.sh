# generando imagen para la aplicacion backend io
echo "Ejecutando Elasticsearch container..."
cd ..
cd packages/infrastructura
docker build -t infrastructura-image .
cd ..
cd ..
cd deploy

# generando imagen para la aplicacion web iot web clien
echo "Generando imagen para la aplicacion web iot web client..."
cd ..
cd packages/iotdevices
docker build -t iotwebclient-image .
cd ..
cd ..
cd deploy