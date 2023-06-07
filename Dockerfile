# syntax=docker/dockerfile:1

# Start your image with a node base image
FROM node:18-alpine

ENV NODE_ENV=production

# The /app directory should act as the main application directory
WORKDIR /app

# Copy the app package and package-lock.json file
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD ["node", "index.js"]