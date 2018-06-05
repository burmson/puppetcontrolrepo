class profile::base {
  exec { 'Get Dtc':
    command   => 'Get-Dtc',
    provider  => powershell,
  }

  registry_key { 'HKLM\Software\CoverysPuppetTrainingDemo':
    ensure => present,
  }  
}
