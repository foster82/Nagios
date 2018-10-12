class nagios{
file { 'host.cfg':
   ensure       => present,
   path         => '/usr/local/nagios/etc/servers/,
   
   source       => 'puppet:///modules/files/host.cfg',
                     
    
  }
  
  }
