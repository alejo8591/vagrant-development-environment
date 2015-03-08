#!/usr/bin/env bash

# Cleanup
apt-get clean

echo "Zeroing free space to improve compression."
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
