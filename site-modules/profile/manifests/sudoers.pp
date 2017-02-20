# Manage user privileges
class profile::sudoers {
  sudo::conf { 'secure_path':
    content  => 'Defaults      secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/puppetlabs/puppet/bin"',
    priority => 0,
  }
  $sudoers = lookup('sudoers')
  $sudoers.each | String $user | {
    sudo::conf { $user:
      content  => "${user} ALL=(ALL) NOPASSWD: ALL",
      priority => 10,
    }
  }
}
