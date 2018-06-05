# -*- mode: ruby -*-
# vi: set ft=ruby :

# install vbguest to mount drives by running 'vagrant plugin install vagrant-vbguest'

$script = <<SCRIPT
apt-get update -y
apt-get upgrade -y
apt-get autoremove

exit
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = true
  config.vbguest.auto_update = true
  config.vm.define "docker-host"
  config.vm.provision :shell, :inline => $script
  config.vm.network "private_network", ip: "192.168.56.226"
  config.vm.hostname = "docker-host"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.synced_folder "/Users/andrew.figaroa/.aws", "/home/ubuntu/.aws"
  config.vm.synced_folder "/Users/andrew.figaroa/Documents/repos/Mpi.SnagWork", "/home/ubuntu/Mpi.SnagWork"
  config.vm.synced_folder "/Users/andrew.figaroa/Documents/personal/docker/docker_test_app", "/home/ubuntu/friendly_hello"

  Vagrant::Config.run do |config|
    config.vbguest.iso_path = "#{ENV['HOME']}/Users/andrew.figaroa/Documents/docker/VBoxGuestAdditions_5.1.22.iso"
    config.vm.synced_folder '.', '/vagrant', disabled: false
 end
end
