Role Name
=========

SELinux is a security extension of CentOS that should provide extended security.  In my opinion you don't need it to configure a secure system, and it usually causes more problems than advantages (think of it after you have done a week of trouble-shooting because some service wasn't working as expected, and then you find out that everything was ok, only SELinux was causing the problem). Therefore I disable it (this is a must if you want to install any control panel such as Vesta Control Panel, ISPConfig later on).

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):

Set true to one of the following variables.
```
selinux_enforcing_enabled: false
selinux_permissive_enabled: false
selinux_disabled: true
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
     - selinux
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
