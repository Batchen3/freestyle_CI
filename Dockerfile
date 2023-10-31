FROM node:18-slim 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# in order to make the app work
RUN npm i -D handlebars@4.5.0

COPY . .
# localhost//:4000
EXPOSE 4000

CMD [ "node", "index.js" ]