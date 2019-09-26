#!/bin/bash
set -e
#provision.sh
 sudo apt-get update
 echo "apt-get update done."
 sudo apt-get -y upgrade
 sudo apt-get install apache2 -y
 sudo touch /var/www/html/index.html
 sudo chmod 755 /var/www/html/index.html
 echo "This is a packer test" > /var/www/html/index.html
 sudo service apache2 restart 
# sudo apt-get clean -y   
# sudo apt-get install -y python-dev python-pip
# sudo pip install ansible
# sudo localectl set-locale LANG=en_US.utf8
# sudo wget ‘https://terraforms-remote-state-bucket.s3-us-west-2.amazonaws.com/apache.yml'
# echo "Running build."
# sudo ansible-playbook apache.yml
