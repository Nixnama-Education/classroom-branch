class apache_nixnama::temp {

notice ( "creating  file" )
file {'/tmp/tmptest':
ensure => file,
content => template("apache_nixnama/vhost.conf.erb"),


}

}
