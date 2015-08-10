# Cookbook Name:: bootstrap
# Recipe:: update
#
# Author: Tom Weeks
# Email:  tom.weeks@umassmed.edu
# Date:   7.19.2015


case node[:platform_family]
    
    when 'debian'
		execute 'apt-get update' do
		end
end