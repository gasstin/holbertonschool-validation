FROM golang:1.15.8-buster

WORKDIR /app

RUN apt-get install -y make &&\
    mkdir ~/node-latest-install && cd $_ && \
    curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1 && \
    ./configure --prefix=~/$MODULES && \   
    make install &&\
    curl https://www.npmjs.org/install.sh | sh &&\
    npm install -g markdownlint-cli