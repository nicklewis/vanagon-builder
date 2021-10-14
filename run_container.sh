#!/usr/bin/env bash

ssh_port=55000

docker run -v /Users/nicklewis/.ssh/id_rsa.pub:/root/.ssh/authorized_keys -it -p 55000:22 --rm build-container

#echo centos | ssh-copy-id root@localhost -oStrictHostKeyChecking=no -p $ssh_port

trap "docker stop build-container-$$" TERM

read
