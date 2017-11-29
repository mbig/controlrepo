class profile::base {
  class { '::ntp': }
 include profile::dnsmasq::dnsmasq
 include graylog::allinone
 include java
 include postgresql::server
}
