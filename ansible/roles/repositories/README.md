Role Name
=========

The EPEL repository is an additional package repository that provides easy to install packages for commonly used software.  And Remi Repo is providing the latest versions of the PHP stack, full featured, and some other software...

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
     - repositories
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
