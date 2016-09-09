==============================
Packer template for CentOS 7.1
==============================

Packer templates for building base VM boxes for VirtualBox and VMWare.

Usage
=====

Installing Packer
-----------------

Download the latest packer from http://www.packer.io/downloads.html and unzip the appropriate directory.

If you're using Homebrew

::

    $ brew tap homebrew/binary
    $ brew install packer


Running Packer
--------------

::

    $ git clone https://github.com/oisis/packer-centos7
    $ cd packer-centos7
    $ packer build template.json


If you want to build only virtualbox.

::

    $ packer build -only=virtualbox-iso template.json


Parallel builds can be run on 0.6.0 or latest packer version.

::

    $ packer build -parallel=true template.json

Vagrant
--------------

- List local vagrant boxes

::

    $ vagrant box list

- Add new box to Vagrant

::

    $ vagrant box add centos71 ./centos-7.1-x86_64.box


centos7 - name for vagrant box

centos-7.1-x86_64.box - new created box with packer


Supported versions
------------------

This templates was tested using a packer 0.7.5 .
