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

# remover archivos ts
RUN rm -rf src

# exponer el puerto 8081
EXPOSE 8081

# iniciar el servidor
CMD ["node", "dist/server.js"]
