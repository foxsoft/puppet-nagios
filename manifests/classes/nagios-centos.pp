class nagios::centos {
  package {"nagios": ensure => installed}
  package {"nagios-plugins": ensure => installed, require => Package["nagios"]}
  package {"nagios-plugins-nrpe": ensure => installed, require => Package["nagios"]}
  package {"nagios-devel": ensure => installed, require => Package["nagios"]}
}