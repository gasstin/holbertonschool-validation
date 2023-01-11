sudo apt-get update
# install hugo #
docker pull klakegg/hugo
docker run klakegg/hugo
# install golangcli #
docker run --rm -v $(pwd):/app -v ~/.cache/golangci-lint/v1.50.1:/root/.cache -w /app golangci/golangci-lint:v1.50.1 golangci-lint run -v
# install make #
sudo apt-get install -y make
sudo npm install -g markdownlint-cli
exit 0
