# Cookbook Name:: vs_code
# Spec:: debian
#
# Copyright (c) 2016 Sean Escriva
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
require 'spec_helper'

RSpec.describe 'vs_code::debian' do
  include_context 'ubuntu-14.04'

  it 'includes the git and apt recipes' do
    expect(chef_run).to include_recipe('apt')
    expect(chef_run).to include_recipe('git')
  end

  it 'downloads the Visual Studio Code .deb' do
    expect(chef_run).to create_remote_file('/var/chef/cache/vscode-amd64.deb')
  end

  it 'installs the dpkg file for Visual Studio Code' do
    expect(chef_run).to install_package('visual-studio-code')
      .with(
        provider: Chef::Provider::Package::Dpkg
      )
  end
end
