Role Name
=========
Below is a comprehensive list of front end development tools to make your job easier.

* nodejs
* npm
* Grunt
* yarn
* bower
* coffee-script
* graceful-fs
* gulp

Requirements
------------

This role requires Ansible 2.4 or higher, and platform requirements are listed in the metadata file.

Role Variables
--------------

#### Available variables are listed below.

default values (see `defaults/main.yml`):

Config the following variables:
**Recommended nodejs version 8.x lts**
```
# Set the version of Node.js to install ("0.12", "4.x", "5.x", "6.x", "8.x").
# Version numbers from Nodesource: https://github.com/nodesource/distributions
nodejs_version: "8.x"

# The user for whom the npm packages will be installed.
# nodejs_install_npm_user: username

# The directory for global installations.
npm_config_prefix: "/usr/local/lib/npm"

# Set to true to suppress the UID/GID switching when running package scripts. If set explicitly to false, then installing as a non-root user will fail.
npm_config_unsafe_perm: "false"

# Define a list of global packages to be installed with NPM.
nodejs_npm_global_packages: []
#  # Install a specific version of a package.
#  - name: jslint
#    version: 0.9.3
#  # Install the latest stable release of a package.
#  - name: node-sass
#  # This shorthand syntax also works (same as previous example).
#  - node-sass

# The path of a package.json file used to install packages globally.
nodejs_package_json_path: ""

yarn_rhel_repo_url: "https://dl.yarnpkg.com/rpm/yarn.repo"
yarn_rhel_repo_gpg_key_url: "https://dl.yarnpkg.com/rpm/pubkey.gpg"
yarn_rhel_repofile_path: "/etc/yum.repos.d/yarn.repo"
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
       - ansible-frontend-development-tools
```

License
-------

GPLv2

Author Information
------------------

* Author: Jody WAN
* Linkedin: https://www.linkedin.com/in/jodykpw/
* Wsebsite: https://www.kpwan.net
