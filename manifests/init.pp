# Public: Install FastScripts to /Applications.
#
# Examples
#
#   include fastscripts
class fastscripts {
  package { 'FastScripts':
    provider => 'compressed_app',
    source   => 'http://www.red-sweater.com/fastscripts/FastScripts2.6.5.zip',
  }
}
