FROM node:18-alpine
WORKDIR /app

RUN npm config set registry https://registry.npmjs.org/

COPY package*.json ./

RUN npm install --production --legacy-peer-deps

COPY . .

EXPOSE 3000
CMD ["node","server.js"]
