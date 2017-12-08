Role Name
=========

This role enables users to change Timezone and NTP Synchronization.

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):

#### List of Supported Timezones
http://php.net/manual/en/timezones.php
```
ntp_timezone: UTC    
```

Set to true to use the ntp.conf template.
```
ntp_manage_config: true
```

#### NTP server configuration.
See: The pool.ntp.org project is a big virtual cluster of
timeservers providing reliable easy to use NTP service.
```
ntp_area_0: 'pool.ntp.org'
ntp_area_1: 'pool.ntp.org'
ntp_area_2: 'pool.ntp.org'
ntp_area_3: 'pool.ntp.org'
ntp_servers:
  - "0.{{ ntp_area_0 }} iburst"
  - "1.{{ ntp_area_1 }} iburst"
  - "2.{{ ntp_area_2 }} iburst"
  - "3.{{ ntp_area_3 }} iburst"
```

```
ntp_restrict:
  - "127.0.0.1"
  - "::1"
```

```
ntpdate_crobtab: '59 * * * * ntpdate -u {{ ntp_area_0 }} && hwclock -w'
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
     - ntp
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
