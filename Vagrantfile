# -*- mode: ruby -*-
# # vi: set ft=ruby :
#
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 1
  end

  config.vm.network :private_network, ip: '192.168.50.50'
  config.vm.synced_folder '.', '/home/vagrant/avail', nfs: true, mount_options: ['rw', 'vers=3', 'tcp', 'fsc']

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.provision :puppet,
    :manifests_path => 'puppet/manifests',
    :module_path    => 'puppet/modules'

  config.ssh.forward_agent = true
end
