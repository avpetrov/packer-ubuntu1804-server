#!/bin/bash -eux

apt-get -y install openssh-server build-essential

sed -i /etc/ssh/sshd_config -e \
    "/#Author*/ c AuthorizedKeysFile %h/.ssh/authorized_keys"

service ssh restart