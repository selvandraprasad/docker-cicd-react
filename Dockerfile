# install dependencies
# build react-app into build/ folder
FROM node:10-alpine AS build
WORKDIR /usr/src/app
RUN npm install -g yarn
COPY package*.json ./
RUN yarn install
COPY . .
ARG REACT_APP_ENVIRONMENT
RUN yarn build
