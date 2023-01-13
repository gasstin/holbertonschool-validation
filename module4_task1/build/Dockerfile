FROM golang:1.15.8-buster

WORKDIR /app

RUN apt-get install -y make &&\
    curl -fsSL https://rpm.nodesource.com/setup_14.x | bash - &&\
    npm install -g markdownlint-cli