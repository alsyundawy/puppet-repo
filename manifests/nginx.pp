class repo::nginx{
  yumrepo { 'nginx-release':
    baseurl  => 'http://nginx.org/packages/centos/6/$basearch/',
    descr    => 'nginx repo',
    enabled  => '1',
    gpgcheck => '0',
  }
}