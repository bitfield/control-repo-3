# Set up Puppet config and cron run
class profile::puppet {
  file { '/etc/puppetlabs/puppet/puppet.conf':
    source => 'puppet:///modules/profile/puppet/puppet.conf',
  }

  service { ['puppet', 'mcollective', 'pxp-agent']:
    ensure => stopped, # Puppet runs from cron
    enable => false,
  }

  cron { 'run-puppet':
    ensure  => present,
    command => '/usr/local/bin/run-puppet',
    minute  => '*/10',
    hour    => '*',
  }

  file { '/usr/local/bin/run-puppet':
    source => 'puppet:///modules/profile/puppet/run-puppet.sh',
    mode   => '0755',
  }

  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/profile/puppet/papply.sh',
    mode   => '0755',
  }

  file { '/usr/local/bin/plock':
    source => 'puppet:///modules/profile/puppet/plock.sh',
    mode   => '0755',
  }

  file { '/usr/local/bin/punlock':
    source => 'puppet:///modules/profile/puppet/punlock.sh',
    mode   => '0755',
  }

  file { '/tmp/puppet.lastrun':
    content => strftime('%F %T'),
    backup  => false,
  }
}
