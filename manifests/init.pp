# == Class: motd
#
class motd {
  file { '/etc/motd':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
    content => template('motd/motd.erb'),
  }
}
