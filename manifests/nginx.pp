class repo::nginx($dev = false){
  if $dev { $x = '/mainline' } else {$x = ''}
  yumrepo { 'nginx-release':
    baseurl  => "http://nginx.org/packages$x/centos/6/\$basearch/",
    descr    => 'nginx repo',
    enabled  => '1',
    gpgcheck => '0',
  }
}