Project
=========
## DEVOPS, Vagrant, Ansible, Jenkins with Vesta Control Panel

### Setup Nginx, MySQL5.7, multiple PHP versions with Vesta Control Panel

### Below is a comprehensive list of front end development tools to make your job easier.

For this project, example DEVOPS server i used:
Control: Vagrant, assigned "private_network", ip: "192.168.33.10"

Development: Vagrant, "private_network", ip: "192.168.33.21"

Operation: N/A  -> you could use real server. go to section (Optional Addon Extra Server, i.e real server "Operation").

If you would like to use real server for control/development for feel to change it.  
**Ensure you manual create the RSA Key Pair for Control(Ansible) Server communication to others server**

* nodejs
* npm
* Grunt
* yarn
* bower
* coffee-script
* graceful-fs
* gulp

### Below is a comprehensive list of php development tools.

* Composer

Requirements
------------
Virtualbox download
https://www.virtualbox.org/wiki/Downloads

Vagrant Manager (Optional)
Can automatically detect VirtualBox and Parallels machines.
http://vagrantmanager.com/downloads/


Project Setup
-------------
Init new work location, open Terminal
```
$ cd ~
$ mkdir Projects
```

Version Control
---------------
Highly recommended use git version control throughout the whole project.

**Installing Git**
https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

**First-Time Git Setup**
https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup

**Create useful .gitignore files for your project**
https://www.gitignore.io

Git clone jodykpw/vagrant-ansible-jenkins-vestacp
----------------------------
```
$ cd ~/Projects
git clone https://github.com/jody-kpw/vagrant-ansible-jenkins-vestacp.git
```


Edit Vagrantfile
----------------
File to edit, Vagrantfile

For default setup as following
2 machine, control and develpment.

IP:
control.vm.network "private_network", ip: "192.168.33.10"
dev1.vm.network "private_network", ip: "192.168.33.21"

Hostname:
control.vm.hostname = "control"
dev1.vm.hostname = "dev1"


**Vagrant Documentation**
https://www.vagrantup.com/docs/


Adding Vagrant Plugin to Projects
---------------------------------
```
$ cd ~/Projects/vagrant-ansible-jenkins-vestacp
```

**To lists all installed plugins and their respective installed versions.**
```
$ vagrant plugin list
```

**VirtualBox Guest Additions**
You're using shared folders, so you need to install VirtualBox Guest Additions inside your virtual machine to support that feature.

```
$ vagrant plugin install vagrant-vbguest
$ vagrant vbguest
[default] GuestAdditions 5.2.0 running --- OK.
```

(Optional Addon Extra Server, i.e real server "Operation")
-----------------------------
**edit inventory file**
location ansible/inventory
```
[operation]
yourip/domain
```

**edit site.yml**
uncomment
# - import_playbook: playbooks/setup-Operation.yml
to
- import_playbook: playbooks/setup-Operation.yml

**Create the RSA Key Pair for Ansible Server communication to your server**
```
$ vagrant ssh control
$ cd .ssh
```

```
$ ssh-keygen -t rsa
```

Once you have entered the Gen Key command, you will get a few more questions:
Enter file in which to save the key (/home/vagrant/.ssh/id_rsa): Press Enter
Enter passphrase (empty for no passphrase): Press Enter
Enter same passphrase again: Press Enter

Copy the Public Key
```
$cat id_rsa.pub
```

Exit Ansible Server

Guest terminal ssh into your server.
$ vagrant ssh serverip

Paste the id_rsa.pub text to end authorized_key file
```
$ sudo nano ~/.ssh/authorized_key
```

Exit Server.

Guest terminal
$ vagrant halt
$ vagrant up

Guest terminal ssh into ansible server, test ansbile server ssh to your server.
$ ssh serverip
You sure able to login to Server without type password.

**Add new server setting to your ansible playbook**

Start up Vagrant
----------------

```
vagrant up
```

Guest terminal ssh into ansible server.
```
vagrant ssh control
```

Ansible Configuration
---------------------
/ansible/README.md

Run Ansible
-----------
```
$ cd ansible/playbooks
$ ansible-playbook site.yml
```

How to Host a New Website on Vesta Control Panel
------------------------------------------------
https://blog.flaunt7.com/host-new-website-vesta-control-panel/

**How to access VestaCP**
https://yourip:8083/

**For local development synced folder, recommended use with github/bitbucket**

```
{{ vagrant_hostname }}.vm.synced_folder "~/Projects/vagrant-ansible-jenkins-vestacp/www/{{domain-name}}/public_html", "/home/{{User}}/web/{{domain-name}}/public_html",
     owner: "{{User}}",
     group: "{{User}}",
     mount_options: ["dmode=755,fmode=644"]
```

Example Synced folder with your vestacp public_html folder.
```
dev1.vm.synced_folder "~/Projects/vagrant-ansible-jenkins-vestacp/www/kpwan.net/public_html", "/home/kpwan/web/kpwan.net/public_html",
     owner: "kpwan",
     group: "kpwan",
     mount_options: ["dmode=755,fmode=644"]
```

**How to edit your hosts file on Mac and Windows**
http://www.dirigodev.com/blog/web-development-execution/how-to-edit-your-hosts-file-on-mac-and-windows/


Jenkins
-------
**How to access Jenkins**
http://yourip:8080/

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
