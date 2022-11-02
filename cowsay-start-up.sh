#!/bin/bash
imageTag=$1
#there should be also checking and installing dependency(like docker or docker-compose) in case that ec2 is fresh but no time left for that 
docker pull public.ecr.aws/c7o8u9c1/mateusz_kiszka_cowsay:$imageTag
docker stop cow 
docker rm cow
docker run -d -p 4001:4001 --name=cow public.ecr.aws/c7o8u9c1/mateusz_kiszka_cowsay:$imageTag 4001
