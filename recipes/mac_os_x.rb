#
# Cookbook Name:: vs_code
# Recipe:: mac_os_x
#

include_recipe 'homebrew'
include_recipe 'homebrew::cask'

homebrew_cask 'visual-studio-code'
