FROM alpine:3.8

COPY package*.json ./

RUN npm set progress=false && npm config set depth 0 && npm cache clean --force

RUN npm i && mkdir /ng-app 

WORKDIR /ng-app

COPY . .

RUN $(npm bin)/ng build --prod --build-optimizer

