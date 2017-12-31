class apache_nixnama::vhost_eduenthus {

file{'file for virttual host eduenthus.com':
path => '/etc/httpd/conf.d/eduenthus.conf',
content => '<VirtualHost *:80>
    DocumentRoot "/var/www/eduenthus"
    ServerName eduenthus.com
</VirtualHost>',
require => Package['httpd'],
notify => Service['httpd'],

}

}
