FROM golang:1.15.8-buster

COPY ./ /app

WORKDIR /app

RUN apt-get install -y make &&\
    curl --silent --location -fsSL https://deb.nodesource.com/setup_14.x | bash - &&\
    apt-get install -y nodejs &&\
    npm install -g markdownlint-cli