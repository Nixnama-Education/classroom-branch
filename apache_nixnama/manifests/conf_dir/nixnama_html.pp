class apache_nixnama::conf_dir::nixnama_html inherits apache_nixnama::param {


file {'directory for nixnama.com':
ensure => directory,
path => "${html_path}/${second_host}",
#require => Package['httpd'],
}

file {'content for nixnama.com':
ensure => file,
path => "${html_path}/${second_host}/index.html",
content => '<html>
<body>
hi..this is nixnama.com with variable
</body>
</html>',
}

}
