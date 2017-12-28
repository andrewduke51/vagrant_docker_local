#!/usr/bin/env bash

ping -c 4 www.google.com
apt-get install -y docker.io
#apt-get update -y
#apt-get upgrade -y
#
#mkdir /media/vbox
#mount /home/vagrant/VBoxGuestAdditions_5.1.22.iso /media/vbox
#/bin/bash /media/vbox/VBoxLinuxAdditions.run

# https://askubuntu.com/questions/792832/how-to-install-virtualbox-guest-additions-for-ubuntu-16-04
#export DEBIAN_FRONTEND=noninteractive
#apt-get -o Dpkg::Options::="--force-confnew" install -y install build-essential module-assistant linux-headers-$(uname -r)
