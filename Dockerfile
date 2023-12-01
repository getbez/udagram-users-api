FROM node:19
WORKDIR /app
COPY www/ /app/
RUN npm install
EXPOSE 8083

CMD ["node", "server.js"]

