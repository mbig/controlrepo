class profile::postfix() {
  include postfix


  postfix::config { 'relay_domains':
       ensure => present,
       value  => 'localhost int.cybraics.com'
     }
  
 relayhost => 'service-smtp.init.cybraics.com'
}
