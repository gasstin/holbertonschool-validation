#!/bin/bash
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash
exit
sudo apt-get update && sudo apt-get install -y hugo make
make build
