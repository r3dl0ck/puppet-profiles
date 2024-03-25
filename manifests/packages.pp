# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profiles::packages
class profiles::packages (
  Array[String] $pkgs = [],
) {
  package { $pkgs:
    ensure => 'installed',
  }
}
