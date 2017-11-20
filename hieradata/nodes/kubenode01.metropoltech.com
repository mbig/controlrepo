class { '::dnsmasq':
      configs_hash => {
         'another-config' => {
              content     => 'resolv-file=/etc/resolv.conf',
              content     => 'port=53',
              content     => 'listen_address=127.0.0.1',
              content     => 'domain=metropoltech.com',
         },
    },
}

