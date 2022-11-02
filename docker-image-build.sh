#!/bin/bash
#example usage ./docker-create-image.sh 1.1 
versionTag=$1

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/c7o8u9c1


docker tag mateusz_kiszka_cowsay:$versionTag public.ecr.aws/c7o8u9c1/mateusz_kiszka_cowsay:$versionTag
docker push public.ecr.aws/c7o8u9c1/mateusz_kiszka_cowsay:$versionTag