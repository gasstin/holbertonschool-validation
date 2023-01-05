#!/bin/bash
sudo apt-get update 
apt-get  install hugo 
apt-get install make
make build
exit
2>&1 echo "recipe for target 'build' failed"
