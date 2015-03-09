#!/usr/bin/env bash

# Cleanup
sudo apt-get clean

echo "Zeroing free space to improve compression."
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Getting zsh to work in ubuntu is weird, since sh does not understand the source command.
# So, you do this to install zsh
sudo shutdown -r 0
