#!/bin/bash

# Qlustar WORKSTATION node (Debian 9.2) installation script
# https://www.qlustar.com/download

dpkg -l | grep python-software-properties > /dev/null 2>&1 || apt-get install python3-software-properties
apt-get install software-properties-common
add-apt-repository 'deb http://repo.qlustar.com/repo/qluman 9.2-wheezy-proposed-updates main non-free'
add-apt-repository 'deb http://repo.qlustar.com/repo/qluman 9.2-wheezy main non-free'
apt-get update
