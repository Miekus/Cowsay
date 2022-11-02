#!/bin/bash
#example usage ./init.sh 1.1

ec2ip='ec2-18-184-220-16.eu-central-1.compute.amazonaws.com'
ec2user='ubuntu'
imageTag=$1
keyRoot='~/.ssh/id_rsa'

scp -i $keyRoot ./cowsay-start-up.sh $ec2user@$ec2ip:cowsay-start-up.sh

ssh -i $keyRoot $ec2user@$ec2ip "bash ./cowsay-start-up.sh $imageTag"
