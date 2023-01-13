FROM golang:1.15.8-buster

WORKDIR /app

RUN apt-get install -y make &&\
    apk add nodejs npm &&\
    npm install -g markdownlint-cli