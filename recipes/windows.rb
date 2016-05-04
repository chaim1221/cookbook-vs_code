#
# Cookbook Name:: vs_code
# Recipe:: windows
#

package 'Microsoft Visual Studio Code' do # ~FC009
  source node['vs_code']['source_url']
  remote_file_attributes(
    path: File.join(Chef::Config[:file_cache_path], 'VSCodeSetup-stable.exe')
  )
  installer_type :custom
  options '/silent /mergetasks=!runcode' # https://github.com/Microsoft/vscode/issues/860
end
