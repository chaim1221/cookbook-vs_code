# d/l urls:
# http://code.visualstudio.com/Download/?dv=win
# http://code.visualstudio.com/Download/?dv=osx
# http://code.visualstudio.com/Download/?dv=linux64
# http://code.visualstudio.com/Download/?dv=linux64_rpm
# http://code.visualstudio.com/Download/?dv=linux32
# http://code.visualstudio.com/Download/?dv=linux32_rpm

# latest release URLs
default['vs_code']['source_url'] = value_for_platform_family(
  'mac_os_x' => 'http://code.visualstudio.com/Download/?dv=osx',
  'windows'  => 'https://az764295.vo.msecnd.net/stable/fa6d0f03813dfb9df4589c30121e9fcffa8a8ec8/VSCodeSetup-stable.exe',
  'debian'   => 'https://az764295.vo.msecnd.net/stable/fa6d0f03813dfb9df4589c30121e9fcffa8a8ec8/vscode-amd64.deb',
  'rhel'     => 'http://code.visualstudio.com/Download/?dv=linux64_rpm'
)
