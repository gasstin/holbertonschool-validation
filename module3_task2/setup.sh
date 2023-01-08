sudo apt-get update 
url=$(curl -s "https://api.github.com/repositories/11180687/releases/latest" | grep -o 'https://.*hugo_extended.*_Linux-64bit.tar.gz')
curl -s $url -L -o hugo.tar.gz
tar -zxf hugo.tar.gz -C /usr/local/bin
rm /usr/local/bin/README.md
rm /usr/local/bin/LICENSE
rm hugo.tar.gz
apt-get install -y make
npm install -g markdownlint-cli
exit 0
