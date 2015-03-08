#!/usr/bin/env bash

# Getting oh-my-zsh to work in Ubuntu

# Source: https://gist.github.com/tsabat/1498393
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

sudo chsh -s `which zsh`

# Getting zsh to work in ubuntu is weird, since sh does not understand the source command.
# So, you do this to install zsh
sudo shutdown -r 0
