class apache_nixnama::vhost_nixnama  {
 


file{'file for virttual host nixnama.com':
path => '/etc/httpd/conf.d/nixnama.conf',
content => "<VirtualHost *:80>
    DocumentRoot ${html_path}/${second_host}
    ServerName ${second_host}.com

</VirtualHost>",
notify => Service['httpd'],
require => Package['httpd'],
}




}
