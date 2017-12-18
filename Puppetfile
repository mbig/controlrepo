forge 'forge.puppetlabs.com'

# Forge Modules
mod 'puppetlabs/ntp', '4.1.0'
mod 'puppetlabs/stdlib', '4.12.0'
mod 'puppetlabs/concat', '2.2.0' # needed by apache
mod 'puppetlabs/apache', '1.10.0'
mod 'puppet/extlib', '1.0.0'

# For managing puppet
mod 'theforeman/puppet', '6.0.0'
mod 'puppetlabs/puppetserver_gem', '0.2.0'
mod 'puppetlabs/puppetdb', '5.1.2'
mod 'puppetlabs/firewall', '1.8.1'
mod 'puppetlabs/inifile', '1.5.0'

mod 'torrancew/cron', '0.2.1'

# general utilities
mod 'puppet/archive', '0.5.1'

# For bamboo
mod 'nanliu/staging', '1.0.3'
mod 'joshbeard/bamboo', '3.2.2'

# For sssd
mod 'trlinkin/validate_multi', '0.1.0'
mod 'trlinkin/nsswitch', '1.2.0'

# for Vault
mod 'cristifalcas/etcd', '1.7.0'
mod 'jsok/vault', '0.3.0'

# for ENC
mod 'puppetlabs/vcsrepo', '1.3.2'

# for docker
mod 'garethr/docker', '5.2.0'
mod 'puppetlabs/apt', '2.2.2'
mod 'stahnma/epel', '1.2.2'

# for postgresql
mod 'puppetlabs/postgresql', '4.7.1'

# for redis
mod 'arioch/redis', '1.2.2'

# for PKI
mod 'jlambert121/trusted_ca', '1.1.0'

# Edge node modules
mod 'pfmooney/mit_krb5', '0.0.8'

# For load balancing an HA, primarily Kibana->Elasticsearch
mod 'puppetlabs/haproxy', '1.5.0'

# graylog central log collector and dependencies
mod 'puppetlabs/java', '1.6.0'
mod 'puppetlabs/mongodb', '0.14.0'
mod 'elasticsearch/elasticsearch', '0.13.1'
  mod 'ceritsc/yum', '0.9.8'
  mod 'richardc/datacat', '0.6.2'
mod 'graylog/graylog', '0.1.0'

# agent / host management to collect logs centrally
mod 'saz/rsyslog', '4.0.0'
mod 'puppet/collectd', '5.1.0'

# for sanity's sake
mod 'saz/timezone', '3.3.0'

# local dns cache
mod 'saz-resolv_conf', '3.3.0'
## Deployed manually - see PM-21
## mod 'lex-dnsmasq', '2.6.1'

# Sensu
mod 'sensu/sensu', '2.1.0'
mod 'lwf/remote_file', '1.1.3'   # >= 1.0.0 <2.0.0
mod 'puppetlabs/rabbitmq', '5.4.0'
## XXX: this conflicts with the two nanliu/staging dependency in bamboo
##   the dependency is from puppetlabs/rabbitmq
# mod 'puppet/staging', '1.0.7'    # >=0.3.1 <2.0.0
mod 'yelp/uchiwa', '1.0.1'

# ETL preferred over puppetlabs/firewall
mod 'crayfishx/firewalld', '3.1.8'
# For ETL collector machines
mod 'thias-sysctl', '1.0.6'

# Cybraics modules
mod 'puppet-cybraics'
#dnsmasq
mod 'lex-dnsmasq', '2.6.1'

#postfix
mod 'camptocamp-postfix', '1.6.0'
