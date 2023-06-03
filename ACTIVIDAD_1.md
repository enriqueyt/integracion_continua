# Configuración del ambiente local de desarrollo

## Requisitos previos

1. [Node.js](https://nodejs.org/en/download/) (version LTS)
2. [Yarn](https://yarnpkg.com/getting-started/install)
3. [Docker](https://www.docker.com/products/docker-desktop)
4. Elasticsearch (lo tendremos displonible desde el modulo de containers)

## Configuración de IDE

Recomendamos el uso de [Visual Studio Code](https://code.visualstudio.com/download) ofrece gran soporte a multiples lenguajes de programacion y extensiones útiles.

### Extensiones recomendadas para VSCode:

1. [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint): Proporciona soporte para ESLint directamente en el IDE, incluyendo la comprobación del código en tiempo real y la posibilidad de arreglar automáticamente problemas de estilo de código.
2. [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode): Formateador de código para mantener la consistencia de estilo.
3. [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker): Ayuda a desarrollar aplicaciones de Docker proporcionando comandos para trabajar con imágenes y contenedores.
4. [VSCode Elasticsearch](https://marketplace.visualstudio.com/items?itemName=kiwfy.elasticsearch): Proporciona atajos y comandos útiles para trabajar con Elasticsearch.

## Mejores Prácticas para Usar Git, Commits y Pull Requests en GitHub

Algunas erglas para ctrabajar con Git 

### Configuración Inicial de Git

1. **Instalación**: Seguir los pasos desde el siguiente link [aquí](https://git-scm.com/downloads).
2. **Configuración**: Configurar espacio repositorio local con sus credenciales:

    ```bash
    git config --local user.name "Nombre y Apellido"
    git config --local user.email "email@student.threepoints.com"
    ```

### Clonar Repositorio principal

Por Http

```bash
git clone https://github.com/enriqueyt/integracion_continua.git
```

### Creacion de Branches

Crearemos ramas por cada caracteristicas, cambio o bug deseado

```bash
git checkout -b nro-ticket-nombre-de-la-rama origin/main-o-rama-deseada
```

Donde `nro-ticket` sera el numero asignado en Jira

### Realizar Commits

Los commits deberian ser cortos, autónomos y contener cambios relacionados. Aqui algunas sugerencias:

1. **Mensajes Descriptivos**: Escribe mensajes de commit claros y significativos que expliquen qué cambios se han realizado y por qué.
2. **Un Cambio, Un Commit**: Cada commit debe contener un solo cambio. No mezcles varios cambios en un solo commit.
3. **Trabaja en Branches**: Realiza tus cambios en una rama separada y luego fusiona tus cambios con la rama principal a través de un Pull Request.

Para añadir y confirmar tus cambios:

```bash
git add nombre-del-archivo
git commit -m "Mensaje de commit descriptivo"
```

### Actualizar la Rama remota

Ahora solo debemos empujar los cambios

```bash
git pull origin main
```

## Pull Requests en GitHub

Un Pull Request (PR) es la forma de proponer en GitHub. Segurencias para la creacion de PRs:

1. **Descripción Clara**: Debe contener datos del ticket en Jira.
2. **Pequeños PRs**: Los PRs deberian ser pequeños y contener cambios relacionados.
3. **Solicitar Revisión**: Solicita una revisión de tu PR una vez hayas completado la tarea.

Para crear un PR: Luego de haber empujado las rama a GitHub con el comando `git push origin nombre-de-la-rama`:

1. Ve al repositorio en GitHub.
2. Clic en "New Pull Request".
3. Selecciona la rama base para comparar.
4. Clic en "Create Pull Request".
5. Assignar el PR a desarrollador.
6. Una vez completada la actividad solicitar una revisión.


## Estándares de Commit
Al momento de realizar un commit, es importante aplicar el  siguiente estándar de mensaje  de la empresa:

git commit -m "<< "iniciales del desarrollador ">> - <<"prefijo del tipo de cambio">> - <<"mensaje">>

Ejemplo

git commit -m "jfot-docs-se adiciona cambios en el readme de proyecto"

Los prefijos son los siguientes:

feat: Una nueva caracteristica para el usuario.
fix: Arregla un bug de desarrollo.
build: Cambios en el sistema de build, tareas de despliegue o instalación.
ci: Cambios en la integración continua.
docs: Cambios en la documentación.
style: Cambios de formato, tabulaciones, espacios o puntos y coma, etc; no afectan al usuario.
test: Añade tests o refactoriza uno existente.
