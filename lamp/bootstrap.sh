#!/usr/bin/env bash

# Bootstrap configuration for a standard LAMP server, along with git
# Ideal for basic PHP/MySQL projects

# By default, the MySQL install will start prompting you for default root
# passwords, but this will turn it off.  Be sure you set a password if you're 
# concerned about security!
export DEBIAN_FRONTEND=noninteractive

apt-get update

# Install Apache and link the /vagrant shared directory with /var/www
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

apt-get install -y mysql-server
apt-get install -y php5
apt-get install -y git-core
