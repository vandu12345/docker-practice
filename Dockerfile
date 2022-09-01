FROM node:alpine as builder

WORKDIR /app

COPY frontend/package.json .

RUN npm install

COPY frontend/ .

RUN npm run build

# /app/build <--- all the stuff we care about


FROM nginx
EXPOSE 80
COPY --from=builder /app/build   usr/share/nginx/html  

