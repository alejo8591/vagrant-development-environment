#!/usr/bin/env bash

# Install build tools
apt-get install -y make g++ git curl vim libcairo2-dev libav-tools nfs-common portmap

# Install essential packages from Apt
apt-get update -y
# Python dev packages
apt-get install -y build-essential python python-dev python-setuptools python-pip
# Dependencies for image processing with Pillow (drop-in replacement for PIL)
# supporting: jpeg, tiff, png, freetype, littlecms
apt-get install -y libjpeg-dev libtiff-dev zlib1g-dev libfreetype6-dev liblcms2-dev
# Git (we'd rather avoid people keeping credentials for git commits in the repo, but sometimes we need it for pip requirements that aren't in PyPI)
apt-get install -y git git-core

# install zsh
apt-get install zsh
