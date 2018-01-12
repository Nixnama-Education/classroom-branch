class apache_nixnama::temp inherits apache_nixnama::param {

notice ( "creating  file" )
file {'/tmp/tmptest':
ensure => file,
content => template("apache_nixnama/vhost.conf.erb"),


}

}
