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
  port => [ {'port' => '8000:8002', 'protocol' => 'tcp'} ],

 module      => ['nf_conntrack_netbios_ns'],
  destination => {
    'ipv4' => '127.0.0.1',
    'ipv6' => '::1'
  }

}

firewalld_port { 'Open port range 1025-65535 in the public zone':
  ensure   => present,
  zone     => 'public',
  port     => '1025-65535',
  protocol => 'tcp',
}
}
