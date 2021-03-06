class nagios::config{
file { 'host.cfg':
   
   ensure       => present,
   mode         => '0644',
   owner        => 'root',
   group        => 'nagios',  
   source       => "puppet:///modules/nagios/host.cfg",
   path         => "/usr/local/nagios/etc/servers/host.cfg",
  
                     
    
  }
  file { 'vm01.cfg':
   ensure       => present,
   mode         => '0644',
   owner        => 'root',
   group        => 'nagios',  
   source       => "puppet:///modules/nagios/vm01.cfg",
   path         => "/usr/local/nagios/etc/servers/vm01.cfg",
  
                     
    
  }  
  
  file { 'vm02.cfg':
   ensure       => present,
   mode         => '0644',
   owner        => 'root',
   group        => 'nagios',  
   source       => "puppet:///modules/nagios/vm02.cfg",
   path         => "/usr/local/nagios/etc/servers/vm02.cfg",
  
                     
    
  }
  service { 'nagios':
  ensure    => running,
  enable    => true,
  subscribe => File['/usr/local/nagios/etc/servers/host.cfg',
                    '/usr/local/nagios/etc/servers/vm01.cfg',
                    '/usr/local/nagios/etc/servers/vm02.cfg'],
}  

}
