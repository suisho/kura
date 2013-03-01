#!/bin/bash

sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
#sudo apt-get install language-pack-ja
#./mklink.sh
sudo ./install.pl
#sudo dpkg-reconfigure locales
#sudo dpkg-reconfigure locales
#sudo dpkg-reconfigure tzdata
