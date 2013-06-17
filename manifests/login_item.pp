# Public: sets up FastScripts to launch on login
#
# Will add a login item and launch the application.
#
# Usage:
#
#   include fastscripts::login_item
#
# or to remove login-item:
#
#   class { 'fastscripts::login_item':
#     ensure => 'absent'
#   }
#
# Parameters:
#
#   ensure - 'present' or 'absent'. Defaults to 'present'.

class fastscripts::login_item(
  $ensure = 'present'
) {
  include fastscripts::config

  osx_login_item { 'FastScripts':
    ensure  => $ensure,
    path    => $fastscripts::config::app,
    require => Package['FastScripts']
  }

  exec { 'launch fastscripts':
    command     => "/usr/bin/open ${fastscripts::config::app}",
    refreshonly => true,
    subscribe   => Package['FastScripts'],
    require     => Osx_login_item['FastScripts']
  }
}
