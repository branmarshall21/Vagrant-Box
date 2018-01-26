FROM node:8
MAINTAINER Brandyn Marshall <branmarshall21@gmail.com>

RUN apt-get update

COPY . /app

WORKDIR /app

RUN npm install

EXPOSE 8088

# Create a basic webserver and sleep forever
CMD ["node", "/app/index.js"]
