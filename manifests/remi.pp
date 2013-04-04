class repo::remi{
  package{'remi-release':
    ensure => absent,
    before => Package['epel-release'],
  }
  yumrepo {'remi':
    descr => 'Les RPM de remi pour Enterprise Linux 6 - $basearch',
    mirrorlist  => 'http://rpms.famillecollet.com/enterprise/6/remi/mirror',
    failovermethod => 'priority',
    enabled => '1',
    gpgcheck => '0',
    require => [Yumrepo['epel'], Package['remi-release']],
  }
}