Role Name
=========

### Initial Setup and apply standard customisations.

### Install CentOS 7 + VestaCP + PHP7.0 + MySQL 5.7 and apply some customisations.

### Install Multiple PHP Versions and apply some customisations.

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

### Available variables are listed below.

** Assign at group_vars: **
```
global_variable_test: "group_vars: development"

# List of Supported Timezones
# http://php.net/manual/en/timezones.php
global_timezone: Asia/Hong_Kong

# Roles: ntp
# Set to true to use the ntp.conf template
ntp_manage_config: true

# NTP server configuration.
# See: The pool.ntp.org project is a big virtual cluster of
# timeservers providing reliable easy to use NTP service.
ntp_area_0: 'hk.pool.ntp.org'
ntp_area_1: 'asia.pool.ntp.org'
ntp_area_2: 'asia.pool.ntp.org'
ntp_area_3: 'asia.pool.ntp.org'
ntp_servers:
  - "0.{{ ntp_area_0 }} iburst"
  - "1.{{ ntp_area_1 }} iburst"
  - "2.{{ ntp_area_2 }} iburst"
  - "3.{{ ntp_area_3 }} iburst"


# Roles: firewalld tools
# FirewallD is a firewall management tool available by default on CentOS 7 servers.
# Set to true disable, false to enable.
firewalld_disable: true

# Roles: selinux
# selinux - Change policy and state of SELinux
# http://docs.ansible.com/ansible/latest/selinux_module.html

# Configures the SELinux mode and policy.
# A reboot may be required after usage.
# Ansible will not issue this reboot but will let you know when it is required.

# SELinux is a security extension of CentOS that should provide extended security.
# In my opinion you don't need it to configure a secure system,
# and it usually causes more problems than advantages
# (think of it after you have done a week of trouble-shooting
# because some service wasn't working as expected,
# and then you find out that everything was ok,
# only SELinux was causing the problem).
# Therefore I disable it (this is a must if you want to install any control panel
# such as Vesta Control Panel, ISPConfig later on).

# Set true to one of the following variables.
selinux_enforcing_enabled: false
selinux_permissive_enabled: false
selinux_disabled: true


# Roles: cli-text-editors
# Set to true to install the packages.
nano_enabled: true
vim_enabled: true
mc_enabled: true
emacs_enabled: true


# Roles: utilities
# Set to true to install the following packages.
wget_enabled: true


# Roles: vestacp
# Config vesta basic details
vestacp_hostname: demo.localhost
vestacp_email: admin@localhost.com
vestacp_pass: admin

# Set true to install php7.0 as VestaCP default php.
vestacp_base_php70: false

# Change default php.ini setting
vestacp_phpini_expose_php: 'off'
vestacp_phpini_memory_limit: 512M
vestacp_phpini_display_errors: 'off'
vestacp_phpini_upload_max_filesize: 200M
vestacp_phpini_post_max_size: 50M
vestacp_phpini_max_input_vars: 3000

# Set true to install mysql5.7 as VestaCP default mysql
vestacp_base_mysql57: false


# Roles: multiple-php-version
#Set true to install php5.4
multiple_php_version_php54: true
# Set a specific port for php5.4
multiple_php_version_php54_port: 9054
# create custom vesta backend templates for php5.4
multiple_php_version_vesta_remi-php54.tpl: true

#Set true to install php5.5
multiple_php_version_php55: true
# Set a specific port for php5.5
multiple_php_version_php55_port: 9055
# create custom vesta backend templates for php5.5
multiple_php_version_vesta_remi-php55.tpl: true

#Set true to install php5.6
multiple_php_version_php56: true
# Set a specific port for php5.6
multiple_php_version_php56_port: 9056
# create custom vesta backend templates for php5.6
multiple_php_version_vesta_remi-php56.tpl: true

#Set true to install php7.0
multiple_php_version_php70: false
# Set a specific port for php7.0
multiple_php_version_php70_port: 9070
# create custom vesta backend templates for php7.0
multiple_php_version_vesta_remi-php70.tpl: false

#Set true to install php7.1
multiple_php_version_php71: true
# Set a specific port for php7.1
multiple_php_version_php71_port: 9071
# create custom vesta backend templates for php7.1
multiple_php_version_vesta_remi-php71.tpl: true
```

Dependencies
------------

None.

Example Playbook
----------------
** setup-RedHat.yml **
```
---
# RedHat Setup Playbooks
- import_playbook: setup-RedHat/standard-setup.yml
- import_playbook: setup-RedHat/install-vestacp.yml
- import_playbook: setup-RedHat/install-multiple-php-versions.yml
```

**initial-standard-setup**
```
---
- hosts: server
  become: true
  roles:
    - edit_hosts
  vars:
    hosts:
      - { ip: '127.0.0.1', domain: 'foobar1.com' }
      # - { ip: '127.0.0.2', domain: 'foobar2.com' }
      # - { ip: '127.0.0.3', domain: 'foobar3.com', state: absent }
    hosts_reset: yes


- hosts: server
  become: true
  roles:
    - ../../roles/setlocale
    - ../../roles/ntp
    - ../../roles/firewalld
    - ../../roles/selinux
    - ../../roles/repositories
    - ../../roles/development-tools
    - ../../roles/cli-text-editors
    - ../../roles/utilities
```

**install-vestacp**
```
---
- hosts: vestacp
  become: true
  roles:
    - ../../roles/vestacp
```

**install-multiple-php-versions**
```
---
- hosts: server
  become: true
  roles:
    - ../../roles/multiple-php-versions
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
