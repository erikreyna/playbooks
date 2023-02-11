#!/bin/sh

# make sure we have pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

# use built in python3 to execute pip
python3 get-pip.py

# install ansible
pip3 install --ignore-installed ansible

# install developer dependencies so we can leverage them in the playbooks
ansible-galaxy install -r requirements.yml

# execute our ansible playbook
ansible-playbook --tags "$@" local.yml --verbose
