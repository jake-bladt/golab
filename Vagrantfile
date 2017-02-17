# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"

  # Open enough ports for development experiments.
  for i in 5000..5010
    config.vm.network :forwarded_port, guest: i, host: i
  end

end
