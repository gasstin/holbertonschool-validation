apt-get update
# install hugo #
url=$(curl -s "https://api.github.com/repositories/11180687/releases/latest" | grep -o 'https://.*hugo_extended.*_Linux-64bit.tar.gz')
curl -s $url -L -o hugo.tar.gz
tar -zxf hugo.tar.gz -C /usr/local/bin
rm /usr/local/bin/README.md
rm /usr/local/bin/LICENSE
# rm hugo.tar.gz
# install make #
apt-get install -y make
# install node
apt install nodejs
Y
npm install -g markdownlint-cli
# remove go
rm -rf /usr/local/go/bin/go
rm -rf /usr/bin/go
exit 0
