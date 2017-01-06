# Set up Puppet config and updates
class profile::puppet {
  file { '/etc/puppetlabs/puppet/puppet.conf':
    source => 'puppet:///modules/profile/puppet/puppet.conf',
  }

  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/profile/puppet/papply.sh',
    mode   => '0755',
  }
}
