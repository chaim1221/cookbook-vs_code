#
# Cookbook Name:: vs_code
# Recipe:: default
#

include_recipe "#{cookbook_name}::#{node['platform_family']}"
