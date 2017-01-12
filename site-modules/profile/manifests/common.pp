# Common profile for all servers
class profile::common {
  include profile::ntp
  include profile::ssh
  include profile::puppet
  include profile::users
}
