# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|

  config.vm.hostname = 'test'
  config.vm.box = 'phusion/ubuntu-14.04-amd64'
  config.vm.synced_folder './', '/vagrant'

  config.vm.network :forwarded_port, guest: 8088, host: 8088
  #config.vm.network :forwarded_port, guest: 9001, host: 9001

  config.vm.provider :virtualbox do |vb|
    vb.name = 'test-docker'
    vb.customize ['modifyvm', :id, '--memory', '768', '--cpus', '2']
  end

  #config.vm.provision :shell do |shell|
    #shell.inline = <<-SHELL
      #sudo apt-get install docker
    #SHELL
  #end

  config.vm.provision :docker do |docker|
    docker.build_image '/vagrant/.', args: '-t test '
    docker.run 'test', args: '-d -p 8088:8088'
  end

end
