Role Name
=========

FirewallD is a firewall management tool available by default on CentOS 7 servers.  If you are going to install any hosting control panel ensure you disable the firewalld before installation.

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):


Set to true disable, false to enable.
```
firewalld_disable: true
```
**Alternatively you can assign at group_vars.**

Dependencies
------------

None.

Example Playbook
----------------
```
  - hosts: servers
    become: true
    roles:
       - firewalld
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
