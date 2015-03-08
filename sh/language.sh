#!/usr/bin/env bash

# Need to fix locale so that Postgres creates databases in UTF-8

sudo apt-get install language-pack-UTF-8

sudo locale-gen UTF-8

locale-gen en_GB.UTF-8
dpkg-reconfigure locales

export LANGUAGE=en_GB.UTF-8
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
