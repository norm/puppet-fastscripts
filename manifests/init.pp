# Public: Install FastScripts to /Applications.
#
# Examples
#
#   include fastscripts
class fastscripts {
  include fastscripts::config

  package { 'FastScripts':
    ensure   => installed,
    provider => 'compressed_app',
    source   => $fastscripts::config::zip_url,
  }
}
