FROM rockylinux:8

RUN yum install -y openssh-server which

# These are common dependencies so installing them here makes builds faster
RUN yum install -y autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign passwd

RUN yes centos | passwd root

COPY bootstrap_ssh.sh /bootstrap_ssh.sh
RUN chmod +x /bootstrap_ssh.sh

EXPOSE 22

ENTRYPOINT /bootstrap_ssh.sh
