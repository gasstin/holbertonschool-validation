FROM golang:1.15.8-buster

WORKDIR /app

RUN apt-get install -y make &&\
    curl -sL https://deb.nodesource.com/setup_14.x | -E bash - &&\
    apt-get install -y nodejs &&\
    npm install -g markdownlint-cli