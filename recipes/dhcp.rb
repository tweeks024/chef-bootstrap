# Cookbook Name:: bootstrap
# Recipe:: dhcp
#
# Author: Tom Weeks
# Email:  tom.m.weeks@gmail.com
# Date:   7.24.2015


case node[:platform_family]
	when 'rhel' 
		execute 'dhclient -r && dhclient -H $HOSTNAME' do
		end
end