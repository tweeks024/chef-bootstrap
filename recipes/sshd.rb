# Cookbook Name:: bootstrap
# Recipe:: ssh
#
# Author: Tom Weeks
# Email:  tom.m.weeks@gmail.com
# Date:   7.19.2015

template '/etc/ssh/sshd_config' do
        source 'sshd.conf.erb'
        action :create
end



case node[:platform_family]
	
	when 'rhel'
		case node[:platform_version]
			when '7.0'
			execute 'systemctl restart sshd' do
			end
			else
			execute 'service sshd restart' do
			end
		end 
	when 'debian'
	execute 'service ssh restart' do
	end
end
