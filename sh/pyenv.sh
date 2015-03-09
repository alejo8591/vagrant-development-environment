#!/usr/bin/env bash

echo ">>> Installing Pyenv"

if [ ! -f /var/log/pythonsetup ]; then

    git clone git://github.com/yyuu/pyenv.git /home/vagrant/.pyenv

    chown vagrant:vagrant .pyenv

    echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> /home/vagrant/.bashrc
    echo 'eval "$(pyenv init -)"' >> /home/vagrant/.bashrc

    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> /home/vagrant/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /home/vagrant/.bashrc

    # Can't source /home/vagrant/.bashrc for some reason so repeat commands below
    export PATH="$HOME/.pyenv/bin:$PATH"

    eval "$(pyenv init -)"

    pyenv install 3.4.2

    pyenv rehash

    pyenv global 3.4.2

    pyenv local 3.4.2

    source /home/vagrant/.bashrc

    mkdir /home/vagrant/.pyenv/plugins/pyenv-virtualenvwrapper

    git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git /home/vagrant/.pyenv/plugins/pyenv-virtualenvwrapper

    echo 'export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"' >> /home/vagrant/.bashrc

    sudo sh /home/vagrant/.pyenv/plugins/pyenv-virtualenvwrapper/install.sh

    source /home/vagrant/.bashrc

    pyenv virtualenvwrapper

    sudo touch /var/log/pythonsetup

fi
