FROM golang:1.15.8-buster

WORKDIR /app

RUN apt-get install -y make &&\
    pkg install node &&\
    npm install -g markdownlint-cli