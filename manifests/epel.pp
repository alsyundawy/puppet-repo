class repo::epel{
  package{'epel-release':
    ensure    => installed,
    source    => 'http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm',
    provider  => rpm,
  }
}
