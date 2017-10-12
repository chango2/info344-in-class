#!/bin/sh
set -e
echo "building go server for Linux..."
`CGO_ENABLED=0 go build -a`
sudo docker build -t chango2/zipsvr .
sudo docker push chango2/zipsvr
