#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user "tdi" do
  comment "Test Driven Infrastructure"
  username "tdi"
  shell "/usr/bin/zsh"
  home "/home/tdi"
  supports :manage_home => true
  action :create
end

package "irssi" do
  action :install
end

directory "/home/tdi/.irssi" do
  owner "tdi"
  group "tdi"
  action :create
end

cookbook_file "irssi_config" do
  path "/home/tdi/.irssi/config"
  owner 'tdi'
  group 'tdi'
end
