FROM node:18-slim 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# in order to make the app run
RUN npm i -D handlebars@4.5.0

COPY . .

EXPOSE 4000

CMD [ "node", "index.js" ]