
logstash_instance 'test' do
  url node.logstash.url
  checksum node.logstash.checksum
end
