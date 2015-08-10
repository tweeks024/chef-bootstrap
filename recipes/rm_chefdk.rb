# Cookbook Name:: bootstrap
# Recipe:: rm_chefdk
#
# Author: Tom Weeks
# Email:  tom.m.weeks@gmail.com
# Date:   7.19.2015


package 'chefdk' do
	action :remove
end

case node[:platform_family]
    
    when 'rhel'
		execute 'test -f /bin/chef-client || rpm -ivh /root/chef-12.4.1-1.el7.x86_64.rpm' do
		end
end


execute 'rm -rf /home/chef-repo' do
end