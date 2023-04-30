# Welcome to your Vue Front-end Web Application
Hi! My name is Andrew and I'll be guiding you through this app! I'll explain each file and how to get started with development. This app was carefully created to follow best practices. If you have any questions or comments please reach out to me at @email.com.

# Setup

## Recommended IDE Setup

[VSCode](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur) + [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin).


## Type Support for `.vue` Imports in TS

TypeScript cannot handle type information for `.vue` imports by default, so we replace the `tsc` CLI with `vue-tsc` for type checking. In editors, we need [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin) to make the TypeScript language service aware of `.vue` types.

If the standalone TypeScript plugin doesn't feel fast enough to you, Volar has also implemented a [Take Over Mode](https://github.com/johnsoncodehk/volar/discussions/471#discussioncomment-1361669) that is more performant. You can enable it by the following steps:

1. Disable the built-in TypeScript Extension
    1) Run `Extensions: Show Built-in Extensions` from VSCode's command palette
    2) Find `TypeScript and JavaScript Language Features`, right click and select `Disable (Workspace)`
2. Reload the VSCode window by running `Developer: Reload Window` from the command palette.

## Customize configuration

See [Vite Configuration Reference](https://vitejs.dev/config/).


Install node modules
```sh
npm install
```

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Type-Check, Compile and Minify for Production

```sh
npm run build
```

### Deploy docker app for production
```sh
docker compose -f "docker-compose-prod.yml" up -d --build 
```

### Deploy docker app for development
The compose file is the same as prod, but having seperate compose files can be helpful for certain projects. Especially if you have multiple containers running in parallel. If you don't think you'll need this file you can delete it.
```sh
docker compose -f "docker-compose-dev.yml" up -d --build 
```

# The Main Tools that make up this App
It's important to know which tools are being working together to create & deploy the app. Getting familiar with each of them will give you greater leverage over the app.

## Docker

## VueJS

## NGinx


# File & Folder Explanations

## dist
This is where the static build of the web app is stored after compilation and minification. If this folder doesn't exist yet (it shouldn't when you first open the app), you can run npm run build to compile the app. This folder is what the docker container serves.

## node_modules
Where all imported modules are stored.

## public
Generally where assets such as images are stored.

## src
This folder contains all of the web app's code.

## .env
For storing environment variables that can be accessed from throughout the app.

## .gitignore
https://git-scm.com/docs/gitignore
Tells git what to ignore so there aren't unnecessary files stored in git. If you aren't using git, you can delete this file.

## default.conf
https://www.nginx.com/resources/wiki/start/topics/examples/full/
The default configuration file for NGinx. It defines important variables for the NGinx web server such as what port to run on, and where the web app's files are stored.

## nginx.conf
https://www.nginx.com/resources/wiki/start/topics/examples/full/
NGinx's configuration file. It includes the default.conf file.

## Dockerfile
https://docs.docker.com/engine/reference/builder/
Tells Docker how to create a container and run the web app inside it.

## docker-compose-dev.yml
https://docs.docker.com/compose/
Starts the containers required for the development version of the web app.

## docker-compose-prod.yml
https://docs.docker.com/compose/
Starts the containers required for the production version of the web app.

## .dockerignore
https://docs.docker.com/engine/reference/builder/
This tells docker what to ignore when it creates the container. Notice that /dist and /node_modules are ignored. That's because docker will run npm install & npm run build in the container.

## package-lock.json
https://docs.npmjs.com/cli/v9/configuring-npm/package-lock-json
Defines specific versions for the app's dependencies, npm should update this file automatically and you shouldn't have to mess with it often.

## package.json
https://docs.npmjs.com/cli/v9/configuring-npm/package-json
Defines the app's dependencies, scripts, and overall configuration. Learning about this file will save you a lot of headaches, and allow you to create powerful & convenient scripts.

## tsconfig.json
https://www.typescriptlang.org/docs/handbook/tsconfig-json.html
The configuration file for TypeScript.

## vite.config.json
https://vitejs.dev/config/
The configuration file for Vite.