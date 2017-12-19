class profile::install_postfix() {
  include postfix

      class { 'postfix':
     smtp_listen => '0.0.0.0',
   }

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
       value  => 'all'
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


}
 
