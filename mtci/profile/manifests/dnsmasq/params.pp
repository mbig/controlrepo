class profile::dnsmasq::params (
  Boolean $enabled       = true,
  Boolean $cleanup	 = false,
  Integer $port          = 53,
  Boolean $expand_hosts  = true,
  Boolean $domain_needed = true,
  Boolean $bogus_priv    = false,
  Boolean $no_negcache   = true,
  Boolean $no_hosts      = false,
  String $resolv_file    = '/etc/resolv.conf',
  Integer $cache_size    = 1000,
  Boolean $restart       = true,
  String $domain         = undef
  ){
}

