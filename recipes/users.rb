# Cookbook Name:: bootstrap
# Recipe:: users
#
# Author: Tom Weeks
# Email:  tom.m.weeks@gmail.com
# Date:   7.21.2015


user = Chef::EncryptedDataBagItem.load('users', 'someUser')

user_name = user['name']
password  = user['password']
home      = "/home/#{user_name}"

user user_name do
	password password
	home home
	shell '/bin/bash'
	supports :manage_home => true
end

user = Chef::EncryptedDataBagItem.load('users', 'someOtherUser')

user_name = user['name']
password  = user['password']
home      = "/home/#{user_name}"

user user_name do
	password password
end