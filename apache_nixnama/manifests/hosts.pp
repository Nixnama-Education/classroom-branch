#need to replace ip using facter variable. 
#need to modify and use only one host resource using variables


class apache_nixnama::hosts {

host { 'nixnama':
  ensure       => 'present',
  host_aliases => ['nixnama.com'],
  ip           => '192.168.10.20',
  target       => '/etc/hosts',
}


host { 'eduenthus':
  ensure       => 'present',
  host_aliases => ['eduenthus.com'],
  ip           => '192.168.10.20',
  target       => '/etc/hosts',

}

}
