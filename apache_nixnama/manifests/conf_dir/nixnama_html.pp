class apache_nixnama::conf_dir::nixnama_html {


file {'directory for nixnama.com':
ensure => directory,
path => '/var/www/nixnama',
#require => Package['httpd'],
}

file {'content for nixnama.com':
ensure => file,
path => '/var/www/nixnama/index.html',
content => '<html>
<body>
hi..this is nixnama.com
</body>
</html>',
}

}
