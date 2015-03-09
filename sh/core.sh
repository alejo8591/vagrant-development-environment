#!/usr/bin/env bash

# Install essential packages from Apt
sudo apt-get update -y

# Install build tools
sudo apt-get install -y make g++ curl vim libcairo2-dev libav-tools nfs-common portmap

# Python dev packages
#sudo apt-get install -y build-essential python python-dev python-setuptools python-pip

# Dependencies for image processing with Pillow (drop-in replacement for PIL)
# supporting: jpeg, tiff, png, freetype, littlecms
#sudo apt-get install -y libjpeg-dev libtiff-dev zlib1g-dev libfreetype6-dev liblcms2-dev

# Git (we'd rather avoid people keeping credentials for git commits in the repo, but sometimes we need it for pip requirements that aren't in PyPI)
sudo apt-get install -y git git-core

# Install zsh
sudo apt-get install -y zsh
