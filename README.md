# Proyecto IoT usando Elasticsearch

Este proyecto es una aplicación web que utiliza Elasticsearch como base de datos. Necesito utilizar Elasticsearch en mi trabajo, por lo que utilizaré esta tecnología en este proyecto dé contenedores. La aplicación permitir a los usuarios cargar archivos y realizar búsquedas en tiempo real. Se ha creado este proyecto para cumplir con los requisitos del módulo 4 - Contenedores.

Este proyecto de ejemplo lo pienso usar para prácticas de IoT, se deberá configurar Kafka como message bus data flow, se creara productores de data (me compre una rasperry PI) y se deberá crear consumidores que almacenen la información en Elastic, luego se expondrá unos endpoints para exponer la data de Elastic en la página web.

## Requisitos previos

1. [Docker](https://docs.docker.com/engine/install/) instalado en tu máquina.
2. La aplicación web debe estar adaptada para utilizar Elasticsearch.

## Ejecución del proyecto con Local Modo Desarrollo

1. Clonar proyecto en local o descomprimir

2. Otorga permisos de ejecución al archivo `deploy/deploy.sh` 

```
    chmod +x deploy/deploy.sh
```
y ejecutarlo
```
    ./deploy/deploy.sh
```
Este script inicialmente descargará todas las imágenes necesarias, luego creara una network, un directorio para la persistencia de datos de Elasticsearch,  seguidamente creara una carpeta para almacenar los datos y ejecutará un contenedor Elasticsearch.

1. Instalar [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/#mac-stable)

```
    npm install --global yarn
```
   
4. Instalar dependencias
```
    yarn install
```

5. Instalar dependencias infrastrutura
```
    yarn install
```

5. Iniciar el servidor Web desde la carpeta inicial

```
    yarn workspace infrastrutura start 
```
6. Accede a la aplicación web en tu navegador en la dirección http://localhost:8081. 

## Limpieza de recursos

1. Otorga permisos de ejecución al archivo `deploy/clean.sh` y ejecutar

```
    chmod +x /deploy/clean.sh
    
    ./deploy/clean.sh
```

## Estrutura del proyecto

Selecciona Nodejs como servidor web para poder desplegar una aplicación web

## Proximas caracteristicas

Actualmente, Elastic está configurado para un `single-node`, para comenzar con un clúster en docker la seguridad estará habilitada automáticamente y configurada. Pasos para agregar seguridad

- [Claves certificadas](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#elasticsearch-security-certificates) son generadas para el transporte y para capas HTTP 
- La capa de transporte de Seguridad (TLS) configuración están descritas en el archivo YML `elasticsearch.yml`
- Generación del password para el usuario `elastic`
- Se genera un token de inscripción para Kibana. Para comenzar con [Kibana](https://www.elastic.co/guide/en/kibana/8.7/docker.html)

La guía que he seguido está disponible[aqui](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html)





