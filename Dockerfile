FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.nyr2lib.mongodb.net
ENV MONGODB_USERNAME ajay
ENV MONGODB_PASSWORD 8t6gQZ99fo1qrXO2

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]