Role Name
=========

Install VestaCP, PHP7, MYSQL 5.7 with Ansible

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):

Configure the following variables.
```
# List of Supported Timezones
# http://php.net/manual/en/timezones.php
global_timezone: UTC

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
     - vestacp
```


License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
