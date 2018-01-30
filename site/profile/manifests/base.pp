class profile::base {
  registry_key { 'HKLM\Software\Demo':
    ensure => present,
  }
  
  registry_value { 'HKLM\Software\Demo\MyValue':
    ensure => present,
    type   => string,
    data   => "Testing branch code",
  }  
}
