#!/bin/bash
set -e
#provision.sh
 sudo apt-get update
 echo "apt-get update done."
 sudo apt-get -y upgrade
 sudo apt-get install -y python-dev python-pip
 sudo pip install ansible
 sudo localectl set-locale LANG=en_US.utf8
 sudo wget ‘https://terraforms-remote-state-bucket.s3-us-west-2.amazonaws.com/apache.yml'
 echo "Running build."
 sudo ansible-playbook apache.yml