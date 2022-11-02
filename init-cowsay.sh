#!/bin/bash
versionTag=$1
docker build -t mateusz_kiszka_cowsay:$versionTag .
docker rm -f cow
docker run -d --network=jenkins-net -p 4001:4001 --name cow cowsay 4001
