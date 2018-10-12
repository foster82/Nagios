class nagios{
file { 'host.cfg':
   ensure       => present,
   path         => '/usr/local/nagios/etc/servers/,
   owner        => "root",
   group        => "nagios",
   source       => 'puppet:///modules/files/host.cfg',
                     
    
  }
  
  }
