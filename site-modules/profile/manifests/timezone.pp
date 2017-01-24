# Set the timezone for all servers
class profile::timezone {
  class { 'timezone':
    timezone => 'Etc/UTC',
  }
}
