name             'logstash'
maintainer       'Miah Johnson'
maintainer_email 'miah@chia-pet.org'
license          'apachev2'
description      'Installs/Configures chef_logstash'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'runit'
depends 'java'
