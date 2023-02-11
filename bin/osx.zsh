#!/bin/sh

# install xcode command line tools
xcode-select --install

# accept licensing
sudo xcodebuild -license accept

# M1 Macs need rosetta (sorry I am not adding support for non M1s)
/usr/sbin/softwareupdate --install-rosetta