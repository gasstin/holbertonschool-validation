sudo apt-get update 
url=$(curl -s "https://api.github.com/repositories/11180687/releases/latest" | grep -o 'https://.*hugo_extended.*_Linux-64bit.tar.gz')
curl -s $url -L -o hugo_latest.tar.gz
tar -zxf hugo_latest.tar.gz -C /usr/local/bin
rm /usr/local/bin/README.md
rm /usr/local/bin/LICENSE
rm hugo_latest.tar.gz
apt-get install -y make
make build
exit 0
