# Set up users
class profile::users {
  lookup('users', Hash, 'hash').each | String $username, Hash $attrs | {
    accounts::user { $username:
      * => $attrs,
    }
  }
}
