FROM node:18-slim
WORKDIR /application-service
COPY package*.json .
RUN npm install --production
COPY . .
EXPOSE 3001
CMD ["node", "index.js"]
