FROM node:18-alpine
WORKDIR /app

# No npm install inside Docker
# Dependencies will be installed in CodeBuild

COPY . .

EXPOSE 3000
CMD ["node","server.js"]
