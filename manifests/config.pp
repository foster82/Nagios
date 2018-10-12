class nagios::config{
file { '/usr/local/nagios/etc/servers/host.cfg':
   ensure       => present,
   mode         => '0644',
   owner        => 'root',
   group        => 'nagios',  
   source       => '/etc/puppet/code/environments/testing/modules/files/host.cfg'
                     
    
  }
  
  }
