# Manage sshd config
class profile::ssh {
  ensure_packages(['openssh-server'])

  file { '/etc/ssh/sshd_config':
    content => epp('profile/ssh/sshd_config.epp', {
      'allow_users' => lookup('allow_users', Array[String], 'unique'),
    }),
    notify  => Service['ssh'],
  }

  service { 'ssh':
    ensure => running,
    enable => true,
  }
}
