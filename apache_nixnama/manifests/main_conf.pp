class apache_nixnama::main_conf {

file {'httpd conf file':
ensure => file,
path => "${conf_dir}/httpd.conf",
source => 'puppet:///modules/apache_nixnama/httpd.conf',
require => Package['httpd'],
notify => Service['httpd'],
}




}
