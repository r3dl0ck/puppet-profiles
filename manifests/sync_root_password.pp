# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profiles::sync_root_password
class profiles::sync_root_password (
  String $passwd = '',
) {
  unless $passwd == '' {
    user { 'root_account':
      name     => 'root',
      password => Sensitive($passwd),
    }
  }
}
