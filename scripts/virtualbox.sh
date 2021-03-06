#!/bin/bash -eux

# Install the VirtualBox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso

mount -o loop $VBOX_ISO /mnt

yes | sh /mnt/VBoxLinuxAdditions.run

umount /mnt

#Cleanup VirtualBox
rm $VBOX_ISO

#Mounting Shared Folders In Virtualbox
usermod -aG vboxsf vagrant