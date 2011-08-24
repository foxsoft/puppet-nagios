import "classes/*.pp"

class nagios {
  case $operatingsystem {
    CentOS: {
      include nagios::centos
    }
    default: { notice "Unsupported operating system" }
  }
}