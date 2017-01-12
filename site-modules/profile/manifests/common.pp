# Common profile for all servers
class profile::common {
  include profile::ntp
  include profile::puppet
  include profile::ssh
  include profile::sudoers
  include profile::timezone
  include profile::users
}
