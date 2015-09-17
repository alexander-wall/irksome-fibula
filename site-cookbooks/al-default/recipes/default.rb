#
# Cookbook Name:: al-default
# Recipe:: default
#
# Copyright 2014
#
# All rights reserved - Do Not Redistribute
#

#
include_recipe 'apt'

# Tools needed to debug and perform basic troubleshooting on the servers
include_recipe 'al-default::tools'

if Chef::Config[:solo] || Chef::Config.chef_zero.enabled
  # do nothing
else
  execute "SSL fetch" do
    command "knife ssl fetch -c /etc/chef/client.rb"
    user "root"
    action :run
  end
end
