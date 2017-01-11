# Set up users
class profile::users {
  hiera('users').each | String $username, Hash $attrs | {
    accounts::user { $username:
      * => $attrs,
    }
  }
}
