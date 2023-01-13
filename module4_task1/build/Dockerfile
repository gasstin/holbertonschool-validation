FROM golang:1.15.8-buster

WORKDIR /app

RUN apt-get install -y make &&\
    curl -fsSL https://rpm.nodesource.com/setup_16.x | bash - &&\
    apt-get install -y nodejs &&\
    npm install -g markdownlint-cli