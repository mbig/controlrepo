class profile::postfix() {
  include postfix


  postfix::config { 'relay_domains':
       ensure => present,
       value  => 'localhost service-smtp.int.cybraics.com'
     }

}
