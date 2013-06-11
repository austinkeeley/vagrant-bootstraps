#!/usr/bin/env bash

# Bootstrap configuration for a JBoss AS 7 server
# Also installs git and MySQL

# By default, the MySQL install will start prompting you for default root
# passwords, but this will turn it off. Be sure you set a password if you're
# concerned about security!
export DEBIAN_FRONTEND=noninteractive

apt-get update

if [! -f /vagrant/jboss-as-7.1.1.Final.zip ]
  # Hopefully this doesn't change...
  wget http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.zip
  unzip -d vagrant jboss-as-7.1.1.Final.zip
fi

apt-get install -y mysql-server
apt-get install -y git-core
