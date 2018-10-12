class nagios::config{
file { '/usr/local/nagios/etc/servers/host.cfg':
   ensure       => present,
   mode         => '0644',
   owner        => 'root',
   group        => 'nagios',  
   source       => 'puppet:///environments/testing/modules/nagios/files/host.cfg',
  
                     
    
  }
  
  }
