# Set the time zone for all nodes
class profile::timezone {
  class { 'timezone':
    timezone => 'Etc/UTC',
  }
}
