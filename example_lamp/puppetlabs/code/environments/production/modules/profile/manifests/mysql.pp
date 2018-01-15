class profile::mysql {
  class { '::mysql::server':
    root_password           => '123456',
    remove_default_accounts => true,
  }
  include mysql::client
}
