FROM node:alpine

WORKDIR /app

# For avoiding multiple times node installation
COPY package.json ./
RUN npm install

COPY . .

CMD ["npm","start"]

