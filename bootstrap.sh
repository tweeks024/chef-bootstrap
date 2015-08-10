#!/bin/bash
cd /home/chef-repo
knife bootstrap localhost -x root -P pass -r 'recipe[$1]' >> /var/log/knife.log
knife bootstrap localhost -x root -P pass -r 'recipe[bootstrap]' >> /var/log/knife.log
