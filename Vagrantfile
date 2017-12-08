# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.define "control" do |control|
    control.vm.hostname = "control"
    control.vm.network "private_network", ip: "192.168.33.10"
    control.vm.provision :shell, :path => "provision/control/provision-control.sh"

    # Disable default /vagrant synced folder
    control.vm.synced_folder ".", "/vagrant", disabled: true

    # custom synced folder and set permissions
    control.vm.synced_folder "~/Projects/vagrant-ansible-jenkins-vestacp/provision", "/provision",
        owner: "vagrant",
        group: "vagrant",
        mount_options: ["dmode=755,fmode=644"]

    control.vm.synced_folder "~/Projects/vagrant-ansible-jenkins-vestacp/ansible", "/home/vagrant/ansible",
        owner: "vagrant",
        group: "vagrant",
        mount_options: ["dmode=755,fmode=644"]
  end

  config.vm.define "dev1" do |dev1|
    dev1.vm.hostname = "dev1"
    dev1.vm.network "private_network", ip: "192.168.33.21"

    # Disable default /vagrant synced folder
    dev1.vm.synced_folder ".", "/vagrant", disabled: true

    # custom synced folder and set permissions
    dev1.vm.synced_folder "~/Projects/vagrant-ansible-jenkins-vestacp/provision", "/provision",
        owner: "vagrant",
        group: "vagrant",
        mount_options: ["dmode=755,fmode=644"]

    # dev1.vm.synced_folder "~/Projects/vagrant-ansible-jenkins-vestacp/www/{{domain-name}}/public_html", "/home/{{vestacp-user}}/web/{{domain-name}}/public_html",
    #     owner: "{{vestacp-user}}",
    #     group: "{{vestacp-user}}",
    #     mount_options: ["dmode=755,fmode=644"]

    dev1.vm.provision "shell",
        ##inline: "cat /provision/control/ssh/id_rsa.pub >> ~/.ssh/authorized_keys"
        inline: "cat /provision/control/ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys"
  end


  # config.vm.define "ops1" do |ops1|
  #   ops1.vm.hostname = "ops1"
  #   ops1.vm.network "private_network", ip: "192.168.33.31"
  #
  #   # Disable default /vagrant synced folder
  #   ops1.vm.synced_folder ".", "/vagrant", disabled: true
  #
  #   # custom synced folder and set permissions
  #   ops1.vm.synced_folder "~/Projects/vagrant-ansible-jenkins-vestacp/provision", "/provision",
  #       owner: "vagrant",
  #       group: "vagrant",
  #       mount_options: ["dmode=755,fmode=644"]
  #
  #   # ops1.vm.synced_folder "~/Projects/vagrant-ansible-jenkins-vestacp/www/{{domain-name}}/public_html", "/home/{{vestacp-user}}/web/{{domain-name}}/public_html",
  #   #     owner: "{{vestacp-user}}",
  #   #     group: "{{vestacp-user}}",
  #   #     mount_options: ["dmode=755,fmode=644"]
  #
  #   ops1.vm.provision "shell",
  #       ##inline: "cat /provision/control/ssh/id_rsa.pub >> ~/.ssh/authorized_keys"
  #       inline: "cat /provision/control/ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys"
  # end

end
