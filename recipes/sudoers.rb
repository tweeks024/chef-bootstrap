# Cookbook Name:: bootstrap
# Recipe:: sudoers
#
# Author: Tom Weeks
# Email:  tom.m.weeks@gmail.com
# Date:   7.21.2015

template '/etc/sudoers.new' do
        source 'sudoers.erb'
        action :create
end

execute 'cp /etc/sudoers.new /etc/sudoers' do
end