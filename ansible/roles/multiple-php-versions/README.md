Role Name
=========

Installing multiple PHP versions with Ansible.

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):

Configure the following variables.
```
global_timezone: UTC

#Set true to install php5.4
multiple_php_version_php54: true
# Set a specific port for php5.4
multiple_php_version_php54_port: 9054
# create custom vesta backend templates for php5.4
multiple_php_version_vesta_remi_php54_tpl: true

#Set true to install php5.5
multiple_php_version_php55: true
# Set a specific port for php5.5
multiple_php_version_php55_port: 9055
# create custom vesta backend templates for php5.5
multiple_php_version_vesta_remi_php55_tpl: true

#Set true to install php5.6
multiple_php_version_php56: true
# Set a specific port for php5.6
multiple_php_version_php56_port: 9056
# create custom vesta backend templates for php5.6
multiple_php_version_vesta_remi_php56_tpl: true

#Set true to install php7.0
multiple_php_version_php70: false
# Set a specific port for php7.0
multiple_php_version_php70_port: 9070
# create custom vesta backend templates for php7.0
multiple_php_version_vesta_remi_php70_tpl: false

#Set true to install php7.1
multiple_php_version_php71: true
# Set a specific port for php7.1
multiple_php_version_php71_port: 9071
# create custom vesta backend templates for php7.1
multiple_php_version_vesta_remi_php71_tpl: true
```

**Alternatively you can assign at group_vars.**

**Roles: multiple-php-version**
```
multiple_php_version_role_on: false
```

**Roles: multiple-php-version, task remi-php54.yml**
```
multiple_php_version_php54_on: true
multiple_php_version_php54_port: 9054
multiple_php_version_vesta_php54_on: true
```

**Roles: multiple-php-version, task remi-php55.yml**
```
multiple_php_version_php55_on: true
multiple_php_version_php55_port: 9055
multiple_php_version_vesta_php55_on: true
```

**Roles: multiple-php-version, task remi-php56.yml**
```
multiple_php_version_php56_on: true
multiple_php_version_php56_port: 9056
multiple_php_version_vesta_php56_on: true
```

**Roles: multiple-php-version, task remi-php70.yml**
**Default VestaCP use PHP7.0 so disabled this.**
```
multiple_php_version_php70_on: false
multiple_php_version_php70_port: 9070
multiple_php_version_vesta_php70_on: false
```

**Roles: multiple-php-version, task remi-php71.yml**
```
multiple_php_version_php71_on: true
multiple_php_version_php71_port: 9071
multiple_php_version_vesta_php71_on: true
```

Dependencies
------------

None.

Example Playbook
----------------

```
- hosts: servers
  become: true
  roles:
     - multiple-php-versions
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
