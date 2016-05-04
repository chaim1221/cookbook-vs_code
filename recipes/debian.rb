#
# Cookbook Name:: vs_code
# Recipe:: debian
#

include_recipe 'apt'
include_recipe 'git'

vscode_deb = File.join(Chef::Config[:file_cache_path], 'vscode-amd64.deb')

remote_file vscode_deb do
  source node['vs_code']['source_url']
  action :create
end

package 'visual-studio-code' do
  provider Chef::Provider::Package::Dpkg
  source vscode_deb
  action :install
end
