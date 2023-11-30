FROM node:13

WORKDIR /usr/app

COPY package*.json ./
RUN npm install
RUN npm run build
COPY www ./

EXPOSE 8083

CMD ["node", "server.js"]

