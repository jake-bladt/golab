# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  # Open enough ports for development experiments.
  for i in 5000..5010
    config.vm.network :forwarded_port, guest: i, host: i
  end

  # Use chef to install go
  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "golang"
  end

  # Use script to install everything else
  config.vm.provision "shell", path: "./provision.sh"

end
