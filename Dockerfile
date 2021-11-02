# syntax=docker/dockerfile:1

FROM node:12.18.1

WORKDIR /usr/src/app

ENV PORT 8080
ENV HOST 0.0.0.0

COPY package*.json ./

RUN npm install --only=production

# Copy the local code to the container
COPY . .

# Build production app
# RUN npm run Build

# Start the service
CMD npm start