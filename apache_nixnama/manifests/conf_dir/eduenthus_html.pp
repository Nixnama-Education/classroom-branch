class apache_nixnama::conf_dir::eduenthus_html  {

file {'directory for eduenthus.com':
ensure => directory,
path => "${html_path}/${first_host}",
require => Package['httpd'],
}

file {'content for eduenthus.com':
ensure => file,
path => "${html_path}/${first_host}/index.html",
content => '<html>
<body>
hi.,,.this is eduenthus with variables
</body>
</html>',
}

}
