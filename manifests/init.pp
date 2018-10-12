
file { '/usr/local/nagios/etc/servers/':
    path         => '/usr/local/nagios/etc/servers/,
    ensure       => present,
    owner => "root",
    group => "nagios",
    require      => File['/usr/local/nagios/etc/servers/'],
    source       => ['puppet:///modules/files/host.cfg',
                     'puppet:///modules/files/vm01.cfg'
                     'puppet:///modules/files/vmo2.cfg],
    
  }
  
