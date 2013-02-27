name             'logstash'
maintainer       'Miah Johnson'
maintainer_email 'miah@chia-pet.org'
license          'apachev2'
description      'Creates and Manages Logstash instances and configuration.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'runit', '>= 1.0.6'
depends 'java'
