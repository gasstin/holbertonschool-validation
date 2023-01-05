#!/bin/bash
sudo apt-get update 
apt-get  install hugo 
apt-get install make
make build
exit
1>&2 echo "recipe for target 'build' failed"
