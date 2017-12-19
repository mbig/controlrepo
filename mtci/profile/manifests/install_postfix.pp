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

   postfix::config { 'smtp_listen':
       ensure => present,
       value  => '0.0.0.0'
     }

  
     postfix::config { 'mydomain':
       ensure => present,
       value  => 'cybraics.com'
     } 


        postfix::config { 'mydestination':
       ensure => present,
       value  => "$myhostname, localhost.$mydomain, localhost, $mydomain"
     }

}
 
