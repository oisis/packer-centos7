#!/bin/bash

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl grub2-tools puppet 

yum -y install epel-release.noarch

# Change network interfaces names back to ethX
sed -i 's/rhgb/net.ifnames=0 rhgb/g' /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
echo 'SUBSYSTEM=="net", ACTION=="add", DRIVERS=="?*", ATTR{address}=="08:00:27:de:0e:0e", ATTR{type}=="1", KERNEL=="eth*", NAME="eth0"' > /etc/udev/rules.d/70-persistent-net.rules

