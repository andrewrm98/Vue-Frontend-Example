### Stage 1: Build ###
FROM node:18.14.2-alpine AS build
WORKDIR /app

# These two steps are done separately because Docker will cache the install making container rebuilds faster.
COPY package.json ./
RUN npm install --no-fund --loglevel=error

# TODO verify .dockerignore avoids copying non-necessary files
COPY . .
RUN npm run build

### Stage 2: Run ###
FROM nginx:stable-alpine
# Remove the default nginx website.
RUN rm -rf /usr/share/nginx/html/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=build app/dist /usr/share/nginx/html
