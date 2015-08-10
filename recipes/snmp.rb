# Cookbook Name:: bootstrap
# Recipe:: snmp
#
# Author: Tom Weeks
# Email:  tom.m.weeks@gmail.com
# Date:   7.19.2015

case node[:platform_family]
     when 'debian'
	package 'snmpd' do
	action :install
     end
     when 'rhel'
	package 'net-snmp' do
	action :install
     end
end


template '/etc/snmp/snmpd.conf' do
        source 'snmpd.conf.erb'
        action :create
end


execute 'service snmpd restart' do
end