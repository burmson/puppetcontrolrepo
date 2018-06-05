class profile::base {
  windowsfeature { 'AS-Dist-Transaction':
    ensure             => present,
    installsubfeatures => true,
  }

  registry_key { 'HKLM\Software\CoverysPuppetTrainingDemo':
    ensure => present,
  }  
}
