class apache_nixnama::vhost_eduenthus {

file{'file for virttual host eduenthus.com':
path => '/etc/httpd/conf.d/eduenthus.conf',
content => "<VirtualHost *:80>
    DocumentRoot ${html_path}/${first_path}
    ServerName ${first_host}.com

</VirtualHost>",
require => Package['httpd'],
notify => Service['httpd'],

}

}
