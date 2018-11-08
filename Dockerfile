# Specify a base image
# FROM alpine
FROM node:alpine

WORKDIR /usr/app

# Copy files
COPY ./package.json ./

# Install some dependencies
# This is the command to add nodejs to alpine
# RUN apk add --update nodejs
RUN npm install

# Copy files
COPY ./ ./

# Default command
CMD ["npm", "start"]