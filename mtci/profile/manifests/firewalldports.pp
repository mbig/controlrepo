class profile::firewalldports (){

include firewalld

firewalld_service { 'Allow SSH from the external zone':
  ensure  => 'present',
  service => 'ssh',
  zone    => 'public',
}

firewalld_service { 'Allow ldaps from the public zone':
  ensure  => 'present',
  service => 'ldaps',
  zone    => 'public',
}


firewalld_service { 'Allow dhcpv6 from the external zone':
  ensure  => 'present',
  service => 'dhcpv6-client',
  zone    => 'public',
}

firewalld::custom_service{'talend_port_range':
  short       => 'talend_fw_port',
  description => 'Firewalld talend port range',
  port => [ {'port' => '8000:8002', 'protocol' => 'tcp']} ],

}

}
