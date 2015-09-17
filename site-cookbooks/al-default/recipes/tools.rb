#
# Cookbook Name:: al-default
# Recipe:: tools
#
# Copyright 2014
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

node['default']['tools'].each do |pkg|
  package pkg
end
