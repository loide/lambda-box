#!/bin/bash
set -X

# At the time of writing this, AWS Lambda only supports Python 2.7/3.6).
PYTHON2_VERSION=2.7
PYTHON3_VERSION=3.6

PIP_VERSION=8.1.1
VIRTUALENV_VERSION=15.0.0
VIRTUALENVWRAPPER_VERSION=4.7.1

# install packages
apt-get update && apt-get -y upgrade
apt-get -y install python2.7 python-pip
apt-get -y install python3-pip

# install virtualenv
sudo pip install virtualenv
sudo pip install virtualenvwrapper

echo "------------- $HOME -------------------------------------"
echo "export WORKON_HOME=/home/vagrant/.virtualenvs" >> /home/vagrant/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc
