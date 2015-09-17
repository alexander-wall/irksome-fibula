#
# Cookbook Name:: ao-default
# Recipe:: tools
#
# Copyright 2014, Avi-on
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

node['default']['tools'].each do |pkg|
  package pkg
end
