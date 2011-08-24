class nagios::centos {
  # This is done due to a transaction check error problem when installing
  # packages individually (nagios and nagios-devel use some shitty perl file)
  exec {"yum install -y nagios nagios-plugins nagios-plugins-nrpe nagios-devel": unless => Package["nagios"]}
}