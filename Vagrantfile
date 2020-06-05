# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  config.vm.hostname = "BeanBlaneVM"
  config.vm.network "private_network", ip: "192.168.100.10"
  config.vm.synced_folder "", "/vagrant"
  config.ssh.insert_key = false
  config.vm.provider "virtualbox" do |vb|
    vb.name = "bubunta2004VM"
    #vb.gui = true
	vb.cpus = 2
    vb.memory = "2048"
  end
  config.vm.provision "shell", inline: <<-SHELL
	bash /vagrant/scripts/install.sh
  SHELL
end