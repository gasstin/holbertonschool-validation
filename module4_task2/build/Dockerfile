FROM golang:1.15.8-buster

COPY ./ /app

WORKDIR /app

RUN apt-get update \
    && apt-get clean \
    && rm -rf "/var/lib/apt/lists/*" &&\
    # install make
    apt-get install -y make --no-install-recommends &&\
    # install node
    curl --silent --location -fsSL https://deb.nodesource.com/setup_16.x | bash - &&\
    apt-get install -y nodejs --no-install-recommends &&\
    # install hugo
    url=$(curl -s "https://api.github.com/repositories/11180687/releases/latest" | grep -o "https://.*hugo_extended.*_Linux-64bit.tar.gz") &&\
    curl -s $url -L -o "hugo.tar.gz" &&\
    tar -zxf "hugo.tar.gz" -C "/usr/local/bin" &&\
    rm "/usr/local/bin/README.md" &&\
    rm "/usr/local/bin/LICENSE" &&\
    rm "hugo.tar.gz" &&\
    command -v hugo &&\
    # markdownlint
    npm install -g markdownlint-cli &&\
    npm install markdownlint &&\
    command -v markdownlint &&\
    # init hugo
    hugo mod init github.com/gasstin/module4_task2
