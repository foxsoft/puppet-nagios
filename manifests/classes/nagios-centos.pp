class nagios::centos {
  package {"nagios": ensure => installed}
  package {"nagios-plugins": ensure => installed}
  package {"nagios-plugins-nrpe": ensure => installed}
  package {"nagios-devel": ensure => installed}
}