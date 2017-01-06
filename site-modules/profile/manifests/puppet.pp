# Set up Puppet config and updates
class profile::puppet {
  file { '/etc/puppetlabs/puppet/puppet.conf':
    source => 'puppet:///site-modules/profile/puppet/puppet.conf',
  }
}
