class nagios{
file { '/usr/local/nagios/etc/servers/host.cfg':
   mode         => "0644"
   owner        => root,
   group        => nagios,
   source       => 'puppet:///modules/files/host.cfg',
                     
    
  }
  
  }
