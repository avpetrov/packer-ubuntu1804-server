#Packer Example - Ubuntu 18.04 Server Vagrant Box

Prerequisites:
- VirtualBox
- Vagrant
- Packer

1) Build Vagrant box using Packer  
packer build ubuntu-18.04-vagrant.json  

2) Add, init and start Vagrant box  
vagrant box add ubuntu1804-64-server.box --name ubuntu1804-64-server  
vagrant init ubuntu1804-64-server  
vagrant up  

3) Remove Vagrant box  
vagrant halt  
vagrant destroy  
vagrant box remove ubuntu1804-64-server  
