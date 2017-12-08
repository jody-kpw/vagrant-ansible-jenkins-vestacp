Role Name
=========

If you have a fresh CentOS 7 server just installed, one thing that you may need in order to have all required packages is the GCC compiler, and the Development Tools. These are basic packages that any Linux user may need.
These tools include core development tools such as

* flex
* gcc c/c++ compiler
* redhat-rpm-config
* strace
* rpm-build
* make
* pkgconfig
* gettext
* automake
* strace64
* gdb
* bison
* libtool
* autoconf
* gcc-c++ compiler
* binutils and all dependencies.

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
       - development-tools
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
