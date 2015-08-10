# Cookbook Name:: bootstrap
# Recipe:: default
#
# Author: Tom Weeks
# Email:  tom.m.weeks@gmail.com
# Date:   7.19.2015

include_recipe 'bootstrap::apt_update'

include_recipe 'bootstrap::ntp'

include_recipe 'bootstrap::snmp'

include_recipe 'bootstrap::sshd'

include_recipe 'bootstrap::users'

include_recipe 'bootstrap::sudoers'

include_recipe 'bootstrap::rm_chefdk'

include_recipe 'bootstrap::dhcp'