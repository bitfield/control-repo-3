# Set the timezone for all nodes
class profile::timezone {
  class { 'timezone':
    timezone => 'Etc/UTC',
  }
}
