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
  config.vm.synced_folder "/Users/andrew.figaroa/Documents/personal/docker/docker_test_app", "/home/ubuntu/friendly_hello"
  config.vm.synced_folder "/Users/andrew.figaroa/Documents/repos/Mpi.Go", "/home/ubuntu/Mpi.Go"
  config.vm.synced_folder "/Users/andrew.figaroa/Documents/repos/QA.Postman", "/home/ubuntu/postman"


  Vagrant::Config.run do |config|
    config.vbguest.iso_path = "#{ENV['HOME']}/Users/andrew.figaroa/Documents/docker/VBoxGuestAdditions_5.1.22.iso"
    config.vm.synced_folder '.', '/vagrant', disabled: false
 end
end

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"


  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
#end
