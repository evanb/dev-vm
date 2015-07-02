# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "build/ubuntu-14.04.box"

  config.vm.synced_folder "~/projects", "/home/vagrant/projects"
  config.vm.synced_folder "~/dotfiles", "/home/vagrant/dotfiles"

  config.vm.provider "virtualbox" do |vb|
   vb.gui = true
   vb.memory = 4096
   vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
   vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
   vb.customize ["setextradata", :id, "GUI/SuppressMessages", "remindAboutAutoCapture,remindAboutWrongColorDepth,remindAboutMouseIntegrationOn,remindAboutMouseIntegrationOff,confirmInputCapture,confirmGoingFullscreen"]
   vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"] # make DNS work across host VPN connection
  end

  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"

  config.vm.provision :ansible do |a|
    a.playbook = "ansible/playbook.yml"
  end

end
