FROM node:12.7-alpine  as builder

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
COPY . .
RUN npm i 
RUN npm run build --prod --build-optimizer

FROM nginx:1.13.9-alpine
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /usr/src/app/src/ /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
