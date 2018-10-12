class nagios{
file { '/usr/local/nagios/etc/servers/host.cfg':
   mode         => "0644"
  
   source       => 'puppet:///modules/files/host.cfg',
                     
    
  }
  
  }
