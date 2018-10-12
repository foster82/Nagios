
file { '/usr/local/nagios/etc/servers/':
    path         => '/usr/local/nagios/etc/servers/,
    ensure       => present,
    owner => "root",
    group => "nagios",
    require      => File['/usr/local/nagios/etc/servers/'],
    source       => 'puppet:///modules/files/host.cfg'
                     
    
  }
  
