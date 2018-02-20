class profile::base {
  registry_key { 'HKLM\Software\Demo':
    ensure => present,
  }
  
  include chocolatey
  
  registry_value { 'HKLM\Software\Demo\MyValue':
    ensure => present,
    type   => string,
    data   => "The Puppet Agent service periodically manages your configuration",
  }  
}
