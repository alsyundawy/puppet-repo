class repo::remi{
  package{'remi-release':
    ensure    => installed,
    source    => 'http://rpms.famillecollet.com/enterprise/remi-release-6.rpm',
    provider  => rpm,
    require   => Package['epel-release'],
  }->
  augeas {'remi':
    incl => '/etc/yum.repos.d/remi.repo',
    lens => 'Yum.lns',
    changes => [
      'set /files/etc/yum.repos.d/remi.repo/remi/enabled 1',
      'set /files/etc/yum.repos.d/remi.repo/remi-php55/enabled 1',
    ],
#    exclude => ['firefox* xulrunner*', ],
  }
}
