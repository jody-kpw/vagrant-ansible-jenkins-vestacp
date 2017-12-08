Role Name
=========
Installs Java for RedHat/CentOS linux servers.

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):

Config the following variables:
**Recommended Java 1.8.0**
```
# Java Version (1.6.0,1.7.0,1.8.0)
java_version: 1.8.0
```

**Alternatively you can assign at group_vars.**

Dependencies
------------

None.

Example Playbook
----------------
```
  - hosts: server
    become: true
    roles:
       - ansible-java
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
