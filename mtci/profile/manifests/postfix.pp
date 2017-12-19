class profile::postfix() {
  include postfix

 class { 'postfix':

  postfix::config { 'relay_domains':
       ensure => present,
       value  => 'localhost int.cybraics.com'
     }

   postfix::config { 'relayhost':
       ensure => present,
       value  => 'service-smtp.int.cybraics.com'
     }  
     postfix::config { 'smtp_use_tls':
       ensure => present,
       value  => 'yes'
     }

postfix::config {
  'smtp_tls_mandatory_ciphers':       value   => 'high';
  'smtp_tls_security_level':          value   => 'secure';
  'smtp_tls_CAfile':                  value   => '/etc/pki/tls/certs/ca-bundle.crt';
  'smtp_tls_session_cache_database':  value   => 'btree:${data_directory}/smtp_tls_session_cache';
}

}

}
