class profile::base {
  class { '::ntp': }
 include profile::dnsmasq::dnsmasq
 include profile::firewalldports
 include graylog::allinone
 include java
 include profile::install_postfix
}
