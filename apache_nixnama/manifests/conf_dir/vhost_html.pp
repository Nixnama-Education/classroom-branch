class apache_nixnama::conf_dir::vhost_html inherits  apache_nixnama::param {

file {'directory for eduenthus.com':
ensure => directory,
path => "${html_path}/${first_host}",
require => Package['httpd'],
}

file {'content for eduenthus.com':
ensure => file,
path => "${html_path}/${first_host}/index.html",
content => template("apache_nixnama/vhost.html.erb"),
}

}
