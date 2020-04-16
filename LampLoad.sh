#!/bin/bash


# Installs following dependancies
sudo apt install tasksel php-curl php-gd php-mbstring php-xml php-xmlrpc -qq

# Installs Wordpress into the
read -p "Enter Location You Want Wordpress Installed at (Default /var/www/html) "  location
cd $location
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz

# Uses Tasksel to install the LAMP server
sudo tasksel install lamp-server -qq

echo "Everything should now be installed"
