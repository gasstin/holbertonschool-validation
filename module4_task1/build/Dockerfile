FROM golang:1.15.8-buster

WORKDIR /app

RUN apt-get install -y make &&\
    curl -fsSL https://rpm.nodesource.com/setup_16.x | bash - &&\
    mkdir ~/node-latest-install && cd $_ && \
    curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1 && \
    make install && \
    curl https://www.npmjs.org/install.sh | sh &&\
    npm install -g markdownlint-cli