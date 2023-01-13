FROM golang:1.15.8-buster

COPY ./ /app

WORKDIR /app

RUN apt-get install -y make &&\
    apk add zip &&\
    curl --silent --location -fsSL https://deb.nodesource.com/setup_14.x | bash - &&\
    apt-get install -y nodejs &&\
    url=$(curl -s "https://api.github.com/repositories/11180687/releases/latest" | grep -o 'https://.*hugo_extended.*_Linux-64bit.tar.gz') &&\
    curl -s $url -L -o hugo.tar.gz &&\
    tar -zxf hugo.tar.gz -C /usr/local/bin &&\
    rm /usr/local/bin/README.md &&\
    rm /usr/local/bin/LICENSE &&\
    rm hugo.tar.gz &&\
    which hugo &&\
    hugo mod init  github.com/gasstin/module4_task1 &&\
    npm install -g markdownlint-cli