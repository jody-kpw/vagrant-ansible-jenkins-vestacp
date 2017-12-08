#!/bin/bash
if ! grep -q "LANG=en_US.utf-8 /etc/environment"; then
	# Fixing setlocale: LC_CTYPE: cannot change locale (UTF-8): No such file or directory
  echo LANG=en_US.utf-8 > /etc/environment
  echo LC_ALL=en_US.utf-8 >> /etc/environment
fi

# Install EPEL GPG Key
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

# The EPEL repository is an additional package repository that
# provides easy to install packages for commonly used software.
sudo yum install -y epel-release

# Install GCC (C and C++ Compiler) and Development Tools
sudo yum grouplist
sudo yum group install -y "Development Tools"

# Install text editor
sudo yum install -y nano
sudo yum install -y vim
sudo yum install -y mc

# Install Ansible
sudo yum install -y ansible

# Install python-pip
sudo yum -y install python-pip

# Automate ssh-keygen -t rsa so it does not ask for a passphrase
su -c  "ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N ''" vagrant

# Copy to synced_folder
cp /home/vagrant/.ssh/id_rsa.pub /provision/control/ssh/
