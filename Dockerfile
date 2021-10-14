FROM centos:7

RUN yum install -y openssh-server which

RUN yes centos | passwd root

COPY bootstrap_ssh.sh /bootstrap_ssh.sh
RUN chmod +x /bootstrap_ssh.sh

EXPOSE 22

ENTRYPOINT /bootstrap_ssh.sh
