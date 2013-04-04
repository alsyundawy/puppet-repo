class repo::epel($with_src = true){
  package{'epel-release':
    ensure => absent,
  }
  yumrepo {'epel':
    descr => 'Extra Packages for Enterprise Linux 6 - $basearch',
    mirrorlist  => 'https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch',
    failovermethod => 'priority',
    enabled => '1',
    gpgcheck => '0',
    require => Package['epel-release'],
  }
  if $with_src == true {
    yumrepo {'epel-source':
	    descr => 'Extra Packages for Enterprise Linux 6 - $basearch - Source',
	    mirrorlist  => 'https://mirrors.fedoraproject.org/metalink?repo=epel-source-6&arch=$basearch',
	    failovermethod => 'priority',
	    enabled => '1',
	    gpgcheck => '0',
	    require => Package['epel-release'],
	  }
  }
}