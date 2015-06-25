
* create a VM in virtualbox
* mount ubuntu 14.04 desktop ISO
* boot to live cd, then install
* user/pass vagrant
* enable remote login


# To automate

vagrant@dev-vm:~/projects/dev-vm$ git config --global user.email "evan@bottch.com"
vagrant@dev-vm:~/projects/dev-vm$ git config --global user.name "Evan Bottcher"
config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
