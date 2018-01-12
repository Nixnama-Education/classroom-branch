class hiet::case_check {
    
case $::osfamily {
        'Debian': {
            $operatingsystem = 'ubuntu'
        }
        'RedHat': {
            $operatingsystem = 'redhat el'
        }
    }
 
    file { "/tmp/case.txt":
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => "operating system is ${operatingsystem}",
        
    }
 
    
}
