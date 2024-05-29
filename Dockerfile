FROM node:18-alpine

RUN mkdir "/app"

WORKDIR /app

COPY package*.json /app .

RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev"]