class profile::base {
  class { '::ntp': }
 include profile::dnsmasq::dnsmasq 
}
