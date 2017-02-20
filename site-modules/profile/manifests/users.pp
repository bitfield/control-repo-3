# Set up users
class profile::users {
  lookup('users').each | String $username, Hash $attrs | {
    accounts::user { $username:
      * => $attrs,
    }
  }
}
