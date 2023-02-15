#!/bin/zsh

# install xcode command line tools
xcode-select --install

# accept licensing
sudo xcodebuild -license accept

# M1 Macs need rosetta (sorry I am not adding support for non M1s)
/usr/sbin/softwareupdate --install-rosetta

export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

# make sure we have pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

# use built in python3 to execute pip
python3 get-pip.py

# install ansible
pip3 install --ignore-installed ansible

# install developer dependencies so we can leverage them in the playbooks
ansible-galaxy install -r requirements.yml

# execute our ansible playbook
ansible-playbook -i "localhost," -c local local.yml --verbose --ask-become-pass --ask-vault-pass
