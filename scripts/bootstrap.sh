#!/bin/sh

# This script must run with root privileges!
# Vagrant will do this automatically for provisioning.

apt-get update
apt-get upgrade

##############################
# Install common packages and useful tools
##############################

apt-get -y install curl imagemagick git python-software-properties
git config --global url."https://".insteadOf git://

##############################
# Configure package repositories
##############################

# Node.js
add-apt-repository ppa:chris-lea/node.js

apt-get update

##############################
# Install packages
##############################

# Node.js
apt-get -y install nodejs

# Install the rest with the vagrant user
su vagrant

# Meteor
curl https://install.meteor.com | /bin/sh

# Meteorite
npm install -g meteorite
