sudo apt-get update
# install hugo #
url=$(curl -s "https://api.github.com/repositories/11180687/releases/latest" | grep -o 'https://.*hugo_extended.*_Linux-64bit.tar.gz')
curl -s $url -L -o hugo.tar.gz
tar -zxf hugo.tar.gz -C /usr/local/bin
rm /usr/local/bin/README.md
rm /usr/local/bin/LICENSE
rm hugo.tar.gz
# install make #
sudo apt-get install -y make
sudo npm install -g markdownlint-cli
which go
rm -rf /usr/bin/go
which go
docker version | grep -q Server && echo OK
which hugo
exit 0
