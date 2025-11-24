FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

# Install dependencies outside Docker build
COPY node_modules ./node_modules

COPY . .

EXPOSE 3000
CMD ["node", "server.js"]
