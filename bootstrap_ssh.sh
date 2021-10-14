ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa -b 521
ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -N '' -t ed25519

/usr/sbin/sshd -D
