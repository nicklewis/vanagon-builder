$ docker build . -t build-container

$ docker run -v ~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys -it -p 55000:22 --rm build-container

set ssh_port to the forwarded port (55000) in platform config
