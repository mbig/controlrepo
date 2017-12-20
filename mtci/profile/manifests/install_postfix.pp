class profile::install_postfix() {
  include postfix

  postfix::config { 'relay_domains':
       ensure => present,
       value  => 'localhost cybraics.com'
     }

   postfix::config { 'relayhost':
       ensure => present,
       value  => 'service-smtp.int.cybraics.com'
     }  

     postfix::config { 'mydomain':
       ensure => present,
       value  => 'cybraics.com'
     } 


        postfix::config { 'mydestination':
       ensure => present,
       value  => 'localhost.$mydomain, $mydomain'
     }

           postfix::config { 'mynetworks':
       ensure => present,
       value  => '10.200.5.0/24, 10.2.0.0/24, 10.55.20.0/24, 10.2.4.0/24'
     }


    postfix::config {
  'smtp_tls_mandatory_ciphers':       value   => 'high';
  'smtp_tls_security_level':          value   => 'secure';
  'smtp_tls_CAfile':                  value   => '/etc/pki/tls/certs/ca-bundle.crt';
  'smtp_tls_session_cache_database':  value   => 'btree:${data_directory}/smtp_tls_session_cache';
    }


}
 
