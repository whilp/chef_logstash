logstash_instance 'test' do
  url node.logstash.url
  checksum node.logstash.checksum
  install_type 'jar'
  service_type 'init'
end
