class apache_nixnama::service {

service {'httpd':
ensure => running,
enable => true,
require => Package['httpd'],
}
}
