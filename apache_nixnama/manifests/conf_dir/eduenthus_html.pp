class apache_nixnama::conf_dir::eduenthus_html {

file {'directory for eduenthus.com':
ensure => directory,
path => '/var/www/eduenthus',
require => Package['httpd'],
}

file {'content for eduenthus.com':
ensure => file,
path => '/var/www/eduenthus/index.html',
content => '<html>
<body>
hi.,,.this is eduenthus
</body>
</html>',
}

}
