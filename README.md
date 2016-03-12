[![Build Status](https://travis-ci.org/FGtatsuro/ansible-vagrant.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-vagrant)

ansible-vagrant
====================================

Ansible role for Vagrant.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- Debian/Ubuntu
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

- vagrant_download_url: default="https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb"
- vagrant_sha256: default="ed0e1ae0f35aecd47e0b3dfb486a230984a08ceda3b371486add4d42714a693d"
- vagrant_download_tmppath: default="/tmp/vagrant.deb"

If you want to overwrite values, please check https://www.vagrantup.com/downloads.html.

Role Dependencies
-----------------

The dependencies on other roles for this role.

- FGtatsuro.python-requirements
- FGtatsuro.virtualbox

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.vagrant }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run then on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`.
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

License
-------

MIT
