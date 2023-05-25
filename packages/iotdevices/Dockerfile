FROM node:14

# directorio de trabajo
WORKDIR /usr/src/app

# copiar package.json y yarn.lock al directorio de trabajo
COPY package.json yarn.lock ./

# instalar dependencias
RUN yarn install

# copiar codigo fuente en la carpeta de trabajo
COPY . .

# generar codigo con yarn
RUN yarn build

# user nginx como servidor de archivos de react
FROM nginx:1.21-alpine

# copiar la carpeta build de react al directorio de nginx
COPY --from=0 /usr/src/app/build /usr/share/nginx/html

ENV REACT_APP_API_URL http://infrastruture-container:8081

# exposicion del puerto 80
EXPOSE 80

# iniciar el servidor nginx
CMD ["nginx", "-g", "daemon off;"]
