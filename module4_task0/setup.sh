sudo apt-get update
# install hugo #
url=$(curl -s "https://api.github.com/repositories/11180687/releases/latest" | grep -o 'https://.*hugo_extended.*_Linux-64bit.tar.gz')
curl -s $url -L -o hugo.tar.gz
tar -zxf hugo.tar.gz -C /usr/local/bin
rm /usr/local/bin/README.md
rm /usr/local/bin/LICENSE
rm hugo.tar.gz
# install golangcli #
docker run --rm -v $(pwd):/app -v ~/.cache/golangci-lint/v1.50.1:/root/.cache -w /app golangci/golangci-lint:v1.50.1 golangci-lint run -v
# install make #
sudo apt-get install -y make
sudo npm install -g markdownlint-cli
exit 0
