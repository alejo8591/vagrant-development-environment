#!/bin/bash

# Modified from https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
add-apt-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs
