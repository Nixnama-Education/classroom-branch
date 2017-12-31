class apache_nixnama::main_conf {

file {'httpd conf file':
ensure => file,
path => '/etc/httpd/conf/httpd.conf',
source => 'puppet:///modules/apache_nixnama/httpd.conf',
require => Package['httpd'],
notify => Service['httpd'],
}




}
