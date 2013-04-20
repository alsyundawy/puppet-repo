class repo::axivo{
  file{'/etc/pki/rpm-gpg/RPM-GPG-KEY-AXIVO':
    source => 'puppet:///modules/repo/RPM-GPG-KEY-AXIVO',
  }
  yumrepo {'axivo':
    descr     => 'Axivo Packages for Enterprise Linux $releasever - $basearch',
    mirrorlist => 'http://rpm.axivo.com/m?release=$releasever&arch=$basearch&repo=axivo',
    gpgcheck  => '1',
    gpgkey    => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-AXIVO',
  }
}