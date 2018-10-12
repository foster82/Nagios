
file { 'host.cfg':
   ensure       => present,
   path         => '/usr/local/nagios/etc/servers/,
   owner        => "root",
   group        => "nagios",
   require      => File['/usr/local/nagios/etc/servers/'],
   source       => 'puppet:///modules/files/host.cfg',
                     
    
  }
  
