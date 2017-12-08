Role Name
=========

The Best Linux Command Line Text Editors.

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):  

Set to true to install the packages.
```
nano_enabled: true   
vim_enabled: true
mc_enabled: true
emacs_enabled: true
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
       - cli-text-editors
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
