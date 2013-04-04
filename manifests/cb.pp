class repo::cb($v = '6.2'){#couchbase has not provided pacakges for rhel 6.3+ yet (2013-04-04)
  yumrepo {'couchbase':
    descr     => 'Couchbase package repository',
    baseurl   => "http://packages.couchbase.com/rpm/6.2/x86_64",
    gpgcheck  => '1',
    gpgkey    => 'http://packages.couchbase.com/rpm/couchbase-rpm.key',
#    failovermethod => 'priority',
#    enabled => '1',
  }
}