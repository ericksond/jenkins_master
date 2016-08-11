#
# Cookbook Name:: jenkins_master
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'selinux_policy'

selinux_policy_boolean 'httpd_can_network_connect' do
    value true
end

if node['jenkins_master']['java']['install']
  include_recipe 'java'
end

if node['jenkins_master']['nginx']['install']
  include_recipe 'jenkins_master::nginx'
end

include_recipe 'jenkins::master'
