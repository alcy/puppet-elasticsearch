class elasticsearch {

  include elasticsearch::config

  package { 'elasticsearch':
    ensure => 'installed',
    before => Class['elasticsearch::config'],
  }

  service { 'elasticsearch':
    ensure => 'running',
    enable => 'true',
    require => [ Package['elasticsearch'], Class['elasticsearch::config'] ],
    subscribe => Class['elasticsearch::config']
  }

}
