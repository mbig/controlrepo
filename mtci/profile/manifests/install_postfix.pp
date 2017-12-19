class profile::install_postfix() {
  include postfix


  postfix::config { 'relay_domains':
       ensure => present,
       value  => 'localhost int.cybraics.com'
     }

   postfix::config { 'relayhost':
       ensure => present,
       value  => 'service-smtp.int.cybraics.com'
     }  

}
