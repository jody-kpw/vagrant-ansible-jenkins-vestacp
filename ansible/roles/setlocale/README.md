Role Name
=========

System locale allows you to specify the language settings for the user interfaces and services running on your system.

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Dependencies
------------

None.

Example Playbook
----------------
```
- hosts: servers
  become: true
  roles:
     - setlocale
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
