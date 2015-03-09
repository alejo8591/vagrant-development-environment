#!/usr/bin/env bash

# Change the hostname so we can easily identify what environment we're on:
echo "dev" > /etc/hostname
# Update /etc/hosts to match new hostname to avoid "Unable to resolve hostname" issue:
echo "127.0.0.1 dev" >> /etc/hosts
# Use hostname command so that the new hostname takes effect immediately without a restart:
hostname dev

echo "Setting Timezone & Locale to $1 & C.UTF-8"

sudo ln -sf /usr/share/zoneinfo/$3 /etc/localtime
sudo locale-gen C.UTF-8
export LANG=C.UTF-8

echo "export LANG=C.UTF-8" >> /home/vagrant/.bashrc

echo ">>> Installing Base Packages"

# Install essential packages from Apt
sudo apt-get update -y

# Install build tools
sudo apt-get install -y make g++ curl vim libcairo2-dev libav-tools nfs-common \
libreadline-dev libsqlite3-dev wget curl llvm portmap libssl-dev zlib1g-dev libbz2-dev

# Python dev packages
sudo apt-get install -y build-essential python python-dev python-setuptools python-pip

# Dependencies for image processing with Pillow (drop-in replacement for PIL)
# supporting: jpeg, tiff, png, freetype, littlecms
sudo apt-get install -y libjpeg-dev libtiff-dev zlib1g-dev libfreetype6-dev liblcms2-dev

# Git (we'd rather avoid people keeping credentials for git commits in the repo, but sometimes we need it for pip requirements that aren't in PyPI)
sudo apt-get install -y git git-core

# Install zsh
sudo apt-get install -y zsh
