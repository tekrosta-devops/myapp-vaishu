FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

# Fix npm cache and integrity issues
RUN npm config set registry https://registry.npmjs.org/
RUN npm cache clean --force

# Force install without integrity verification
RUN npm install --legacy-peer-deps --force

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
