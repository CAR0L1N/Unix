#!/bin/bash

sudo apt-get update &&
sudo apt-get upgrade -y &&
sudo apt-get install apache2 php php-mysql php-curl php-gd php-soap php-mbstring xrdp rdesktop automake autoconf git build-essential mariadb-server cmake libbz2-dev libace-dev libssl-dev libtool libmariadb-dev screen gdb g++ libgtkmm-3.0-dev gettext libssl-dev libarchive-dev -y

#   All on one line!
#   sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install sudo apt-get install apache2 php php-mysql php-curl php-gd php-soap php-mbstring xrdp rdesktop automake autoconf git build-essential mariadb-server cmake libbz2-dev libace-dev libssl-dev libtool libmariadb-dev -y
