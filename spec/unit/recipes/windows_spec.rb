# Cookbook Name:: vs_code
# Spec:: windows
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

RSpec.describe 'vs_code::windows' do
  include_context 'windows-2012r2'

  it 'downloads and installs Visual Studio Code' do
    expect(chef_run).to install_package('Microsoft Visual Studio Code').with(
      source: 'https://az764295.vo.msecnd.net/stable/fa6d0f03813dfb9df4589c30121e9fcffa8a8ec8/VSCodeSetup-stable.exe',
      remote_file_attributes: {
        path: 'c:/chef/cache/VSCodeSetup-stable.exe'
      },
      installer_type: :custom,
      options: '/silent /mergetasks=!runcode'
    )
  end
end
