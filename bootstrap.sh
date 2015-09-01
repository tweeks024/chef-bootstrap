#!/bin/bash
cd /home/chef-repo
dhclient -r && dhclient -H $HOSTNAME
sleep 10
knife bootstrap localhost -n $HOSTNAME -x root -P pass -r 'recipe[$1]' >> /var/log/knife.log
knife bootstrap localhost -n $HOSTNAME -x root -P pass -r 'recipe[bootstrap]' >> /var/log/knife.log
