# Cookbook Name:: bootstrap
# Recipe:: ntp
#
# Author: Tom Weeks
# Email:  tom.m.weeks@gmail.com
# Date:   7.19.2015

package 'ntp'


template '/etc/ntp.conf' do
	source 'ntp.conf.erb'
	action :create
end

case node[:platform_family]
	when 'debian'
		execute 'service ntp restart' do
	end

	when 'rhel' 
		execute 'service ntpd restart' do
	end
end