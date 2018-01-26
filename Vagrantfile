# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provider "docker" do |docker|
    docker.vagrant_vagrantfile = "host/Vagrantfile"
    docker.image = "test"
    docker.ports = ['8088:8088']
    docker.name = 'test-helloworld'
  end
end
