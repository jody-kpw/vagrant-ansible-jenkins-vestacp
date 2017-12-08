Role Name
=========

Useful linux utilities or tools that will help in troubleshooting...

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):

Set to true to install the following packages.
```
wget_enabled: true
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
     - utilities
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
