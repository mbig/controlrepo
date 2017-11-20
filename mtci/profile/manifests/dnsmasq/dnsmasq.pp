class profile::dnsmasq::dnsmasq (
){

  include profile::dnsmasq::params

  if ($profile::dnsmasq::params::enabled == true) {

    class { 'dnsmasq':
      port          => $profile::dnsmasq::params::port,
      expand_hosts  => $profile::dnsmasq::params::expand_hosts,
      domain_needed => $profile::dnsmasq::params::domain_needed,
      bogus_priv    => $profile::dnsmasq::params::bogus_priv,
      no_negcache   => $profile::dnsmasq::params::no_negcache,
      no_hosts      => $profile::dnsmasq::params::no_hosts,
      resolv_file   => $profile::dnsmasq::params::resolv_file,
      cache_size    => $profile::dnsmasq::params::cache_size,
      restart       => $profile::dnsmasq::params::restart,
      domain        => $profile::dnsmasq::params::domain,
    }

    cron::job {
      'dnsmasq_stats':
        minute  => fqdn_rand(60),
        hour    => '*/4',
        date    => '*',
        month   => '*',
        weekday => '*',
        user    => 'nobody',
        command => 'pgrep dnsmasq > /dev/null 2>&1 && pkill -USR1 dnsmasq',
        environment => 'PATH=/bin:/usr/bin:/usr/sbin',
    }

  } elsif ($profile::dnsmasq::params::cleanup == true) {

    Package { 'dnsmasq':
      ensure => absent
    }
    cron::job {
      'dnsmasq_stats':
        ensure  => absent
    }
  }
}
