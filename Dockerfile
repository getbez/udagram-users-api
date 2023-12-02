FROM node:19
## Create app directory
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci 

COPY . .
EXPOSE 8083
CMD [ "npm", "run", "prod" ]