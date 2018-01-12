class apache_nixnama::vhost_conf inherits apache_nixnama::param {

file{'file for virtual host':
ensure => file,
path => "${virt_dir}/${first_host}.conf",
content => template("apache_nixnama/vhost.conf.erb"),
require => Package['httpd'],
notify => Service['httpd'],

}

}
