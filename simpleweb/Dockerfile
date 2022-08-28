# Specify a base image
FROM node:alpine

WORKDIR /usr/app
# Install Some dependencies
COPY ./package.json ./
RUN npm install

COPY ./ ./
# Startup Command
CMD ["npm","start"] 