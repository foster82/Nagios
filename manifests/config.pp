class nagios::config{
file { '/usr/local/nagios/etc/servers/host.cfg':
   ensure       => present,
   mode         => '0755',
   owner        => 'root',
   group        => 'nagios',  
   source       => 'puppet:///modules/nagios/files/host.cfg',
  
                     
    
  }
  
  }
