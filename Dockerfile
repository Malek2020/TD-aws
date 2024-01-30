FROM node:14

WORKDIR /app

COPY package*.json ./

USER root
RUN npm install

USER node

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
