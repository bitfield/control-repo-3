# Common profile for all servers
class profile::common {
  include profile::puppet
  include profile::users
  include profile::ssh
}
