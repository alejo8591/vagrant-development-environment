#!/usr/bin/env bash

# Script to set up dependencies for Django on Vagrant.

if [ -e "/etc/vagrant-provisioned" ];
then
    echo "Vagrant provisioning already completed. Skipping..."
    exit 0
else
    echo "Starting Vagrant provisioning process..."
fi

# Change the hostname so we can easily identify what environment we're on:
echo "dev" > /etc/hostname
# Update /etc/hosts to match new hostname to avoid "Unable to resolve hostname" issue:
echo "127.0.0.1 dev" >> /etc/hosts
# Use hostname command so that the new hostname takes effect immediately without a restart:
hostname dev

# Installing dependencies
sh /vagrant/sh/core.sh

# Installing oh-my-zsh
# sh /vagrant/sh/zsh.sh

# Installing Node
sh /vagrant/sh/node.sh

# Language Setup
# sh /vagrant/sh/language.sh

# Installing Node
# sh /vagrant/sh/clean.sh
