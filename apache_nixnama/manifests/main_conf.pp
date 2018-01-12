class apache_nixnama::main_conf inherits apache_nixnama::param {

file {'httpd conf file':
ensure => file,
path => "${conf_dir}/httpd.conf",
source => 'puppet:///modules/apache_nixnama/httpd.conf',
require => Package['httpd'],
notify => Service['httpd'],
}




}
