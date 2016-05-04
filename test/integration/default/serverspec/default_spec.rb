require 'spec_helper'

# Serverspec examples can be found at
# http://serverspec.org/resource_types.html

describe 'vs_code::default' do
  case os[:family]
  when 'windows'
    describe package('Microsoft Visual Studio Code') do
      it { should be_installed }
    end

    describe command('code --version') do
      its(:exit_status) { should_not eq 1 }
    end
  when 'ubuntu'
    describe package('visual-studio-code') do
      it { should be_installed }
    end

    describe command('which code') do
      its(:exit_status) { should eq 0 }
      its(:stderr) { should eq '' }
    end
  end
end
