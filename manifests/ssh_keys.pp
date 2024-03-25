# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profiles::ssh_keys
class profiles::ssh_keys (
  $keys = { 'undef'=> { 'user'=> undef, 'type'=> undef , 'key'=> undef }, },
) {
  if $keys {
    create_resources('ssh_authorized_key', $ssh_keys)
  }
}
