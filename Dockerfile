FROM public.ecr.aws/docker/library/node:18-alpine

WORKDIR /app

COPY package*.json ./

# DO NOT run npm install here
COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
