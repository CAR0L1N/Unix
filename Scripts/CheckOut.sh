#!/bin/bash

sudo apt-get update &&
sudo apt-get upgrade -y &&
sudo git clone --recursive -b Nexus https://github.com/xbmc/xbmc.git &&
sudo cd xbmc &&
sudo make
