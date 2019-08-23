#!/bin/bash
set -X

# install packages
apt-get update && apt-get -y upgrade
# At the time of writing this, AWS Lambda only supports Python 2.7/3.6).
apt-get -y install python2.7 python-pip
apt-get -y install python3-pip

# install virtualenv
sudo pip install virtualenv
sudo pip install virtualenvwrapper

echo "export WORKON_HOME=/home/vagrant/.virtualenvs" >> /home/vagrant/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc
