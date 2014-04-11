name             'apache_storm'
maintainer       'Usermind'
maintainer_email 'jreichhold@gmail.com'
license          'All rights reserved'
description      'Installs/Configures apache_storm'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
depends          "java"
depends          "runit"
depends          "zeromq"
supports         "ubuntu"
