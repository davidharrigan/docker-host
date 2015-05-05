# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |v|
    v.name = "vagrant_host"
    v.memory = 1024
    v.cpus = 1
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.hostname = "vagrant"
  config.vm.network :private_network, ip: "192.168.33.27"

  # Set the name of the VM. See: http://stackoverflow.com/a/17864388/100134
  config.vm.define :vagrant do |vagrant|
  end

  # Ansible provisioner.
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provision/site.yml"
    ansible.sudo = true
  end

end
