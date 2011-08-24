class nagios::centos {
  # This is done due to a transaction check error problem when installing
  # packages individually (nagios and nagios-devel use some shitty perl file)
  exec {"/usr/bin/yum install -y nagios nagios-plugins nagios-plugins-nrpe nagios-devel": creates => "/usr/bin/nagios"}
}