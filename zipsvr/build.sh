#!/usr/bin/env bash
set -e
echo "building go server for Linux..."
#Linux users, execut: CGO_ENABLED=0 go build -a
CGO_ENABLED=0
GOOS=linux go build -a
docker build -t chango2/zipsvr .
docker push chango2/zipsvr
go clean
